% Define the BPM data
bpm_data = [125, 92, 138, 170, 144, 141, 148, 100, 130, 170, 83, 150, 118, 130, 174, 89, 120, 78, 100];

% Reshape the data for k-means clustering
X = bpm_data';

% Number of clusters
k = 3;

% Perform k-means clustering
[idx, centroids] = kmeans(X, k);

% Sort the centroids in ascending order
[centroids, sorted_idx] = sort(centroids);

% Reorder the cluster indices accordingly
idx = sorted_idx(idx);

% Assign clusters
low_cluster = X(idx == 1);
medium_cluster = X(idx == 2);
high_cluster = X(idx == 3);

% Plot clusters
scatter(1:numel(low_cluster), low_cluster, 'r', 'filled');
hold on;
scatter(1:numel(medium_cluster), medium_cluster, 'g', 'filled');
scatter(1:numel(high_cluster), high_cluster, 'b', 'filled');

% Plot centroids
scatter(1:numel(centroids), centroids, 100, 'k', 'filled');

% Add legend
legend('Low Cluster', 'Medium Cluster', 'High Cluster', 'Centroids');
xlabel('Index');
ylabel('BPM');
title('K-means Clustering of BPM Data');
