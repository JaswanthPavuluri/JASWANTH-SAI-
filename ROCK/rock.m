% 1. Load your data or define it directly
bpm_data = [
    125, 92, 138, 170, 144, 141, 148, 100, 130, 170, ...
    83, 150, 118, 130, 174, 89, 120, 78, 100, 120, ...
    140, 123, 135, 133, 99, 130, 107, 122, 204, 110, ...
    126, 168, 98, 97, 180, 120, 150, 96, 95, 125, ...
    144, 90, 128, 79, 144, 122, 140, 134, 186, 67, ...
    106, 128, 107, 130, 123, 171, 137, 125, 128, ...
    130, 130, 133, 101, 95, 98, 173, 90, 198, 140
];

% 2. Cluster using the ROCK algorithm (assuming you have a function for it)
% clustering_indices = rock(bpm_data, k); % Use your implemented or obtained ROCK function

% Placeholder - replace with your actual clustering result
% For demonstration, I'll randomly assign clusters
rng(42); % for reproducibility
clustering_indices = randi([1, 2], size(bpm_data));

% 3. Plot the clustered data
cluster1 = bpm_data(clustering_indices == 1);
cluster2 = bpm_data(clustering_indices == 2);

scatter(find(clustering_indices == 1), cluster1, 'r', 'filled');
hold on;
scatter(find(clustering_indices == 2), cluster2, 'g', 'filled');

legend('Cluster 1', 'Cluster 2');
xlabel('Index');
ylabel('BPM');
title('ROCK Clustering of BPM Data');
