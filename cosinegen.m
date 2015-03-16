function y = cosinegen(fsamp, fsig, nsamp)

    tsamp = 1/fsamp;
    t = 0 : tsamp : (nsamp-1)*tsamp;

    y = cos(2*pi*fsig*t);

  end