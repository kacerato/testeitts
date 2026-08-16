package jf;

import com.jme3.math.ColorRGBA;
import com.jme3.texture.image.ColorSpace;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p000if.C13702E;
import p000if.C13724t;

public final class e {

    public static final Logger f92901a = Logger.getLogger(e.class.getName());

    public static final Pattern f92902b = Pattern.compile("Color\\[\\s*([^,]+),\\s*([^,]+),\\s*([^,]+),\\s*(\\S+)\\s*]");

    public static final boolean f92903c = false;

    public static String a(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder(40);
        float f10 = colorRGBA.f81598r;
        float f11 = colorRGBA.f81597g;
        if (f10 == f11 && f11 == colorRGBA.f81596b) {
            sb2.append("rgb=");
            sb2.append(C13724t.g(colorRGBA.f81598r));
        } else {
            sb2.append("r=");
            sb2.append(C13724t.g(colorRGBA.f81598r));
            sb2.append(" g=");
            sb2.append(C13724t.g(colorRGBA.f81597g));
            sb2.append(" b=");
            sb2.append(C13724t.g(colorRGBA.f81596b));
        }
        if (colorRGBA.f81595a != 1.0f) {
            sb2.append(" a=");
            sb2.append(C13724t.g(colorRGBA.f81595a));
        }
        return sb2.toString();
    }

    public static ColorRGBA b(float f10, ColorRGBA colorRGBA, ColorRGBA colorRGBA2) {
        C13702E.f(f10, "fraction");
        C13702E.t(colorRGBA, "start");
        C13702E.t(colorRGBA2, "end");
        return c(f10, colorRGBA, colorRGBA2, null);
    }

    public static ColorRGBA c(float f10, ColorRGBA colorRGBA, ColorRGBA colorRGBA2, ColorRGBA colorRGBA3) {
        C13702E.t(colorRGBA, "c0");
        C13702E.t(colorRGBA2, "c1");
        if (colorRGBA3 == null) {
            colorRGBA3 = new ColorRGBA();
        }
        colorRGBA3.f81598r = f.y(f10, colorRGBA.f81598r, colorRGBA2.f81598r);
        colorRGBA3.f81597g = f.y(f10, colorRGBA.f81597g, colorRGBA2.f81597g);
        colorRGBA3.f81596b = f.y(f10, colorRGBA.f81596b, colorRGBA2.f81596b);
        colorRGBA3.f81595a = f.y(f10, colorRGBA.f81595a, colorRGBA2.f81595a);
        return colorRGBA3;
    }

    public static ColorRGBA d(String str) {
        C13702E.j(str, "text string");
        Matcher matcher = f92902b.matcher(str);
        if (matcher.matches()) {
            return new ColorRGBA(Float.parseFloat(matcher.group(1)), Float.parseFloat(matcher.group(2)), Float.parseFloat(matcher.group(3)), Float.parseFloat(matcher.group(4)));
        }
        return null;
    }

    public static ColorRGBA e(ColorSpace colorSpace, ColorRGBA colorRGBA) {
        return colorSpace == ColorSpace.sRGB ? colorRGBA.m1279clone() : colorRGBA.getAsSrgb();
    }

    public static ColorRGBA f(ColorRGBA colorRGBA) {
        float B10 = f.B(colorRGBA.f81598r, colorRGBA.f81597g, colorRGBA.f81596b);
        return B10 <= 0.0f ? new ColorRGBA(1.0f, 1.0f, 1.0f, colorRGBA.f81595a) : colorRGBA.mult(1.0f / B10);
    }
}
