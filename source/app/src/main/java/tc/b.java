package Tc;

import android.content.Context;
import android.net.Uri;
import android.text.format.Formatter;
import androidx.documentfile.provider.DocumentFile;
import b3.s;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.doclint.DocLint;
import ve.j;
import yd.C16181m;

public class b {

    public static final char[] f24217a = {':', JavaElement.JEM_ESCAPE, '?', '*'};

    public static String A(String f10) {
        return O(f10) + ".meta/";
    }

    public static String B(String filePath) {
        String o10 = o(filePath.replace(C16181m.f130232i, "/"));
        int lastIndexOf = o10.lastIndexOf("/");
        return lastIndexOf != -1 ? o10.substring(0, lastIndexOf) : "";
    }

    public static boolean C(String s10) {
        return Pattern.compile("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}").matcher(s10).matches();
    }

    public static boolean D(String path) {
        if (path == null || path.trim().isEmpty()) {
            return false;
        }
        String replaceAll = path.replace(C16181m.f130232i, "/").trim().replaceAll("[/\\\\]+$", "");
        return replaceAll.lastIndexOf(46) > Math.max(replaceAll.lastIndexOf(47), replaceAll.lastIndexOf(92));
    }

    public static boolean E(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return Character.isUpperCase(str.charAt(0));
    }

    public static boolean F(String path) {
        if (path == null || path.trim().isEmpty()) {
            return false;
        }
        String replaceAll = path.replace(C16181m.f130232i, "/").trim().replaceAll("[/\\\\]+$", "");
        return replaceAll.lastIndexOf(46) <= Math.max(replaceAll.lastIndexOf(47), replaceAll.lastIndexOf(92));
    }

    public static String G(String path) {
        return H(path, com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/");
    }

    public static String H(String path, String projectRoot) {
        if (path == null) {
            return null;
        }
        String trim = path.trim();
        if (trim.isEmpty() || trim.startsWith("@@ASSET@@")) {
            return null;
        }
        String o10 = o(trim);
        while (o10.contains(projectRoot)) {
            if (projectRoot == null || projectRoot.isEmpty()) {
                return null;
            }
            projectRoot = o(projectRoot);
            if (!projectRoot.endsWith("/")) {
                projectRoot = projectRoot + "/";
            }
            if (!o10.startsWith(projectRoot)) {
                return null;
            }
            o10 = o10.replace(projectRoot, "");
        }
        if (o10.startsWith("/")) {
            o10 = o10.substring(1);
        }
        if (!o10.contains(projectRoot)) {
            return o10;
        }
        throw new RuntimeException("Invalid normalization of:" + path);
    }

    public static String I(String str) {
        return str.replaceAll("[^\\d.]", "");
    }

    public static String J(String original, String replacement) {
        if (original.toUpperCase().equals(original)) {
            return replacement.toUpperCase();
        }
        if (original.toLowerCase().equals(original)) {
            return replacement.toLowerCase();
        }
        return Character.toUpperCase(replacement.charAt(0)) + replacement.substring(1).toLowerCase();
    }

    public static String K(String s10) {
        return s10.replaceAll("-", "").replaceAll("-", "").replaceAll(ConstantDescs.DEFAULT_NAME, "").replaceAll("/", "").replaceAll(">", "").replaceAll("<", "").replaceAll(s.f32937c, "").replaceAll(";", "").replaceAll("!", "").replaceAll("@", "").replaceAll(C16181m.f130230g, "").replaceAll(j.f121589a, "").replaceAll("&", "").replaceAll("=", "").replaceAll("\u00a7", "").replaceAll(DocLint.SEPARATOR, "").replace(".", "");
    }

    public static String L() {
        String uuid = UUID.randomUUID().toString();
        if (!uuid.contains("-")) {
            return uuid;
        }
        try {
            return uuid.replace("-", "");
        } catch (Exception unused) {
            return uuid;
        }
    }

    public static String M(int length) {
        if (length <= 0) {
            throw new IndexOutOfBoundsException("length can't be <= 0");
        }
        StringBuilder sb2 = new StringBuilder(UUID.randomUUID().toString().replace("-", ""));
        while (length >= sb2.length()) {
            sb2.append(L());
        }
        return sb2.substring(0, length);
    }

    public static String N(String filePath) {
        int indexOf;
        if (filePath == null || filePath.trim().isEmpty()) {
            return filePath;
        }
        String replaceAll = filePath.replace(C16181m.f130232i, "/").trim().replaceAll("/+$", "");
        int lastIndexOf = replaceAll.lastIndexOf(47) + 1;
        return (lastIndexOf < replaceAll.length() && (indexOf = replaceAll.indexOf(46, lastIndexOf)) >= 0) ? replaceAll.substring(0, indexOf) : replaceAll;
    }

    public static String O(String filePath) {
        if (filePath == null || filePath.trim().isEmpty()) {
            return filePath;
        }
        String replaceAll = filePath.replace(C16181m.f130232i, "/").trim().replaceAll("[/\\\\]+$", "");
        int max = Math.max(replaceAll.lastIndexOf(47), replaceAll.lastIndexOf(92));
        int lastIndexOf = replaceAll.lastIndexOf(46);
        return lastIndexOf > max ? replaceAll.substring(0, lastIndexOf) : replaceAll;
    }

    @Deprecated
    public static String P(String s10) {
        return s10 != null ? s10.replaceAll("[^a-zA-Z0-9]", " ") : s10;
    }

    public static String Q(String s10, String replacement) {
        return s10 != null ? s10.replaceAll("[^a-zA-Z0-9]", replacement) : s10;
    }

    public static String R(String t10, int count) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < count; i10++) {
            sb2.append(t10);
        }
        return sb2.toString();
    }

    public static String S(String text, List<c> tags) {
        String a10;
        if (tags == null) {
            throw new NullPointerException("Tags can't be null");
        }
        if (text != null && !text.isEmpty()) {
            for (c cVar : tags) {
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile(cVar.a() + "(.*?)" + cVar.c(), 32).matcher(text);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (group != null && !group.trim().isEmpty() && (a10 = cVar.b().a(group)) != null) {
                            matcher.appendReplacement(stringBuffer, a10);
                        }
                    }
                    matcher.appendTail(stringBuffer);
                    text = stringBuffer.toString();
                } catch (IndexOutOfBoundsException unused) {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return text;
    }

    public static String T(String text, c... tags) {
        String a10;
        if (tags == null) {
            throw new NullPointerException("Tags can't be null");
        }
        if (text != null && !text.isEmpty()) {
            for (c cVar : tags) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile(cVar.a() + "(.*?)" + cVar.c(), 32).matcher(text);
                while (matcher.find()) {
                    String group = matcher.group(1);
                    if (group != null && !group.trim().isEmpty() && (a10 = cVar.b().a(group)) != null) {
                        matcher.appendReplacement(stringBuffer, a10);
                    }
                }
                matcher.appendTail(stringBuffer);
                text = stringBuffer.toString();
            }
        }
        return text;
    }

    public static String U(String text, String world, String newWorld) {
        Matcher matcher = Pattern.compile("\\b" + Pattern.quote(world) + "\\b", 2).matcher(text);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(J(matcher.group(), newWorld)));
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static String V(String name) {
        if (name == null) {
            return "";
        }
        int i10 = 0;
        while (true) {
            char[] cArr = f24217a;
            if (i10 >= cArr.length) {
                return name;
            }
            name = name.replace(cArr[i10], '_');
            i10++;
        }
    }

    public static String W(int value) {
        if (value > 1000000) {
            float f10 = value / 1000000.0f;
            if (f10 > 1.0f) {
                return Nc.b.v0(f10, 2) + "M";
            }
            return Nc.b.v0(f10, 2) + "M";
        }
        if (value <= 1000) {
            return value + "";
        }
        float f11 = value / 1000.0f;
        if (f11 > 1.0f) {
            return Nc.b.v0(f11, 0) + "K";
        }
        return Nc.b.v0(f11, 0) + "K";
    }

    public static String X(String s10) {
        if (s10 == null) {
            return null;
        }
        return s10.replace("\u00a0", "").replace("\ufeff", "");
    }

    public static String Y(String str, int maxLength) {
        int i10 = maxLength - 3;
        if (str.length() <= i10) {
            return str;
        }
        return str.substring(0, i10) + "...";
    }

    public static String Z(String string, String spacer, int length) {
        if (string.length() >= length) {
            return string;
        }
        String str = spacer;
        while (str.length() < length - string.length()) {
            str = str + spacer;
        }
        return string + str;
    }

    public static String a(float number, int length) {
        if (length <= 0) {
            return "" + number;
        }
        return String.format("%0" + length + "f", Float.valueOf(number));
    }

    public static String a0(String string, String spacer, int length) {
        if (string.length() >= length) {
            return string;
        }
        String str = spacer;
        while (str.length() < (length - string.length()) / 2) {
            str = str + spacer;
        }
        return str + string + str;
    }

    public static String b(int number, int length) {
        if (length <= 0) {
            return "" + number;
        }
        return String.format("%0" + length + "d", Integer.valueOf(number));
    }

    public static boolean b0(String str, String substr) {
        return str.toLowerCase().startsWith(substr.toLowerCase());
    }

    public static String c(String str) {
        try {
            String replaceAll = str.replaceAll("(.)([A-Z0-9]\\w)", "$1 $2");
            while (replaceAll.startsWith(" ") && replaceAll.length() > 1) {
                replaceAll = replaceAll.substring(1);
            }
            return replaceAll;
        } catch (Exception unused) {
            return str;
        }
    }

    public static String c0(List objectList) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < objectList.size(); i10++) {
            Object obj = objectList.get(i10);
            if (i10 > 0) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append(String.valueOf(obj));
        }
        return sb2.toString();
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.substring(0, 1).toUpperCase() + str.substring(1);
        } catch (Exception unused) {
            return str;
        }
    }

    public static String d0(String str) {
        String replace = str.replace(C16181m.f130232i, "/");
        return replace.contains("//") ? replace.replace("//", "/") : replace;
    }

    public static String e(String str) {
        try {
            return str.substring(0, 1).toLowerCase() + str.substring(1);
        } catch (Exception unused) {
            return str;
        }
    }

    public static String f(String str, int maxLength) {
        return str.length() > maxLength ? str.substring(0, maxLength) : str;
    }

    public static String g(List<DocumentFile> paths) {
        String str = "";
        if (paths.size() <= 1) {
            if (paths.size() != 1) {
                return "";
            }
            return u(paths.get(0).getUri().getPath()) + "/";
        }
        int size = paths.size();
        String[][] strArr = new String[size];
        for (int i10 = 0; i10 < paths.size(); i10++) {
            strArr[i10] = paths.get(i10).getUri().getPath().split("/");
        }
        int i11 = 0;
        while (true) {
            String[] strArr2 = strArr[0];
            if (i11 >= strArr2.length) {
                return str;
            }
            String str2 = strArr2[i11];
            int i12 = 1;
            boolean z10 = true;
            while (true) {
                if (i12 >= size || !z10) {
                    break;
                }
                String[] strArr3 = strArr[i12];
                if (strArr3.length < i11) {
                    z10 = false;
                    break;
                }
                z10 &= strArr3[i11].equals(str2);
                i12++;
            }
            if (!z10) {
                return str;
            }
            str = str + str2 + "/";
            i11++;
        }
    }

    public static String h(List<File> paths) {
        String str = "";
        if (paths.size() <= 1) {
            if (paths.size() != 1) {
                return "";
            }
            return u(paths.get(0).getAbsolutePath()) + "/";
        }
        int size = paths.size();
        String[][] strArr = new String[size];
        for (int i10 = 0; i10 < paths.size(); i10++) {
            strArr[i10] = paths.get(i10).getAbsolutePath().split("/");
        }
        int i11 = 0;
        while (true) {
            String[] strArr2 = strArr[0];
            if (i11 >= strArr2.length) {
                return str;
            }
            String str2 = strArr2[i11];
            int i12 = 1;
            boolean z10 = true;
            while (true) {
                if (i12 >= size || !z10) {
                    break;
                }
                String[] strArr3 = strArr[i12];
                if (strArr3.length < i11) {
                    z10 = false;
                    break;
                }
                z10 &= strArr3[i11].equals(str2);
                i12++;
            }
            if (!z10) {
                return str;
            }
            str = str + str2 + "/";
            i11++;
        }
    }

    public static String i(List<String> paths) {
        String str = "";
        if (paths.size() <= 1) {
            if (paths.size() != 1) {
                return "";
            }
            return u(paths.get(0)) + "/";
        }
        int size = paths.size();
        String[][] strArr = new String[size];
        for (int i10 = 0; i10 < paths.size(); i10++) {
            strArr[i10] = paths.get(i10).split("/");
        }
        int i11 = 0;
        while (true) {
            String[] strArr2 = strArr[0];
            if (i11 >= strArr2.length) {
                return str;
            }
            String str2 = strArr2[i11];
            int i12 = 1;
            boolean z10 = true;
            while (true) {
                if (i12 >= size || !z10) {
                    break;
                }
                String[] strArr3 = strArr[i12];
                if (strArr3.length < i11) {
                    z10 = false;
                    break;
                }
                z10 &= strArr3[i11].equals(str2);
                i12++;
            }
            if (!z10) {
                return str;
            }
            str = str + str2 + "/";
            i11++;
        }
    }

    public static String j(List<Uri> paths) {
        String str = "";
        if (paths.size() <= 1) {
            if (paths.size() != 1) {
                return "";
            }
            return u(paths.get(0).getPath()) + "/";
        }
        int size = paths.size();
        String[][] strArr = new String[size];
        for (int i10 = 0; i10 < paths.size(); i10++) {
            strArr[i10] = paths.get(i10).getPath().split("/");
        }
        int i11 = 0;
        while (true) {
            String[] strArr2 = strArr[0];
            if (i11 >= strArr2.length) {
                return str;
            }
            String str2 = strArr2[i11];
            int i12 = 1;
            boolean z10 = true;
            while (true) {
                if (i12 >= size || !z10) {
                    break;
                }
                String[] strArr3 = strArr[i12];
                if (strArr3.length < i11) {
                    z10 = false;
                    break;
                }
                z10 &= strArr3[i11].equals(str2);
                i12++;
            }
            if (!z10) {
                return str;
            }
            str = str + str2 + "/";
            i11++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static File k(File metaFolder) {
        File[] listFiles;
        if (!metaFolder.getName().endsWith(".meta")) {
            throw new RuntimeException();
        }
        String O10 = O(metaFolder.getName());
        O(metaFolder.getAbsolutePath());
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(metaFolder.getParent());
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!file2.isDirectory() && O(file2.getName()).equals(O10)) {
                    steppedArrayList.add(file2);
                }
            }
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            File file3 = (File) steppedArrayList.get(i10);
            if (!file3.getName().endsWith(".mtl")) {
                return file3;
            }
        }
        return null;
    }

    public static boolean l(String str, String substr) {
        return str.toLowerCase().endsWith(substr.toLowerCase());
    }

    public static boolean m(Ac.b a10, Ac.b b10) {
        if (a10 == null && b10 == null) {
            return true;
        }
        if (a10 == null || b10 == null) {
            return false;
        }
        return a10.W(b10);
    }

    public static boolean n(String a10, String b10) {
        if (a10 == null) {
            a10 = "";
        }
        if (b10 == null) {
            b10 = "";
        }
        return a10.equals(b10);
    }

    public static String o(String str) {
        if (str != null && !str.isEmpty()) {
            str = str.replace(C16181m.f130232i, "/").replace("//", "/");
            while (str.startsWith("/")) {
                str = str.substring(1);
            }
        }
        return str;
    }

    public static String p(float v10, int decimals) {
        return Nc.b.v0(v10, decimals);
    }

    public static String q(float v10, int decimals, String separator) {
        return Nc.b.v0(v10, decimals).replace(".", separator);
    }

    public static String r(Context context, long bytes) {
        return context != null ? Formatter.formatShortFileSize(context, bytes) : "";
    }

    public static String s(long size) {
        return Formatter.formatShortFileSize(N7.c.t(), size);
    }

    public static String t(String filePath) {
        if (filePath == null) {
            return null;
        }
        String replace = filePath.replace(C16181m.f130232i, "/");
        try {
            return replace.contains(".") ? replace.substring(replace.lastIndexOf(".")).toLowerCase(Locale.ROOT) : replace.toLowerCase(Locale.ROOT);
        } catch (Exception e10) {
            e10.printStackTrace();
            return replace;
        }
    }

    public static String u(String filePath) {
        if (filePath == null) {
            return null;
        }
        String replace = filePath.replace(C16181m.f130232i, "/");
        try {
            return replace.contains("/") ? replace.substring(0, replace.lastIndexOf("/")) : replace;
        } catch (Exception e10) {
            e10.printStackTrace();
            return replace;
        }
    }

    public static String v(String filePath) {
        if (filePath == null) {
            return null;
        }
        String replace = filePath.replace(C16181m.f130232i, "/");
        if (!replace.contains("/")) {
            return replace;
        }
        try {
            return replace.substring(replace.lastIndexOf("/") + 1);
        } catch (Exception unused) {
            return replace;
        }
    }

    public static String w(String filePath, boolean hideExtension) {
        if (filePath == null) {
            return null;
        }
        String v10 = v(filePath.replace(C16181m.f130232i, "/"));
        return (hideExtension && v10.contains(".")) ? v10.substring(0, v10.lastIndexOf(".")) : v10;
    }

    public static String x(String filePath) {
        String replace = filePath.replace(C16181m.f130232i, "/");
        if (replace == null || !replace.contains("/")) {
            return replace;
        }
        String[] split = replace.split("/");
        return split.length > 0 ? split[split.length - 1] : replace;
    }

    public static File y(File f10) {
        return new File(O(f10.getAbsolutePath()) + ".meta/");
    }

    public static File z(String f10) {
        return new File(o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + A(f10)));
    }
}
