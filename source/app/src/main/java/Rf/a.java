package Rf;

import Lf.g;
import org.jetbrains.annotations.NotNull;

public final class a {

    @NotNull
    public static final a f22774a = new a();

    @g
    public static final double f22775b = Math.log(2.0d);

    @g
    public static final double f22776c;

    @g
    public static final double f22777d;

    @g
    public static final double f22778e;

    @g
    public static final double f22779f;

    @g
    public static final double f22780g;

    static {
        double ulp = Math.ulp(1.0d);
        f22776c = ulp;
        double sqrt = Math.sqrt(ulp);
        f22777d = sqrt;
        double sqrt2 = Math.sqrt(sqrt);
        f22778e = sqrt2;
        double d10 = 1;
        f22779f = d10 / sqrt;
        f22780g = d10 / sqrt2;
    }
}
