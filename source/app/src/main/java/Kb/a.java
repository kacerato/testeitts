package Kb;

import android.content.res.Resources;
import android.util.TypedValue;

public class a {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String value, Resources res) {
        boolean z10;
        if (value == null) {
            return 0;
        }
        switch (value.hashCode()) {
            case 343327108:
                if (value.equals("wrap_content")) {
                    z10 = false;
                    break;
                }
                z10 = -1;
                break;
            case 1261922022:
                if (value.equals("fill_parent")) {
                    z10 = true;
                    break;
                }
                z10 = -1;
                break;
            case 1386124388:
                if (value.equals("match_parent")) {
                    z10 = 2;
                    break;
                }
                z10 = -1;
                break;
            default:
                z10 = -1;
                break;
        }
        switch (z10) {
            case false:
                return -2;
            case true:
            case true:
                return -1;
            default:
                if (value.endsWith("dp")) {
                    return (int) TypedValue.applyDimension(1, Float.parseFloat(value.replace("dp", "")), res.getDisplayMetrics());
                }
                if (value.endsWith("sp")) {
                    return (int) TypedValue.applyDimension(2, Float.parseFloat(value.replace("sp", "")), res.getDisplayMetrics());
                }
                if (value.endsWith("px")) {
                    return Integer.parseInt(value.replace("px", ""));
                }
                if (value.endsWith("in")) {
                    return (int) TypedValue.applyDimension(4, Float.parseFloat(value.replace("in", "")), res.getDisplayMetrics());
                }
                if (value.endsWith("mm")) {
                    return (int) TypedValue.applyDimension(5, Float.parseFloat(value.replace("mm", "")), res.getDisplayMetrics());
                }
                if (value.endsWith("pt")) {
                    return (int) TypedValue.applyDimension(3, Float.parseFloat(value.replace("pt", "")), res.getDisplayMetrics());
                }
                return 0;
        }
    }
}
