package D3;

import Ic.C2633l;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.IOException;
import java.text.Normalizer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavaElement;

public final class a {

    public static final String[] f4814a = {".itsmbp", ".mp4|.3gp|.webm", ".ivo", ".imv", ".imvs", ".rte", ".nse", ".nm", ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", ".cbm", ".cubet", ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf", ".texture", ".sound", ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv", ".tif", ".tga", ".bin", ".class", ".dex", ".jar", ".itjar", ".zip", ".pdf", ".doc", ".docx", ".ttf|.otf", ".jks", ".mwf"};

    public class C0084a implements Comparator<File> {
        @Override
        public int compare(File a10, File b10) {
            return a10.getPath().compareToIgnoreCase(b10.getPath());
        }
    }

    public class b implements Comparator<File> {
        @Override
        public int compare(File a10, File b10) {
            if (a10.isDirectory() && !b10.isDirectory()) {
                return -1;
            }
            if (a10.isDirectory() || !b10.isDirectory()) {
                return a10.getName().compareToIgnoreCase(b10.getName());
            }
            return 1;
        }
    }

    public static void a(File projectRoot, File current, String fileName, boolean caseInsensitive, boolean contains, List<File> output) throws IOException {
        if (current == null || !current.exists()) {
            return;
        }
        if (!current.isDirectory()) {
            if (h(current.getName(), fileName, caseInsensitive, contains)) {
                output.add(current.getCanonicalFile());
                return;
            }
            return;
        }
        File[] listFiles = current.listFiles();
        if (listFiles == null) {
            return;
        }
        Arrays.sort(listFiles, new b());
        for (File file : listFiles) {
            a(projectRoot, file, fileName, caseInsensitive, contains, output);
        }
    }

    public static List<File> b(String fileName, boolean caseInsensitive, boolean contains) throws IOException {
        if (fileName == null || fileName.trim().isEmpty()) {
            throw new IOException("Name cannot be empty");
        }
        File c10 = c();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        a(c10, c10, fileName.trim(), caseInsensitive, contains, steppedArrayList);
        steppedArrayList.sort(new C0084a());
        return steppedArrayList;
    }

    public static File c() throws IOException {
        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        if (R10 == null || R10.trim().isEmpty()) {
            throw new IOException("No project is currently loaded");
        }
        return new File(R10).getCanonicalFile();
    }

    public static boolean d(String value) {
        String j10;
        return value != null && (j10 = j(value)) != null && j10.length() > 1 && j10.startsWith(".") && j10.indexOf(42) < 0 && j10.indexOf(63) < 0;
    }

    public static boolean e(File file) {
        if (file == null) {
            return true;
        }
        for (String str : f4814a) {
            if (C2633l.a(file, str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(String value) {
        return value != null && (value.indexOf(42) >= 0 || value.indexOf(63) >= 0);
    }

    public static boolean g(String candidateName, String extension, boolean caseInsensitive) {
        String j10 = j(candidateName);
        String j11 = j(extension);
        if (j10 == null || j11 == null) {
            return false;
        }
        if (caseInsensitive) {
            Locale locale = Locale.ROOT;
            j10 = j10.toLowerCase(locale);
            j11 = j11.toLowerCase(locale);
        }
        return j10.endsWith(j11);
    }

    public static boolean h(String candidateName, String fileName, boolean caseInsensitive, boolean contains) {
        if (candidateName == null || fileName == null) {
            return false;
        }
        if (f(fileName)) {
            return i(candidateName, fileName, caseInsensitive);
        }
        if (d(fileName)) {
            return g(candidateName, fileName, caseInsensitive);
        }
        String j10 = j(m(candidateName));
        String j11 = j(m(fileName));
        if (caseInsensitive) {
            Locale locale = Locale.ROOT;
            j10 = j10.toLowerCase(locale);
            j11 = j11.toLowerCase(locale);
        }
        return contains ? j10.contains(j11) : j10.equals(j11);
    }

    public static boolean i(String candidateName, String fileName, boolean caseInsensitive) {
        String j10 = j(candidateName);
        String j11 = j(fileName);
        if (caseInsensitive) {
            Locale locale = Locale.ROOT;
            j10 = j10.toLowerCase(locale);
            j11 = j11.toLowerCase(locale);
        }
        return Pattern.matches(p(j11), j10);
    }

    public static String j(String value) {
        if (value == null) {
            return null;
        }
        return Normalizer.normalize(value, Normalizer.Form.NFC).replace("\u200b", "").replace("\u200c", "").replace("\u200d", "").replace("\ufeff", "").trim();
    }

    public static File k(String relativePath) throws IOException {
        if (relativePath == null || relativePath.trim().isEmpty()) {
            throw new IOException("Path cannot be empty");
        }
        File c10 = c();
        File canonicalFile = new File(c10, Tc.b.o(relativePath.trim())).getCanonicalFile();
        if (canonicalFile.getPath().startsWith(c10.getPath())) {
            return canonicalFile;
        }
        throw new IOException("Invalid path");
    }

    public static File l(String relativePath) throws IOException {
        if (relativePath == null || relativePath.trim().isEmpty()) {
            throw new IOException("Path cannot be empty");
        }
        File c10 = c();
        File canonicalFile = new File(c10, Tc.b.o(relativePath.trim())).getCanonicalFile();
        if (canonicalFile.getPath().startsWith(c10.getPath())) {
            return canonicalFile;
        }
        throw new IOException("Invalid path");
    }

    public static String m(String value) {
        if (value == null) {
            return null;
        }
        int lastIndexOf = value.lastIndexOf(46);
        return (lastIndexOf <= 0 || lastIndexOf == value.length() + (-1)) ? value : value.substring(0, lastIndexOf);
    }

    public static String n(File file) throws IOException {
        if (file == null) {
            throw new IOException("File cannot be null");
        }
        File c10 = c();
        File canonicalFile = file.getCanonicalFile();
        String path = c10.getPath();
        String path2 = canonicalFile.getPath();
        if (!path2.startsWith(path)) {
            throw new IOException("Invalid path");
        }
        String substring = path2.substring(path.length());
        if (substring.startsWith(File.separator)) {
            substring = substring.substring(1);
        }
        return substring.isEmpty() ? "." : Tc.b.o(substring);
    }

    public static String o() {
        StringBuilder sb2 = new StringBuilder();
        for (String str : f4814a) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static String p(String value) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('^');
        for (int i10 = 0; i10 < value.length(); i10++) {
            char charAt = value.charAt(i10);
            if (charAt == '*') {
                sb2.append(".*");
            } else if (charAt == '?') {
                sb2.append('.');
            } else {
                if ("\\.[]{}()+-^$|".indexOf(charAt) >= 0) {
                    sb2.append(JavaElement.JEM_ESCAPE);
                }
                sb2.append(charAt);
            }
        }
        sb2.append('$');
        return sb2.toString();
    }
}
