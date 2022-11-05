function print_all(varargin)
    for ii = 1:varargin
        fprintf('Here is input argument number %d: %d\n', varargin{ii})
    end
end