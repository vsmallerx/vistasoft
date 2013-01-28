function view = blurMap(view,weightFlag,lambda)
if isempty(view)
  myErrorDlg('Volume window must be open to blur map.');
end
if ~strcmp(view.viewType,'Gray')
  myErrorDlg('Blur map only for gray views.');
end
if isempty(view.map) 
if ~exist('weightFlag','var')
if ~exist('lambda','var')
curScan = getCurScan(view);
% Regularization
view.map{curScan}(:) = newMap;

return;