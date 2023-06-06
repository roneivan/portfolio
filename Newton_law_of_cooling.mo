model Newton_law_of_cooling

  // Parameters  
  parameter Modelica.SIunits.Mass m=12 "Weight of head";
  parameter Modelica.SIunits.SpecificHeatCapacity cp=896 "Alumminum specif heat capacity";
  parameter Modelica.SIunits.CoefficientOfHeatTransfer h = 7.8*v^0.78 "forced air convection";
  parameter Modelica.SIunits.Velocity v=35 "Air Speed";
  //parameter Modelica.SIunits.VolumeFlowRate FAir=2.027777778 "Air Flow";
  //parameter Modelica.SIunits.Area NArea=0.007164 "Air nozzles flow";
  parameter Modelica.SIunits.Area A=0.219564 "Convection area";
  parameter Modelica.SIunits.Temp_K T_inf=300.15 "Air temperature";
  parameter Modelica.SIunits.Temp_K T0=318.15 "Initial temperature head";
  
  // Variables
  Modelica.SIunits.Temp_K T "Temperature head";
  
initial equation
  T = T0 "Specify initial value for T";
  
equation
  m*cp*der(T) = h*A*(T_inf-T) "Newton's law of cooling";

end Newton_law_of_cooling;