require('../../../../css/style.css');
import React from "react";
import { Provider } from "react-redux";
import { BrowserRouter as Router, Route } from 'react-router-dom'

import App from "../containers/App";
import store from "../store/store";

const SampleApp = (props, _railsContext) => (
  <Provider store={store}>
    <Router>
      <Route path="/" component={App} />
    </Router>
  </Provider>
);

export default SampleApp;