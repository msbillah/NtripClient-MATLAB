% Author(s):            Mohammad Billah                                                
% Last changed date:    $Date: 2017-12-2 $                                                  
% email:                mbill002@ucr.edu
% Website:              http://www.ece.ucr.edu/~mbillah
% 
% All rights reserved.
%                                                                          
% This program carries no warranty, not even the implied                   
% warranty of merchantability or fitness for a particular purpose.         
% 
% Please email bug reports or suggestions for improvements to:
% mbill002@ucr.edu
%
% DISCLAIMER: ORIGINAL CODE WRITTEN BY GoGPS TOOLBOX
% GoGPS is a large toolbox with many functionalities
% I Extracted the ntrip-client part to be used as a separate program in
% MATLAB
clear all
warning off; %#ok<WNOFF>


addpath(genpath(pwd));

flag_NTRIP = 1;
filerootOUT = './data/out/yamatogawa';

pos_M = [];


ntripinfo.master_ip = 'rtgpsout.unavco.org';
ntripinfo.master_port = 2101;
ntripinfo.ntrip_user = ' ';
ntripinfo.ntrip_mountpoint = 'P221_RTCM3';
ntripinfo.ntrip_pw = [];

ntripinfo.nmea_init = '';
ntripinfo.nmea_update_rate = 10;
ntripinfo.master = [];
ntripinfo.server_delay = 0.05;

goGPS_master_monitor(filerootOUT, flag_NTRIP, ntripinfo);
