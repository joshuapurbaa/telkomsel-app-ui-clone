import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color redColor = Color(0xFFDF181D);
const Color greyColor = Color(0xFFB4B8BB);
const Color greyCardColor = Color(0xFFF5F4F2);
const Color yellowColor = Color(0xFFEDD501);
const Color whiteColor = Color(0xFFFFFFFF);
const Color darkRedColor = Color(0xFFBA0024);
const Color primaryTextColor = Color(0xFF011C40);
const Color redButtonColor = Color(0xFFF00027);
const Color blueColor = Color(0xFF124888);
const Color bluePurpleColor = Color(0xFF1D13E5);

double defaultMargin = 16.0;

TextStyle bottomNavText =
    GoogleFonts.poppins(color: greyColor, fontSize: 12, fontWeight: bold);
TextStyle whiteBoldText15 =
    GoogleFonts.poppins(color: whiteColor, fontSize: 15, fontWeight: bold);
TextStyle whiteBoldText13 =
    GoogleFonts.poppins(color: whiteColor, fontSize: 13, fontWeight: bold);

// REGULAR TEXT
TextStyle regularText10 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 10, fontWeight: regular);
TextStyle regularText12 =
    GoogleFonts.poppins(color: blueColor, fontSize: 12, fontWeight: regular);
TextStyle regularText13 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 13, fontWeight: regular);
TextStyle regularText14 =
    GoogleFonts.poppins(color: blueColor, fontSize: 14, fontWeight: regular);
// MEDIUM TEXT
TextStyle mediumText12 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 12, fontWeight: medium);
TextStyle mediumText15 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 15, fontWeight: medium);
// BOLD TEXT
TextStyle boldText13 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 13, fontWeight: bold);
TextStyle boldText14 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 14, fontWeight: bold);

// EXTRABOLD TEXT
TextStyle extraBoldText26 = GoogleFonts.poppins(
    color: primaryTextColor, fontSize: 26, fontWeight: extrabold);

// SECONDARY TEXT STYLE
TextStyle nunitoExtraBoldText18 = GoogleFonts.nunito(
    color: primaryTextColor, fontSize: 18, fontWeight: extrabold);
TextStyle nunitoBoldText14 =
    GoogleFonts.nunito(color: primaryTextColor, fontSize: 14, fontWeight: bold);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
