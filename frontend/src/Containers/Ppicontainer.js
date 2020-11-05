import React from "react";
import { BrowserRouter, Route } from 'react-router-dom';

import Peticiones from "../Components/Peticiones";
import SegundoP from "../Components/SegundoP";
import Notas from "../Components/Notas";

export default function Ppicontainer() {
  return (
     <BrowserRouter>
       <Route path="/" exact component={Peticiones}/>
       <Route path="/SegundoP" exact component={SegundoP}/>
       <Route path="/Notas" exact component={Notas}/>
     </BrowserRouter>
  );
}
