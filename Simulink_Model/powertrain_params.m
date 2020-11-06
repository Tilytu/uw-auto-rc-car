function powertrain = powertrain_params()
    
powertrain = struct();
    %Battery
    powertrain.BattChargeMax = 100;                                                        % Rated capacity at nominal temperature, [Ah]
    powertrain.Em = [2.8 3.228 3.284 3.361 3.408 3.427 3.472 3.477 3.493 3.504 3.516 3.528 3.537 3.545 3.555 ...
                     3.561 3.566 3.576 3.587 3.589 3.594 3.6 3.608 3.61 3.616 3.619 6.626 3.632 6.637 3.64 ...
                     3.645 3.646 3.652 3.655 3.658 3.661 3.664 3.668 3.673 3.678 3.68 3.681 3.686 3.692 3.699 ...
                     3.702 3.705 3.71 3.717 3.723 3.728 3.733 3.735 3.742 3.749 3.755 3.761 3.768 3.773 3.78 ...
                     3.791 3.798 3.798 3.814 3.818 3.825 3.841 3.846 3.855 3.863 3.877 3.885 3.894 3.907 3.919 ...
                     3.926 3.935 3.944 3.954 3.964 3.974 3.988 3.998 4.014 4.029 4.034 4.047 4.065 4.074 4.086 ...
                     4.097 4.131 4.126 4.138 4.15 4.18 4.174 4.187 4.207 4.231 4.221];      % Open circuit voltage table data, [V]
    powertrain.CapLUTBp = [0:0.01:1];                                                       % Open circuit voltage breakpoints 1
    powertrain.RInt = [0.008846 0.009319 0.009027 0.00847 0.01032 0.01314; ...
                       0.006389 0.006554 0.005553 0.005525 0.006043 0.007805; ...
                       0.004364 0.004101 0.00406 0.003452 0.003846 0.004517; ...
                       0.002031 0.002563 0.002532 0.00246 0.002716 0.003047; ...
                       0.001443 0.001825 0.001795 0.001778 0.001924 0.002234; ...
                       0.0005603 0.0007192 0.0006887 0.0007557 0.0007355 0.001014; ...
                       0.001028 0.001338 0.001 0.001536 0.001546 0.002789];                 % Internal resistance table data, [Ohms]
    powertrain.BattTempBp = [243.1:10:298.1 313.1];                                         % Battery temperature breakpoints          
    powertrain.CapSOCBp = [0 0.2 0.4 0.6 0.8 1];                                            % Battery capacity breakpoints 2
    powertrain.Ns = 96;                                                                     % Number of cells in series
    powertrain.Np = 2;                                                                      % Number of cells in parallel
    powertrain.BattCapInit = 100;                                                           % Initial batteryu capacity, [Ah]
    
    %Motor
    powertrain.torque_max = 0.3530394;        % Maximum torque, [Nm]
    powertrain.power_max = 2;       % Maximum power, [W]
    powertrain.Tc = 0.02;               % Toque control time constant, [s]
    powertrain.eff = 100;               % Motor and drive overall efficiency, [%]
    powertrain.w_eff = 25.656;             % Speed at which efficiency is measure, [rad/s]
    powertrain.T_eff = 0.0686;            % Torque at which efficiency is measured, [Nm]
    powertrain.Piron = 0;               % Iron losses, [W]
    powertrain.Pbase = 0;               % Fixed losses independent of torque and speed, [W]
end
