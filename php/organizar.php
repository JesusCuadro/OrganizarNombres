<?php
        require_once ("conexion.php");

            $ID=$_POST["ID"];
            $cedula=$_POST["cedula"];
            $nombres=$_POST["nombres"];

            $separado = explode(" ", $nombres);
            $separado_contado = count($separado);
            var_dump($separado);
            var_dump($separado_contado);

                switch($separado_contado){
                    case 2:
                        $nombre = $separado[0];
                        $apellido = $separado[1];
                        $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
                        break;
                    case 3:
                        $nombre = $separado[0];
                        $apellido = $separado[1] . " " . $separado[2];
                        $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
                        break;
                    case 4:
                        $nombre = $separado[0] . " " . $separado[1];
                        $apellido = $separado[2] . " " . $separado[3];
                        $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
                        break;
                    case 5:
                        $nombre = $separado[0] . " " . $separado[1] . " " . $separado[2];
                        $apellido = $separado[3] . " " . $separado[4];
                        $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
                        break;
                    case 6:
                        $nombre = $separado[0] . " " . $separado[1] . " " . $separado[2] . " " . $separado[3];
                        $apellido = $separado[4] . " " . $separado[5];
                        $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
                        break;
                    default:
                        echo"No imprime mamaguevo";
                    }


            // if(count($separado) == 3){
            //     $nombre = $separado[0] . " " . $separado[1];
            //     $apellido = $separado[2] . " " . $separado[3];

            //     $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
            //     var_dump($query);

            // } elseif(count($separado) == 4){
            //     $nombre = $separado[0] . " " . $separado[1] . " " . $separado[2];
            //     $apellido = $separado[3] . " " . $separado[4];

            //     $query = mysqli_query($conexion, "INSERT INTO nombres_organizados(ID, Cedula, Nombre, Apellido) values ('$ID', '$cedula', '$nombre', '$apellido')");
            //     var_dump($query);
            // }       
    ?>