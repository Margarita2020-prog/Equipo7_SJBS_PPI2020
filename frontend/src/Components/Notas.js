import React from "react";
import { Link, withRouter } from "react-router-dom";

export const Notas = () => {
  return (
    <div>
      <div className="Ingreso">
        <div>
          <center></center>
        </div>
        <br />
        <br />
        <center>
          <img src="./img/FOTOPERFIL.PNG" width="300px" height="auto" />

          <h2>Notas</h2>
          <br />

          <div className="container">
            <br />
            <center>
              <button type="button" class="btn btn-primary">
                Primer Periodo
              </button>
              <br /> <br />
              <button type="button" class="btn btn-primary">
                Segundo Periodo
              </button>
              <br /> <br />
              <button type="button" class="btn btn-primary">
                Tercer Periodo
              </button>
            </center>
            <br />
            <br />
          </div>

          <img src="./img/FLECHA.jpg" width="100px" height="auto" />
        </center>
      </div>
    </div>
  );
};

export default withRouter(Notas);
