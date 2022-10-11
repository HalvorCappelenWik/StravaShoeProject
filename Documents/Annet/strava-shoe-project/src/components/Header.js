import { ReactPropTypes } from "react"

const Header = ({title}) => {
    return (
        <header>
        <h1> {title}</h1>
        </header>
    )
} 

Header.defaultProps = {
    title: 'Strava Shoe Project'
}

Header.propsTypes = {
    title: PropTypes.string.isRequired,
}


export default Header