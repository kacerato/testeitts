package G0;

import android.net.Uri;

public final class X0 {

    public static final Uri f7342a;

    public static final Uri f7343b;

    public static final int f7344c = 0;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f7342a = parse;
        f7343b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }
}
