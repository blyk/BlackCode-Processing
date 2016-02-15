public void cartExpr_change(GTextField source, GEvent event) {
  source.clearStyles();
  lblCartStatus.setText("");
}

public void txfLowX_change(GTextField source, GEvent event) {
  source.clearStyles();
}

public void txfHighX_change(GTextField source, GEvent event) { 
  source.clearStyles();
}

public void btnCart_click(GButton source, GEvent event) { 
  plotCartesian();
}

public void cart1_click(GButton source, GEvent event) { 
  txfCartExpr.setText("x^3 + x^2 -x");
  txfLowX.setText("-1.9");
  txfHighX.setText("1.2");
}

public void cart2_click(GButton source, GEvent event) { 
  txfCartExpr.setText("sin(x)*cos(2.3*x)");
  txfLowX.setText("-7");
  txfHighX.setText("7");
}

public void cart3_click(GButton source, GEvent event) {
  txfCartExpr.setText("log10(abs(x))*sin(6*x)");
  txfLowX.setText("-6.3");
  txfHighX.setText("6.3");
}

public void polarExpr_change(GTextField source, GEvent event) {
  source.clearStyles();
  lblPolarStatus.setText("");
}

public void highA_change(GSlider source, GEvent event) { 
  //highA = source.getValueF();
  lblHighA.setText(source.getValueS());
}

public void btnPolarPlot_click(GButton source, GEvent event) {
  plotPolar();
}

public void sdrPolarSteps_change(GSlider source, GEvent event) {
  //  stepsPolar = source.getValueI();
  lblPolarSteps.setText(source.getValueS());
}

public void polar1_click(GButton source, GEvent event) {
  txfPolarExpr.setText("(sin(a) * sqrt(abs(cos(a))))/(sin(a) + 1.4) - 2*sin(a) + 2");
  sdrPolarHigh.setValue(2);
  sdrPolarSteps.setValue(400);
}

public void polar2_click(GButton source, GEvent event) { 
  txfPolarExpr.setText("a^1.2");
  sdrPolarHigh.setValue(10);
  sdrPolarSteps.setValue(600);
}

public void polar3_click(GButton source, GEvent event) { 
  txfPolarExpr.setText("sqrt(abs(sin(a)) / (a + 0.5))");
  sdrPolarHigh.setValue(10);
  sdrPolarSteps.setValue(1800);
}

public void paraExprY_change(GTextField source, GEvent event) { 
  source.clearStyles();
  lblParaStatus.setText("");
}

public void paraExprX_change(GTextField source, GEvent event) { 
  source.clearStyles();
  lblParaStatus.setText("");
}

public void btnPara_click(GButton source, GEvent event) { 
  plotParametric();
}

public void txfLowT_change(GTextField source, GEvent event) { 
  source.clearStyles();
}

public void txfHighT_change(GTextField source, GEvent event) { 
  source.clearStyles();
}

public void sdrParaSteps_change(GSlider source, GEvent event) {
  lblParaSteps.setText(source.getValueS());
}

public void para1_click(GButton source, GEvent event) { 
  txfParaExprY.setText("sin(t) - sin(4*t)^3");
  txfParaExprX.setText("cos(t) - cos(4*t)^3");
  txfLowT.setText("0");
  txfHighT.setText("" + TWO_PI);
  sdrParaSteps.setValue(400);
}

public void para2_click(GButton source, GEvent event) { 
  txfParaExprY.setText("sin(t)+sin(7*t)/2+cos(17*t)/3");
  txfParaExprX.setText("cos(t)+cos(7*t)/2+sin(17*t)/3");
  txfLowT.setText("0");
  txfHighT.setText("" + TWO_PI);
  sdrParaSteps.setValue(400);
}

public void para3_click(GButton source, GEvent event) { 
  txfParaExprY.setText("-3*sin(t) + 10*sin(-0.3*t)");
  txfParaExprX.setText("-3*cos(t) - 10*cos(-0.3*t)");
  txfLowT.setText("0");
  txfHighT.setText("63");
  sdrParaSteps.setValue(400);
}

public void btnZoomOut_click(GButton source, GEvent event) { 
  plot.zoom(1/zf, gcx, gcy);
}

public void btnZoomIn_click(GButton source, GEvent event) { 
  plot.zoom(zf, gcx, gcy);
}

public void optCart_click(GOption source, GEvent event) {
  setType(CARTESIAN);
}

public void optPolar_click(GOption source, GEvent event) { 
  setType(POLAR);
}

public void optPara_click(GOption source, GEvent event) { 
  setType(PARAMETRIC);
}

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.CYAN_SCHEME);
  G4P.setCursor(ARROW);
  if (frame != null)
    frame.setTitle("Sketch Window");
  pnlCart = new GPanel(this, 0, 820, 600, 180, "Cartesian :  y = f (x)");
  pnlCart.setCollapsible(false);
  pnlCart.setDraggable(false);
  pnlCart.setText("Cartesian :  y = f (x)");
  pnlCart.setTextBold();
  pnlCart.setOpaque(true);
  txfCartExpr = new GTextField(this, 70, 30, 520, 30, G4P.SCROLLBARS_HORIZONTAL_ONLY | G4P.SCROLLBARS_AUTOHIDE);
  txfCartExpr.setText("x^3 + x^2 -x");
  txfCartExpr.setDefaultText("f(x)");
  txfCartExpr.setOpaque(false);
  txfCartExpr.addEventHandler(this, "cartExpr_change");
  lblCartStatus = new GLabel(this, 70, 60, 520, 16);
  lblCartStatus.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblCartStatus.setLocalColorScheme(GCScheme.RED_SCHEME);
  lblCartStatus.setOpaque(true);
  lblCartY = new GLabel(this, 10, 30, 60, 20);
  lblCartY.setText("y =");
  lblCartY.setTextBold();
  lblCartY.setOpaque(false);
  label2 = new GLabel(this, 10, 80, 120, 20);
  label2.setText("Plot from x = ");
  label2.setTextBold();
  label2.setOpaque(false);
  txfLowX = new GTextField(this, 130, 80, 140, 20, G4P.SCROLLBARS_NONE);
  txfLowX.setText("-1.9");
  txfLowX.setOpaque(true);
  txfLowX.addEventHandler(this, "txfLowX_change");
  label3 = new GLabel(this, 270, 80, 30, 20);
  label3.setText("to");
  label3.setTextBold();
  label3.setOpaque(false);
  txfHighX = new GTextField(this, 300, 80, 140, 20, G4P.SCROLLBARS_NONE);
  txfHighX.setText("1.2");
  txfHighX.setOpaque(true);
  txfHighX.addEventHandler(this, "txfHighX_change");
  btnCart = new GButton(this, 510, 150, 80, 20);
  btnCart.setText("PLOT");
  btnCart.setTextBold();
  btnCart.addEventHandler(this, "btnCart_click");
  btnCart1 = new GButton(this, 300, 150, 50, 20);
  btnCart1.setText("1");
  btnCart1.setTextBold();
  btnCart1.addEventHandler(this, "cart1_click");
  btnCart2 = new GButton(this, 360, 150, 50, 20);
  btnCart2.setText("2");
  btnCart2.setTextBold();
  btnCart2.addEventHandler(this, "cart2_click");
  btnCart3 = new GButton(this, 420, 150, 50, 20);
  btnCart3.setText("3");
  btnCart3.setTextBold();
  btnCart3.addEventHandler(this, "cart3_click");
  label15 = new GLabel(this, 210, 150, 80, 20);
  label15.setText("Examples");
  label15.setTextBold();
  label15.setOpaque(false);
  pnlCart.addControl(txfCartExpr);
  pnlCart.addControl(lblCartStatus);
  pnlCart.addControl(lblCartY);
  pnlCart.addControl(label2);
  pnlCart.addControl(txfLowX);
  pnlCart.addControl(label3);
  pnlCart.addControl(txfHighX);
  pnlCart.addControl(btnCart);
  pnlCart.addControl(btnCart1);
  pnlCart.addControl(btnCart2);
  pnlCart.addControl(btnCart3);
  pnlCart.addControl(label15);
  pnlPolar = new GPanel(this, 0, 440, 600, 180, "Polar :  r = f(a)");
  pnlPolar.setCollapsible(false);
  pnlPolar.setDraggable(false);
  pnlPolar.setText("Polar :  r = f(a)");
  pnlPolar.setTextBold();
  pnlPolar.setOpaque(true);
  txfPolarExpr = new GTextField(this, 70, 30, 520, 30, G4P.SCROLLBARS_HORIZONTAL_ONLY | G4P.SCROLLBARS_AUTOHIDE);
  txfPolarExpr.setDefaultText("f(a)");
  txfPolarExpr.setOpaque(false);
  txfPolarExpr.addEventHandler(this, "polarExpr_change");
  label4 = new GLabel(this, 10, 30, 60, 20);
  label4.setText("r =");
  label4.setTextBold();
  label4.setOpaque(false);
  lblPolarStatus = new GLabel(this, 69, 59, 520, 20);
  lblPolarStatus.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblPolarStatus.setLocalColorScheme(GCScheme.RED_SCHEME);
  lblPolarStatus.setOpaque(true);
  label5 = new GLabel(this, 10, 90, 150, 20);
  label5.setText("Plot from a = 0  to");
  label5.setTextBold();
  label5.setOpaque(false);
  lblHighA = new GLabel(this, 160, 90, 40, 20);
  lblHighA.setText("2");
  lblHighA.setOpaque(true);
  label6 = new GLabel(this, 200, 90, 30, 20);
  label6.setText("PI");
  label6.setTextBold();
  label6.setOpaque(false);
  sdrPolarHigh = new GSlider(this, 10, 110, 190, 20, 8.0);
  sdrPolarHigh.setLimits(2.0, 0.5, 10.0);
  sdrPolarHigh.setNbrTicks(20);
  sdrPolarHigh.setStickToTicks(true);
  sdrPolarHigh.setEasing(6.0);
  sdrPolarHigh.setNumberFormat(G4P.DECIMAL, 0);
  sdrPolarHigh.setOpaque(true);
  sdrPolarHigh.addEventHandler(this, "highA_change");
  btnPolarPlot = new GButton(this, 510, 150, 80, 20);
  btnPolarPlot.setText("PLOT");
  btnPolarPlot.setTextBold();
  btnPolarPlot.addEventHandler(this, "btnPolarPlot_click");
  label11 = new GLabel(this, 230, 90, 50, 20);
  label11.setText("Steps");
  label11.setTextBold();
  label11.setOpaque(false);
  lblPolarSteps = new GLabel(this, 280, 90, 50, 20);
  lblPolarSteps.setText("400");
  lblPolarSteps.setOpaque(true);
  sdrPolarSteps = new GSlider(this, 340, 90, 250, 20, 10.0);
  sdrPolarSteps.setLimits(400, 400, 2000);
  sdrPolarSteps.setNbrTicks(17);
  sdrPolarSteps.setStickToTicks(true);
  sdrPolarSteps.setShowTicks(true);
  sdrPolarSteps.setEasing(6.0);
  sdrPolarSteps.setNumberFormat(G4P.INTEGER, 0);
  sdrPolarSteps.setOpaque(false);
  sdrPolarSteps.addEventHandler(this, "sdrPolarSteps_change");
  btnPolar1 = new GButton(this, 300, 150, 50, 20);
  btnPolar1.setText("1");
  btnPolar1.setTextBold();
  btnPolar1.addEventHandler(this, "polar1_click");
  btnPolar2 = new GButton(this, 360, 150, 50, 20);
  btnPolar2.setText("2");
  btnPolar2.setTextBold();
  btnPolar2.addEventHandler(this, "polar2_click");
  btnPolar3 = new GButton(this, 420, 150, 50, 20);
  btnPolar3.setText("3");
  btnPolar3.setTextBold();
  btnPolar3.addEventHandler(this, "polar3_click");
  label13 = new GLabel(this, 210, 150, 80, 20);
  label13.setText("Examples");
  label13.setTextBold();
  label13.setOpaque(false);
  pnlPolar.addControl(txfPolarExpr);
  pnlPolar.addControl(label4);
  pnlPolar.addControl(lblPolarStatus);
  pnlPolar.addControl(label5);
  pnlPolar.addControl(lblHighA);
  pnlPolar.addControl(label6);
  pnlPolar.addControl(sdrPolarHigh);
  pnlPolar.addControl(btnPolarPlot);
  pnlPolar.addControl(label11);
  pnlPolar.addControl(lblPolarSteps);
  pnlPolar.addControl(sdrPolarSteps);
  pnlPolar.addControl(btnPolar1);
  pnlPolar.addControl(btnPolar2);
  pnlPolar.addControl(btnPolar3);
  pnlPolar.addControl(label13);
  pnlPara = new GPanel(this, 0, 630, 600, 180, "Parametric : y = f(t) ,  x = g(t)");
  pnlPara.setCollapsible(false);
  pnlPara.setDraggable(false);
  pnlPara.setText("Parametric : y = f(t) ,  x = g(t)");
  pnlPara.setTextBold();
  pnlPara.setOpaque(true);
  txfParaExprY = new GTextField(this, 70, 30, 520, 30, G4P.SCROLLBARS_HORIZONTAL_ONLY | G4P.SCROLLBARS_AUTOHIDE);
  txfParaExprY.setText("sin(t) - sin(4*t)^3");
  txfParaExprY.setDefaultText("f(t)");
  txfParaExprY.setOpaque(false);
  txfParaExprY.addEventHandler(this, "paraExprY_change");
  label1 = new GLabel(this, 10, 30, 60, 20);
  label1.setText("y =");
  label1.setTextBold();
  label1.setOpaque(false);
  txfParaExprX = new GTextField(this, 70, 60, 520, 30, G4P.SCROLLBARS_HORIZONTAL_ONLY | G4P.SCROLLBARS_AUTOHIDE);
  txfParaExprX.setText("cos(t) - cos(4*t)^3");
  txfParaExprX.setDefaultText("g(t)");
  txfParaExprX.setOpaque(false);
  txfParaExprX.addEventHandler(this, "paraExprX_change");
  lblParaStatus = new GLabel(this, 70, 90, 520, 20);
  lblParaStatus.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblParaStatus.setLocalColorScheme(GCScheme.RED_SCHEME);
  lblParaStatus.setOpaque(true);
  label7 = new GLabel(this, 10, 60, 60, 20);
  label7.setText("x =");
  label7.setTextBold();
  label7.setOpaque(false);
  btnPara = new GButton(this, 510, 150, 80, 20);
  btnPara.setText("PLOT");
  btnPara.setTextBold();
  btnPara.addEventHandler(this, "btnPara_click");
  label8 = new GLabel(this, 10, 120, 100, 20);
  label8.setText("Plot from t =");
  label8.setTextBold();
  label8.setOpaque(false);
  txfLowT = new GTextField(this, 110, 120, 60, 20, G4P.SCROLLBARS_NONE);
  txfLowT.setText("0");
  txfLowT.setOpaque(true);
  txfLowT.addEventHandler(this, "txfLowT_change");
  label9 = new GLabel(this, 170, 120, 30, 20);
  label9.setText("to");
  label9.setTextBold();
  label9.setOpaque(false);
  txfHighT = new GTextField(this, 200, 120, 60, 20, G4P.SCROLLBARS_NONE);
  txfHighT.setText("10");
  txfHighT.setOpaque(true);
  txfHighT.addEventHandler(this, "txfHighT_change");
  label12 = new GLabel(this, 260, 120, 40, 20);
  label12.setText("Steps");
  label12.setTextBold();
  label12.setOpaque(false);
  lblParaSteps = new GLabel(this, 300, 120, 48, 20);
  lblParaSteps.setText("400");
  lblParaSteps.setOpaque(true);
  sdrParaSteps = new GSlider(this, 360, 120, 230, 20, 10.0);
  sdrParaSteps.setLimits(400, 400, 2000);
  sdrParaSteps.setNbrTicks(17);
  sdrParaSteps.setStickToTicks(true);
  sdrParaSteps.setShowTicks(true);
  sdrParaSteps.setEasing(6.0);
  sdrParaSteps.setNumberFormat(G4P.INTEGER, 0);
  sdrParaSteps.setOpaque(false);
  sdrParaSteps.addEventHandler(this, "sdrParaSteps_change");
  btnPara1 = new GButton(this, 300, 150, 50, 20);
  btnPara1.setText("1");
  btnPara1.setTextBold();
  btnPara1.addEventHandler(this, "para1_click");
  btnPara2 = new GButton(this, 360, 150, 50, 20);
  btnPara2.setText("2");
  btnPara2.setTextBold();
  btnPara2.addEventHandler(this, "para2_click");
  btnPara3 = new GButton(this, 420, 150, 50, 20);
  btnPara3.setText("3");
  btnPara3.addEventHandler(this, "para3_click");
  label14 = new GLabel(this, 210, 150, 80, 20);
  label14.setText("Examples");
  label14.setTextBold();
  label14.setOpaque(false);
  pnlPara.addControl(txfParaExprY);
  pnlPara.addControl(label1);
  pnlPara.addControl(txfParaExprX);
  pnlPara.addControl(lblParaStatus);
  pnlPara.addControl(label7);
  pnlPara.addControl(btnPara);
  pnlPara.addControl(label8);
  pnlPara.addControl(txfLowT);
  pnlPara.addControl(label9);
  pnlPara.addControl(txfHighT);
  pnlPara.addControl(label12);
  pnlPara.addControl(lblParaSteps);
  pnlPara.addControl(sdrParaSteps);
  pnlPara.addControl(btnPara1);
  pnlPara.addControl(btnPara2);
  pnlPara.addControl(btnPara3);
  pnlPara.addControl(label14);
  label10 = new GLabel(this, 0, 400, 600, 40);
  label10.setTextAlign(GAlign.LEFT, GAlign.BOTTOM);
  label10.setText("Graph Options Planner");
  label10.setTextBold();
  label10.setOpaque(true);
  btnZoomOut = new GButton(this, 536, 96, 56, 48);
  btnZoomOut.setText("Zoom\nOut");
  btnZoomOut.setTextBold();
  btnZoomOut.setTextItalic();
  btnZoomOut.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  btnZoomOut.addEventHandler(this, "btnZoomOut_click");
  btnZoomIn = new GButton(this, 472, 96, 56, 48);
  btnZoomIn.setText("Zoom\nIn");
  btnZoomIn.setTextBold();
  btnZoomIn.setTextItalic();
  btnZoomIn.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  btnZoomIn.addEventHandler(this, "btnZoomIn_click");
  togGroup1 = new GToggleGroup();
  optCart = new GOption(this, 320, 420, 100, 20);
  optCart.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  optCart.setText("Cartesian");
  optCart.setTextBold();
  optCart.setOpaque(false);
  optCart.addEventHandler(this, "optCart_click");
  optPolar = new GOption(this, 420, 420, 70, 20);
  optPolar.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  optPolar.setText("Polar");
  optPolar.setTextBold();
  optPolar.setOpaque(false);
  optPolar.addEventHandler(this, "optPolar_click");
  optPara = new GOption(this, 490, 420, 110, 20);
  optPara.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  optPara.setText("Parametric");
  optPara.setTextBold();
  optPara.setOpaque(false);
  optPara.addEventHandler(this, "optPara_click");
  togGroup1.addControl(optCart);
  togGroup1.addControl(optPolar);
  optPolar.setSelected(true);
  togGroup1.addControl(optPara);
}

// Variable declarations 
// autogenerated do not edit
GPanel pnlCart; 
GTextField txfCartExpr; 
GLabel lblCartStatus; 
GLabel lblCartY; 
GLabel label2; 
GTextField txfLowX; 
GLabel label3; 
GTextField txfHighX; 
GButton btnCart; 
GButton btnCart1; 
GButton btnCart2; 
GButton btnCart3; 
GLabel label15; 
GPanel pnlPolar; 
GTextField txfPolarExpr; 
GLabel label4; 
GLabel lblPolarStatus; 
GLabel label5; 
GLabel lblHighA; 
GLabel label6; 
GSlider sdrPolarHigh; 
GButton btnPolarPlot; 
GLabel label11; 
GLabel lblPolarSteps; 
GSlider sdrPolarSteps; 
GButton btnPolar1; 
GButton btnPolar2; 
GButton btnPolar3; 
GLabel label13; 
GPanel pnlPara; 
GTextField txfParaExprY; 
GLabel label1; 
GTextField txfParaExprX; 
GLabel lblParaStatus; 
GLabel label7; 
GButton btnPara; 
GLabel label8; 
GTextField txfLowT; 
GLabel label9; 
GTextField txfHighT; 
GLabel label12; 
GLabel lblParaSteps; 
GSlider sdrParaSteps; 
GButton btnPara1; 
GButton btnPara2; 
GButton btnPara3; 
GLabel label14; 
GLabel label10; 
GButton btnZoomOut; 
GButton btnZoomIn; 
GToggleGroup togGroup1; 
GOption optCart; 
GOption optPolar; 
GOption optPara; 