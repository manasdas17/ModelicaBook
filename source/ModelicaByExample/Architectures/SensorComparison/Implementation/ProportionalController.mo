within ModelicaByExample.Architectures.SensorComparison.Implementation;
model ProportionalController "Implementation of a proportional controller"
  Modelica.Blocks.Math.Gain gain(k=k) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-50,0})));
  Modelica.Blocks.Math.Feedback feedback annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={0,0})));
  Modelica.Blocks.Interfaces.RealInput setpoint "Desired system response"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={0,120})));
  Modelica.Blocks.Interfaces.RealInput measured "Actual system response"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={100,0})));
  Modelica.Blocks.Interfaces.RealOutput command "Command to send to actuator"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-110,0})));
  parameter Real k=20 "Controller gain";
equation
  connect(feedback.y, gain.u) annotation (Line(
      points={{-9,0},{2,0},{2,-1.46958e-015},{-38,-1.46958e-015}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(feedback.u1, setpoint) annotation (Line(
      points={{8,0},{40,0},{40,60},{0,60},{0,120}},
      color={0,0,127},
      pattern=LinePattern.None,
      smooth=Smooth.None));
  connect(gain.y, command) annotation (Line(
      points={{-61,1.34711e-015},{-80.5,1.34711e-015},{-80.5,0},{-110,0}},
      color={0,0,127},
      pattern=LinePattern.None,
      smooth=Smooth.None));
  connect(measured, feedback.u2) annotation (Line(
      points={{100,0},{60,0},{60,-40},{0,-40},{0,-8}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(graphics));
end ProportionalController;