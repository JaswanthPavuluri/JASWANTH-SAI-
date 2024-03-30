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

% Compute pairwise distances between medoids
medoid_distances = pdist(medoids');

% Check if the distance matrix is empty
if isempty(medoid_distances)
    disp('No pairwise distances found between medoids.');
else
    % Create an artificial hierarchical structure
    hierarchy = linkage(medoid_distances, 'single');

    % Plot dendrogram
    dendrogram(hierarchy, 'Labels', {'Medoid 1', 'Medoid 2'}, 'Orientation', 'right');
    xlabel('Distance');
    ylabel('Cluster');
    title('Dendrogram of K-medoids Clustering');
end
