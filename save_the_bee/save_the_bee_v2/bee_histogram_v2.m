%% SAVE THE BEES! VERSION 2.0 % Comparative nectar distribution

clear; clc; close all;

%% Load dataset

data = readtable('bee_nectar_data_v2.txt');

meadowA = data.Meadow_A_uL; meadowB = data.Meadow_B_uL; meadowC = data.Meadow_C_uL;

%% Create histogram

figure('Color','w','Position',[100 100 900 550]);

hold on;

binEdges = 0:1:16;

histogram(meadowA,binEdges,'FaceColor',[1.0 0.75 0.2],'FaceAlpha',0.55); histogram(meadowB,binEdges,'FaceColor',[1.0 0.35 0.1],'FaceAlpha',0.55); histogram(meadowC,binEdges,'FaceColor',[0.2 0.65 0.3],'FaceAlpha',0.55);

xlabel('Nectar production (\muL)'); ylabel('Number of flowers');

title('Save the Bees! - Nectar distribution across three meadows');

legend('Meadow A','Meadow B','Meadow C','Location','northeast');

xlim([0 16]); grid on; box on;

hold off;

%% Save figure

exportgraphics(gcf,'bee_nectar_histogram_v2.png','Resolution',300);

fprintf('\nHistogram successfully saved!\n'); fprintf('File: bee_nectar_histogram_v2.png\n');