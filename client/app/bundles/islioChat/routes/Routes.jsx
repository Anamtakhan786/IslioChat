import React from 'react'
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from 'react-router-dom'
import HelloWorldContainer from '../containers/HelloWorldContainer'

class Routes extends React.Component {
  render () {
    return (
      <Router>
        <Switch>
          <Route exact path='/islio_chat' component={HelloWorldContainer} />
        </Switch>
      </Router>
    )
  }
}

export default Routes
