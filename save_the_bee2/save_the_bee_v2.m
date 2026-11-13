%% Experiment settings

rng(42);

nFlowers = 100;

% Meadow A
meanA = 5;
sdA = 1.5;

% Meadow B
meanB = 9;
sdB = 2.0;

% Meadow C
meanC = 7;
sdC = 1.0;

%% Generate simulated nectar production

meadowA = meanA + sdA * randn(nFlowers,1);

meadowB = meanB + sdB * randn(nFlowers,1);

meadowC = meanC + sdC * randn(nFlowers,1);

% Avoid negative nectar values

meadowA(meadowA < 0) = 0;
meadowB(meadowB < 0) = 0;
meadowC(meadowC < 0) = 0;


%% Generate simulated nectar production

meadowA = meanA + sdA * randn(nFlowers,1); meadowB = meanB + sdB * randn(nFlowers,1); meadowC = meanC + sdC * randn(nFlowers,1);

% Avoid negative nectar values

meadowA(meadowA < 0) = 0; meadowB(meadowB < 0) = 0; meadowC(meadowC < 0) = 0;

%% Create dataset

flowerID = (1:nFlowers)';

data = table(flowerID, meadowA, meadowB, meadowC);

data.Properties.VariableNames = {'Flower_ID', 'Meadow_A_uL', 'Meadow_B_uL', 'Meadow_C_uL'};

%% Calculate descriptive statistics

means = [mean(meadowA), mean(meadowB), mean(meadowC)];

SD = [std(meadowA), std(meadowB), std(meadowC)];

maxNectar = [max(meadowA), max(meadowB), max(meadowC)];

highNectar = [sum(meadowA > 10), sum(meadowB > 10), sum(meadowC > 10)];

%% Display results

fprintf('\n===== SAVE THE BEES! VERSION 2.0 =====\n');

fprintf('\nMEADOW A\n'); fprintf('Mean: %.2f uL\n', means(1)); fprintf('Standard deviation: %.2f uL\n', SD(1)); fprintf('Maximum: %.2f uL\n', maxNectar(1)); fprintf('Flowers above 10 uL: %d\n', highNectar(1));

fprintf('\nMEADOW B\n'); fprintf('Mean: %.2f uL\n', means(2)); fprintf('Standard deviation: %.2f uL\n', SD(2)); fprintf('Maximum: %.2f uL\n', maxNectar(2)); fprintf('Flowers above 10 uL: %d\n', highNectar(2));

fprintf('\nMEADOW C\n'); fprintf('Mean: %.2f uL\n', means(3)); fprintf('Standard deviation: %.2f uL\n', SD(3)); fprintf('Maximum: %.2f uL\n', maxNectar(3)); fprintf('Flowers above 10 uL: %d\n', highNectar(3));

%% Save dataset

writetable(data, 'bee_nectar_data_v2.txt', 'Delimiter', 'tab');

fprintf('\nDataset successfully saved!\n'); fprintf('File: bee_nectar_data_v2.txt\n');
