import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Ppicontainer from './Containers/Ppicontainer';
import * as serviceWorker from './serviceWorker';

import "bootstrap/dist/css/bootstrap.min.css";
import $ from "jquery";
import popper from "popper.js";
import "bootstrap/dist/js/bootstrap.bundle.min";

ReactDOM.render(
  <React.StrictMode>
    <Ppicontainer />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
