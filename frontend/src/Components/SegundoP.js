import React from "react";
import { Link, withRouter } from "react-router-dom";

import { Main } from "../Components/Main";
import { Boton } from "../Components/Boton";

export const SegundoP = () => {
  return (
    <div className="Inicio">
      <Main />
      <Boton />
    </div>
  );
};


export default withRouter(SegundoP);

