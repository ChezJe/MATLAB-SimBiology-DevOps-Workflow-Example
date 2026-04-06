classdef tSimulateModel < matlab.unittest.TestCase
    %TESTALL - Unit tests for SimulationModel behavior
    %   Contains tests that verify SimulationModel produces expected SimData.

    methods (Test)
        function testSimData(testCase)

            % Create model instance and run its simulation
            sObj = SimulationModel;
            simulate(sObj);

            % Verify SimData object type
            testCase.verifyClass(sObj.SimData,'SimData');

            % Verify expected set of data names produced by the simulation
            import matlab.unittest.constraints.IsSameSetAs
            testCase.verifyThat(sObj.SimData.DataNames,...
                IsSameSetAs(["Receptor","Complex","RO","Drug"]));
        end
    end
end

