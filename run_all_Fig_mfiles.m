clear;
clc;

all_mFiles= dir('Fig*.m');
allFiles= {all_mFiles.name}';

saveFig =1;
LatexDir= ['figures' filesep];
if ~isfolder(LatexDir)
    mkdir(LatexDir);
end

for fileVar= 4:length(allFiles)
    fprintf('Running %s... \n', allFiles{fileVar})
    eval([allFiles{fileVar}(1:end-2) '(saveFig, LatexDir)']);
end