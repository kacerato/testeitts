package org.apache.commons.math3.special;

import org.apache.commons.math3.util.FastMath;

public class Erf {
    private static final double X_CRIT = 0.4769362762044697d;

    private Erf() {
    }

    public static double erf(double d10) {
        if (FastMath.abs(d10) > 40.0d) {
            return d10 > 0.0d ? 1.0d : -1.0d;
        }
        double regularizedGammaP = Gamma.regularizedGammaP(0.5d, d10 * d10, 1.0E-15d, 10000);
        return d10 < 0.0d ? -regularizedGammaP : regularizedGammaP;
    }

    public static double erfInv(double d10) {
        double d11;
        double sqrt;
        double d12;
        double d13;
        double d14 = -FastMath.log((1.0d - d10) * (1.0d + d10));
        if (d14 < 6.25d) {
            sqrt = d14 - 3.125d;
            d12 = ((((((((((((((((((((((((((((((((((((((((((-3.64441206401782E-21d) * sqrt) - 1.6850591381820166E-19d) * sqrt) + 1.28584807152564E-18d) * sqrt) + 1.1157877678025181E-17d) * sqrt) - 1.333171662854621E-16d) * sqrt) + 2.0972767875968562E-17d) * sqrt) + 6.637638134358324E-15d) * sqrt) - 4.054566272975207E-14d) * sqrt) - 8.151934197605472E-14d) * sqrt) + 2.6335093153082323E-12d) * sqrt) - 1.2975133253453532E-11d) * sqrt) - 5.415412054294628E-11d) * sqrt) + 1.0512122733215323E-9d) * sqrt) - 4.112633980346984E-9d) * sqrt) - 2.9070369957882005E-8d) * sqrt) + 4.2347877827932404E-7d) * sqrt) - 1.3654692000834679E-6d) * sqrt) - 1.3882523362786469E-5d) * sqrt) + 1.8673420803405714E-4d) * sqrt) - 7.40702534166267E-4d) * sqrt) - 0.006033670871430149d) * sqrt) + 0.24015818242558962d;
            d13 = 1.6536545626831027d;
        } else if (d14 < 16.0d) {
            sqrt = FastMath.sqrt(d14) - 3.25d;
            d12 = (((((((((((((((((((((((((((((((((2.2137376921775787E-9d * sqrt) + 9.075656193888539E-8d) * sqrt) - 2.7517406297064545E-7d) * sqrt) + 1.8239629214389228E-8d) * sqrt) + 1.5027403968909828E-6d) * sqrt) - 4.013867526981546E-6d) * sqrt) + 2.9234449089955446E-6d) * sqrt) + 1.2475304481671779E-5d) * sqrt) - 4.7318229009055734E-5d) * sqrt) + 6.828485145957318E-5d) * sqrt) + 2.4031110387097894E-5d) * sqrt) - 3.550375203628475E-4d) * sqrt) + 9.532893797373805E-4d) * sqrt) - 0.0016882755560235047d) * sqrt) + 0.002491442096107851d) * sqrt) - 0.003751208507569241d) * sqrt) + 0.005370914553590064d) * sqrt) + 1.0052589676941592d;
            d13 = 3.0838856104922208d;
        } else {
            if (Double.isInfinite(d14)) {
                d11 = Double.POSITIVE_INFINITY;
                return d11 * d10;
            }
            sqrt = FastMath.sqrt(d14) - 5.0d;
            d12 = ((((((((((((((((((((((((((((((-2.7109920616438573E-11d) * sqrt) - 2.555641816996525E-10d) * sqrt) + 1.5076572693500548E-9d) * sqrt) - 3.789465440126737E-9d) * sqrt) + 7.61570120807834E-9d) * sqrt) - 1.496002662714924E-8d) * sqrt) + 2.914795345090108E-8d) * sqrt) - 6.771199775845234E-8d) * sqrt) + 2.2900482228026655E-7d) * sqrt) - 9.9298272942317E-7d) * sqrt) + 4.526062597223154E-6d) * sqrt) - 1.968177810553167E-5d) * sqrt) + 7.599527703001776E-5d) * sqrt) - 2.1503011930044477E-4d) * sqrt) - 1.3871931833623122E-4d) * sqrt) + 1.0103004648645344d;
            d13 = 4.849906401408584d;
        }
        d11 = (d12 * sqrt) + d13;
        return d11 * d10;
    }

    public static double erfc(double d10) {
        if (FastMath.abs(d10) > 40.0d) {
            return d10 > 0.0d ? 0.0d : 2.0d;
        }
        double regularizedGammaQ = Gamma.regularizedGammaQ(0.5d, d10 * d10, 1.0E-15d, 10000);
        return d10 < 0.0d ? 2.0d - regularizedGammaQ : regularizedGammaQ;
    }

    public static double erfcInv(double d10) {
        return erfInv(1.0d - d10);
    }

    public static double erf(double d10, double d11) {
        double erf;
        double erf2;
        if (d10 > d11) {
            return -erf(d11, d10);
        }
        if (d10 < -0.4769362762044697d) {
            if (d11 < 0.0d) {
                erf = erfc(-d11);
                erf2 = erfc(-d10);
                return erf - erf2;
            }
        } else if (d11 > X_CRIT && d10 > 0.0d) {
            return erfc(d10) - erfc(d11);
        }
        erf = erf(d11);
        erf2 = erf(d10);
        return erf - erf2;
    }
}
