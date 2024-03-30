% Define the BPM data
bpm_data = [
    125, 92, 138, 170, 144, 141, 148, 100, 130, 170, ...
    83, 150, 118, 130, 174, 89, 120, 78, 100, 120, ...
    140, 123, 135, 133, 99, 130, 107, 122, 204, 110, ...
    126, 168, 98, 97, 180, 120, 150, 96, 95, 125, ...
    144, 90, 128, 79, 144, 122, 140, 134, 186, 67, ...
    106, 128, 107, 130, 123, 171, 137, 125, 128, ...
    130, 130, 133, 101, 95, 98, 173, 90, 198, 140
];

% Number of clusters
k = 2; % Reduce the number of clusters

% Perform k-medoids clustering
[idx, medoids] = kmedoids(bpm_data', k); % Transpose the data

% Assign clusters
cluster1 = bpm_data(idx == 1);
cluster2 = bpm_data(idx == 2);

% Plot clusters
scatter(find(idx == 1), cluster1, 'r', 'filled');
hold on;
scatter(find(idx == 2), cluster2, 'g', 'filled');

% Plot medoids
scatter(medoids, ones(1, k), 100, 'k', 'filled');

% Add legend
legend('Cluster 1', 'Cluster 2', 'Medoids');
xlabel('Index');
ylabel('BPM');
title('K-medoids Clustering of BPM Data');
