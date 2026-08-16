package d8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.lang.reflect.Field;
import org.openjdk.tools.doclint.DocLint;

public class c {

    public static final int f84378a = 100000;

    public static String j(String input) {
        return input.contains("DexPathList") ? l(input) : k(input);
    }

    public static String k(String input) {
        int lastIndexOf = input.lastIndexOf(91);
        if (lastIndexOf != -1) {
            input = input.substring(lastIndexOf + 1);
        }
        int indexOf = input.indexOf(93);
        return indexOf == -1 ? input : input.substring(0, indexOf);
    }

    public static String l(String input) {
        int indexOf = input.indexOf("DexPathList");
        int i10 = indexOf + 11;
        if (input.length() <= indexOf + 15) {
            return input;
        }
        String substring = input.substring(i10);
        int indexOf2 = substring.indexOf(93);
        if (substring.charAt(0) != '[' || substring.charAt(1) != '[' || indexOf2 < 0) {
            return input;
        }
        String[] split = substring.substring(2, indexOf2).split(DocLint.SEPARATOR);
        for (int i11 = 0; i11 < split.length; i11++) {
            int indexOf3 = split[i11].indexOf(34);
            int lastIndexOf = split[i11].lastIndexOf(34);
            if (indexOf3 > 0 && indexOf3 < lastIndexOf) {
                split[i11] = split[i11].substring(indexOf3 + 1, lastIndexOf);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : split) {
            if (sb2.length() > 0) {
                sb2.append(':');
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static String[] m(String input) {
        if (input.startsWith("dexPath=")) {
            int indexOf = input.indexOf(44);
            input = indexOf == -1 ? input.substring(8) : input.substring(8, indexOf);
        }
        return input.split(b3.s.f32937c);
    }

    public boolean a(File file) {
        return file.exists();
    }

    public final String b(ClassLoader classLoader, Class<?> pathClassLoaderClass) {
        try {
            Field declaredField = pathClassLoaderClass.getDeclaredField("path");
            declaredField.setAccessible(true);
            return (String) declaredField.get(classLoader);
        } catch (ClassCastException | IllegalAccessException | NoSuchFieldException unused) {
            return j(classLoader.toString());
        }
    }

    public Integer c() {
        try {
            return (Integer) Class.forName("android.os.Process").getMethod("myUid", null).invoke(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public final File d(String pathName) {
        File file = new File(pathName);
        if (i(file)) {
            return file;
        }
        return null;
    }

    public File e() {
        try {
            ClassLoader g10 = g();
            Class<?> cls = Class.forName("dalvik.system.PathClassLoader");
            cls.cast(g10);
            File[] f10 = f(b(g10, cls));
            if (f10.length > 0) {
                return f10[0];
            }
            return null;
        } catch (ClassCastException | ClassNotFoundException unused) {
            return null;
        }
    }

    public File[] f(String input) {
        int lastIndexOf;
        int lastIndexOf2;
        int lastIndexOf3;
        int indexOf;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : m(input)) {
            if (str.startsWith("/data/app/") && (lastIndexOf = str.lastIndexOf(".apk")) == str.length() - 4 && (lastIndexOf2 = str.lastIndexOf("/", lastIndexOf)) != 9 && (lastIndexOf3 = str.lastIndexOf("/", lastIndexOf2 - 1)) != -1 && (indexOf = str.indexOf("-", lastIndexOf3)) != -1) {
                String substring = str.substring(lastIndexOf3 + 1, indexOf);
                File d10 = d("/data/data/" + substring);
                if (d10 == null) {
                    d10 = h(substring);
                }
                if (d10 != null) {
                    File file = new File(d10, "cache");
                    if ((a(file) || file.mkdir()) && i(file)) {
                        steppedArrayList.add(file);
                    }
                }
            }
        }
        return (File[]) steppedArrayList.toArray(new File[steppedArrayList.size()]);
    }

    public final ClassLoader g() {
        return c.class.getClassLoader();
    }

    public File h(String packageName) {
        Integer c10 = c();
        if (c10 == null) {
            return null;
        }
        return d(String.format("/data/user/%d/%s", Integer.valueOf(c10.intValue() / 100000), packageName));
    }

    public boolean i(File file) {
        return file.isDirectory() && file.canWrite();
    }
}
