import React from "react";
import { Link, withRouter } from "react-router-dom";

import { FormularioIngreso } from "../Components/FormIngreso";
import { Footer } from "../Components/Footer";
import { Boton } from "../Components/BotonesIngreso";
import {Cuadrotexto} from "../Components/Cuadrotexto";

export const Peticiones = () => {
  return (
    <div className="Ingreso">
      <div>
        <center>
        </center>
      </div>
      <br />
      <br />
      <center>
      <img
            src="./img/FOTOPERFIL.PNG"
            width="300px"
            height="auto"
          />


      </center>
      <FormularioIngreso />
      <br />

      <Cuadrotexto/>
      <Boton />
      <center>
      <img
            src="./img/FLECHA.jpg"
            width="100px"
            height="auto"
          />
 </center>
      <Footer />
    </div>
  );
};



export default withRouter(Peticiones);