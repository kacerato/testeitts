package on;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class j {

    public static final String f99728d = "Pathfinding.RecastGraph";

    public static final String f99729e = "4.0.6";

    public static final String f99730f = "4.1.16";

    public static final Pattern f99731g = Pattern.compile("(\\d+)\\.(\\d+)\\.(\\d+)");

    public String f99732a;

    public int f99733b;

    public String[] f99734c;

    public boolean a() {
        for (String str : this.f99734c) {
            if (str.equals(f99728d)) {
                return true;
            }
        }
        return false;
    }

    public boolean b() {
        return c(f99729e);
    }

    public boolean c(String minVersion) {
        int i10;
        int i11;
        int[] d10 = d(this.f99732a);
        int[] d11 = d(minVersion);
        for (int i12 = 0; i12 < Math.min(d10.length, d11.length) && (i10 = d10[i12]) <= (i11 = d11[i12]); i12++) {
            if (i11 > i10) {
                return false;
            }
        }
        return true;
    }

    public final int[] d(String version) {
        Matcher matcher = f99731g.matcher(version);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Invalid version format: " + version);
        }
        int groupCount = matcher.groupCount();
        int[] iArr = new int[groupCount];
        int i10 = 0;
        while (i10 < groupCount) {
            int i11 = i10 + 1;
            iArr[i10] = Integer.parseInt(matcher.group(i11));
            i10 = i11;
        }
        return iArr;
    }
}
