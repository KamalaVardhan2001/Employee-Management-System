import React, { useState, useContext, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { context } from "../../ContextApi";
import LoginType from "../../datatype/LoginType";

export default () => {
  const { userData, setUserData } = useContext(context);
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    username: "",
    email: "",
    password: "",
    confirmPassword: "",
  });

  useEffect(() => {
    setUserData({
      userType: "",
      userId: "",
    });
  }, []);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData);
    navigate("/login");
  };

  return (
    <div className="login-register-container">
      <div className="login-register-box">
        <h2 className="login-register-heading">Create a New Account</h2>
        <form onSubmit={handleSubmit}>
          <label htmlFor="username">Username</label>
          <input
            type="text"
            id="username"
            name="username"
            value={formData.username}
            onChange={handleChange}
            placeholder="Enter Username"
            required
          />

          <label htmlFor="email">Email</label>
          <input
            type="email"
            id="email"
            name="email"
            value={formData.email}
            onChange={handleChange}
            placeholder="Enter Email"
            required
          />

          <label htmlFor="password">Password</label>
          <input
            type="password"
            id="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            placeholder="Enter Password"
            required
          />

          <label htmlFor="confirm-password">Confirm Password</label>
          <input
            type="password"
            id="confirm-password"
            name="confirmPassword"
            value={formData.confirmPassword}
            onChange={handleChange}
            placeholder="Confirm Password"
            required
          />

          <input type="submit" value="Register" />

          <p>
            Already have an account?{" "}
            <a href="/login" className="login-register-link">
              Login Here
            </a>
          </p>
        </form>
      </div>
    </div>
  );
};
