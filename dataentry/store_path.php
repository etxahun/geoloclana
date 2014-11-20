<?php

/** Deshabilitamos el Error Reporting **/
error_reporting( 0 );

/** Comprobamos qué "action" almacenaremos mediante GET */
if( isset($_GET["action"]) ) {
    $action = $_GET["action"];
}
else {
    $action = "get";
}

/** Comprobamos qué "id" almacenaremos mediante GET */
if( isset($_GET["id"]) ) {
    $id = $_GET["id"];
}
else {
    $id = 0;
}

/** Comprobamos qué "user_id" almacenaremos mediante GET */
if( isset($_GET["user_id"]) ) {
    $user_id = $_GET["user_id"];
}
else {
    $user_id = 0;
}


/** Comprobamos qué "latitude" almacenaremos mediante GET*/
if( isset($_GET["latitude"]) ) {
    $latitude = $_GET["latitude"];
}
else {
    $latitude="";
}

/** Comprobamos qué "longitude"  almacenaremos mediante GET*/
if( isset($_GET["longitude"]) ) {
    $longitude = $_GET["longitude"];
}
else {
    $longitude="";
}

/**************************/

/* Activamos el debugging */
if( $debug=="1" ) {
    error_reporting(E_ALL);
    ini_set('display_errors', '1');
}
/**************************/

/** Por defecto, en caso de no especificar el "action", el valor es "get" */
if( $action=="" ) {
    $action="get";
}

/** CONEXIÓN CON MySQL **/
/*  ==================  */

$host="localhost";
$username="kakafu";
$password="kakafu";
$database="geoloc";

/** Connectamos con la base de datos **/
$mysqli=new mysqli($host,$username,$password,$database);
$mysqli->set_charset('utf8');

/*********************************************************/


/** Comprobamos que "action" llevaremos a cabo */
switch( $action ) {

    /** En el caso de que queramos obtener los "locations" de la base de datos */
    case "get":
        $res_locations = $mysqli->query("SELECT * FROM path where user_id=".$user_id."" );

        $locations_arr = array();

        while($r = mysqli_fetch_assoc($res_locations)) {
            $locations_arr[] = $r;
        }

        echo json_encode($locations_arr);
        break;

    /** En el caso de que queramos añadir una nueva "location" */
    case "add":
        if( $latitude=="" ) {
            echo "ERROR_WRONG_LATITUDE";
        }
        else if ( $longitude=="" ) {
            echo "ERROR_WRONG_LONGITUDE";
        }   
        else {
            $q = "INSERT INTO path (user_id,latitude,longitude) VALUES ('".$user_id."','".$latitude."','".$longitude."')";
            if( $debug=="1" ) {
                echo "[DEBUG] Query: $q <br />";
            }

            $res_add = $mysqli->query( $q );
            if( !$res_add ) {
                echo "ERROR_FAILED_ADD_OPERATION";
            }
            else {
                echo true;
                //echo "NO_ERROR";
            } //fin del else
        }
        break;

    /** En el caso de que queramos borrar una "location" */
    case "del":
        if( $id=="" ) {
            echo "ERROR_WRONG_LOCATION_ID";
        }
        else {
            $q = "DELETE FROM path WHERE id=".$id;
            $res_name = $mysqli->query( $q );

            if( !$res_name ) {
                echo "ERROR_FAILED_DEL_OPERATION";
            }
            else {
                 //echo "NO_ERROR";

                $res_locations = $mysqli->query("SELECT * FROM path" );
                $locations_arr = array();
                while($r = mysqli_fetch_assoc($res_locations)) 
                    {
                     $locations_arr[] = $r;
                    }
                echo json_encode($locations_arr);
            }
        }
        break;

    /** En el caso de que queramos borrar una "location" */
    case "del_user_path":
        $q = "DELETE FROM path where user_id=".$user_id."";
        $res_name = $mysqli->query( $q );

        if( !$res_name ) {
            echo "ERROR_FAILED_DEL_ALL_OPERATION";
        }
        else {
             echo true;
        }
        break;

    default:
        echo "ERROR_NO_ACTION";
        break;
}

$mysqli->close();
?>