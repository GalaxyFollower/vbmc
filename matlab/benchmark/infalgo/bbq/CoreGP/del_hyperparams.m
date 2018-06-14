function [del_gp_hypers] = ...
    del_hyperparams(logl_gp_hypers)
% returns a structure containing the hyperparameters for a GP over delta,
% the difference between log-gp-mean-l and gp-mean-logl

del_gp_hypers.log_output_scale = ...
    log(0.5) + logl_gp_hypers.log_output_scale;
del_gp_hypers.log_input_scales = ...
    log(0.1) + logl_gp_hypers.log_input_scales;
del_gp_hypers.mean = ...
    0;