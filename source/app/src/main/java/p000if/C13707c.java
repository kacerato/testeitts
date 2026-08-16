package p000if;

import G0.E;
import com.jme3.system.NullContext;
import java.awt.DisplayMode;
import java.awt.GraphicsEnvironment;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class C13707c {

    public static final Logger f92088a = Logger.getLogger(C13707c.class.getName());

    public static final Pattern f92089b = Pattern.compile("^\\s*(\\d+)\\s*[x,]\\s*(\\d+)\\s*");

    public static final boolean f92090c;

    public static final boolean f92091d;

    public static final Field f92092e;

    public static final Field f92093f;

    public static final Method f92094g;

    public static final Method f92095h;

    public static final Method f92096i;

    public static final Method f92097j;

    public static final Method f92098k;

    public static final Method f92099l;

    public static final Method f92100m;

    public static final Method f92101n;

    public static final Method f92102o;

    public static final Method f92103p;

    public static final Method f92104q;

    public static final Method f92105r;

    public static final boolean f92106s = false;

    static {
        boolean z10;
        boolean z11;
        try {
            Class.forName("org.lwjgl.opengl.Display");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f92090c = z10;
        try {
            Class.forName("com.jme3.system.lwjgl.LwjglWindow");
            z11 = true;
        } catch (ClassNotFoundException unused2) {
            z11 = false;
        }
        f92091d = z11;
        try {
            Field declaredField = Class.forName("com.jme3.system.lwjgl.LwjglContext").getDeclaredField(E.a.f7280a);
            f92092e = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = NullContext.class.getDeclaredField(E.a.f7280a);
            f92093f = declaredField2;
            declaredField2.setAccessible(true);
            if (z10) {
                f92094g = null;
                f92096i = null;
                f92098k = null;
                f92103p = null;
                f92104q = null;
                f92105r = null;
                Class<?> cls = Class.forName("org.lwjgl.opengl.Display");
                f92099l = cls.getDeclaredMethod("getDesktopDisplayMode", null);
                f92102o = cls.getDeclaredMethod("getAvailableDisplayModes", null);
                Class<?> cls2 = Class.forName("org.lwjgl.opengl.DisplayMode");
                f92095h = cls2.getDeclaredMethod("getBitsPerPixel", null);
                f92097j = cls2.getDeclaredMethod("getFrequency", null);
                f92100m = cls2.getDeclaredMethod("getHeight", null);
                f92101n = cls2.getDeclaredMethod("getWidth", null);
                return;
            }
            if (!z11) {
                f92094g = null;
                f92095h = null;
                f92096i = null;
                f92097j = null;
                f92098k = null;
                f92099l = null;
                f92100m = null;
                f92101n = null;
                f92102o = null;
                f92103p = null;
                f92104q = null;
                f92105r = null;
                return;
            }
            f92095h = null;
            Class<?> cls3 = Class.forName("org.lwjgl.glfw.GLFW");
            Class<Long> cls4 = Long.TYPE;
            f92099l = cls3.getDeclaredMethod("glfwGetVideoMode", cls4);
            f92102o = cls3.getDeclaredMethod("glfwGetVideoModes", cls4);
            f92103p = cls3.getDeclaredMethod("glfwGetPrimaryMonitor", null);
            Class<?> cls5 = Class.forName("org.lwjgl.glfw.GLFWVidMode");
            f92096i = cls5.getDeclaredMethod("blueBits", null);
            f92097j = cls5.getDeclaredMethod("refreshRate", null);
            f92098k = cls5.getDeclaredMethod("greenBits", null);
            f92100m = cls5.getDeclaredMethod("height", null);
            f92101n = cls5.getDeclaredMethod("width", null);
            f92104q = cls5.getDeclaredMethod("redBits", null);
            Class<?> cls6 = cls5.getDeclaredClasses()[0];
            f92094g = cls6.getMethod("get", null);
            f92105r = cls6.getMethod("hasRemaining", null);
        } catch (ClassNotFoundException e10) {
            e = e10;
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e11) {
            e = e11;
            throw new RuntimeException(e);
        } catch (NoSuchMethodException e12) {
            e = e12;
            throw new RuntimeException(e);
        } catch (SecurityException e13) {
            e = e13;
            throw new RuntimeException(e);
        }
    }

    public static String a(int i10, int i11) {
        C13702E.F(i10, "width");
        C13702E.F(i11, "height");
        return String.format("%d x %d", Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static String b(int i10) {
        return i10 <= 1 ? "disabled" : String.format("%dx", Integer.valueOf(i10));
    }

    public static DisplayMode c() {
        return f92090c ? d() : f92091d ? e() : GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDisplayMode();
    }

    public static DisplayMode d() {
        try {
            return j(f92099l.invoke(null, null));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static DisplayMode e() {
        try {
            return k(f92099l.invoke(null, f92103p.invoke(null, null)));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static boolean f() {
        return f92091d;
    }

    public static List<DisplayMode> g() {
        return f92090c ? h() : f92091d ? i() : Arrays.asList(GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDisplayModes());
    }

    public static List<DisplayMode> h() {
        try {
            Object[] objArr = (Object[]) f92102o.invoke(null, null);
            ArrayList arrayList = new ArrayList(objArr.length);
            for (Object obj : objArr) {
                arrayList.add(j(obj));
            }
            return arrayList;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static List<DisplayMode> i() {
        try {
            Object invoke = f92103p.invoke(null, null);
            if (invoke != null && 0 != ((Long) invoke).longValue()) {
                Object invoke2 = f92102o.invoke(null, invoke);
                ArrayList arrayList = new ArrayList(32);
                while (((Boolean) f92105r.invoke(invoke2, null)).booleanValue()) {
                    arrayList.add(k(f92094g.invoke(invoke2, null)));
                }
                return arrayList;
            }
            return new ArrayList(1);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw new IllegalStateException(e);
        } catch (InvocationTargetException e11) {
            e = e11;
            throw new IllegalStateException(e);
        }
    }

    public static DisplayMode j(Object obj) throws IllegalAccessException, InvocationTargetException {
        return new DisplayMode(((Integer) f92101n.invoke(obj, null)).intValue(), ((Integer) f92100m.invoke(obj, null)).intValue(), ((Integer) f92095h.invoke(obj, null)).intValue(), ((Integer) f92097j.invoke(obj, null)).intValue());
    }

    public static DisplayMode k(Object obj) throws IllegalAccessException, InvocationTargetException {
        int intValue = ((Integer) f92101n.invoke(obj, null)).intValue();
        int intValue2 = ((Integer) f92100m.invoke(obj, null)).intValue();
        int intValue3 = ((Integer) f92104q.invoke(obj, null)).intValue();
        int intValue4 = ((Integer) f92098k.invoke(obj, null)).intValue();
        return new DisplayMode(intValue, intValue2, intValue3 + intValue4 + ((Integer) f92096i.invoke(obj, null)).intValue(), ((Integer) f92097j.invoke(obj, null)).intValue());
    }

    public static int[] l(String str) {
        C13702E.j(str, "text");
        Matcher matcher = f92089b.matcher(str.toLowerCase(Locale.ROOT));
        if (matcher.find()) {
            return new int[]{Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2))};
        }
        return null;
    }
}
