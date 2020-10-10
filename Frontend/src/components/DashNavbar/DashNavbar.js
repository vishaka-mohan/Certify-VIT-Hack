//Copy of Navbar.js

import React, { useState } from "react";
import { AppBar, Avatar, IconButton, Toolbar } from "@material-ui/core";
import "./DashNavbar.css";
import { Close, Menu } from "@material-ui/icons";

function DashNavbar({ open, setOpen }) {
	const [name] = useState(localStorage.getItem("name").split(" ")[0]);

	return (
		<AppBar position="static" className="navbar" elevation={0}>
			<Toolbar className="nav-toolbar">
				<IconButton edge="start" onClick={() => setOpen(!open)}>
					{open ? (
						<Close className="nav-drawer-icon" fontSize="large" />
					) : (
						<Menu className="nav-drawer-icon" fontSize="large" />
					)}
				</IconButton>
				<img
					src="./assets/certify.svg"
					alt="brand logo"
					width={150}
					className="nav-logo m-right"
				/>
				<div className="nav-menu nav-name-tag">
					Welcome {name}
					<Avatar
						alt={`${name} profile pic`}
						src="./assets/default.png"
						className="profile-avatar"
					/>
				</div>
			</Toolbar>
		</AppBar>
	);
}

export default DashNavbar;
