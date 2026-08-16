package p000if;

import F2.i;
import com.jme3.app.SimpleApplication;
import com.jme3.app.state.AppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.asset.AssetManager;
import com.jme3.export.Savable;
import com.jme3.export.binary.BinaryExporter;
import com.jme3.input.InputManager;
import com.jme3.input.KeyInput;
import com.jme3.post.FilterPostProcessor;
import com.jme3.post.SceneProcessor;
import com.jme3.renderer.ViewPort;
import com.jme3.util.clone.Cloner;
import java.awt.Color;
import java.awt.Desktop;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.imageio.ImageIO;
import jf.b;
import jf.m;
import jf.n;
import jf.r;

public final class C13710f {

    public static final Logger f92110a = Logger.getLogger(C13710f.class.getName());

    public static FileHandler f92111b = null;

    public static final boolean f92112c = false;

    public static boolean a() {
        return false;
    }

    public static boolean b(String str) {
        C13702E.t(str, "start uri");
        if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
            try {
                Desktop.getDesktop().browse(new URI(str));
                return true;
            } catch (IOException | URISyntaxException unused) {
            }
        }
        return false;
    }

    public static <T> T c(T t10) {
        if (t10 == null) {
            return null;
        }
        return ((t10 instanceof Cloneable) || t10.getClass().isArray()) ? (T) Cloner.deepClone(t10) : ((t10 instanceof Boolean) || (t10 instanceof Byte) || (t10 instanceof Character) || (t10 instanceof Double) || (t10 instanceof Enum) || (t10 instanceof Float) || (t10 instanceof Integer) || (t10 instanceof b) || (t10 instanceof Long) || (t10 instanceof m) || (t10 instanceof Short) || (t10 instanceof String) || (t10 instanceof n) || (t10 instanceof r)) ? t10 : (T) Cloner.deepClone(t10);
    }

    public static void d(String str) {
        try {
            if (Preferences.userRoot().nodeExists(str)) {
                Preferences.userRoot().node(str).removeNode();
                f92110a.log(Level.WARNING, "The stored settings for \"{0}\" were deleted.", str);
            } else {
                f92110a.log(Level.WARNING, "No stored settings were found for \"{0}\".", str);
            }
        } catch (BackingStoreException unused) {
            f92110a.log(Level.SEVERE, "The stored settings for \"{0}\" are inaccessible.", str);
        }
    }

    public static <T extends AppState> void e(AppStateManager appStateManager, Class<T> cls) {
        C13702E.t(cls, "class");
        AppState state = appStateManager.getState(cls);
        while (state != null) {
            appStateManager.detach(state);
            state = appStateManager.getState(cls);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Map<String, File> f() {
        TreeMap treeMap = new TreeMap();
        for (File file : File.listRoots()) {
            if (file.isDirectory()) {
            }
        }
        return treeMap;
    }

    public static <T> T g(Collection<T> collection) {
        if (collection.isEmpty()) {
            return null;
        }
        return (T) collection.toArray(new Object[0])[0];
    }

    public static String h(String str) {
        C13702E.j(str, "input path");
        return i(new File(str));
    }

    public static String i(File file) {
        String absolutePath;
        C13702E.t(file, "input file");
        try {
            absolutePath = file.getCanonicalPath();
        } catch (IOException unused) {
            absolutePath = file.getAbsolutePath();
        }
        return absolutePath.replaceAll("\\\\", "/");
    }

    public static FileHandler j() {
        if (f92111b == null) {
            Calendar calendar = Calendar.getInstance();
            String str = String.format("%02d%02d%02d", Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12)), Integer.valueOf(calendar.get(13))) + ".txt";
            try {
                f92111b = new FileHandler(str);
                f92111b.setFormatter(new SimpleFormatter());
                String i10 = i(new File(str));
                System.out.println("logging to file " + C13724t.s(i10));
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        return f92111b;
    }

    public static FilterPostProcessor k(ViewPort viewPort, AssetManager assetManager, int i10) {
        C13702E.t(viewPort, "viewport");
        C13702E.t(assetManager, "asset manager");
        C13702E.i(i10, "number of samples", 0, 16);
        Iterator<SceneProcessor> it = viewPort.getProcessors().iterator();
        while (it.hasNext()) {
            SceneProcessor next = it.next();
            if (next instanceof FilterPostProcessor) {
                return (FilterPostProcessor) next;
            }
        }
        FilterPostProcessor filterPostProcessor = new FilterPostProcessor(assetManager);
        if (i10 > 0) {
            filterPostProcessor.setNumSamples(i10);
        }
        viewPort.addProcessor(filterPostProcessor);
        return filterPostProcessor;
    }

    public static KeyInput l(InputManager inputManager) {
        try {
            Field declaredField = InputManager.class.getDeclaredField("keys");
            declaredField.setAccessible(true);
            try {
                return (KeyInput) declaredField.get(inputManager);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static boolean m(String str) {
        try {
            return Preferences.userRoot().nodeExists(str);
        } catch (BackingStoreException unused) {
            return false;
        }
    }

    public static String n(String str) {
        C13702E.j(str, "file name");
        return i(new File(System.getProperty("user.home"), str));
    }

    public static List<String> o(String str, String str2) {
        C13702E.j(str, "zip path");
        C13702E.t(str2, "name prefix");
        ArrayList arrayList = new ArrayList(90);
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                ZipInputStream zipInputStream = new ZipInputStream(fileInputStream);
                try {
                    for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                        String str3 = "/" + nextEntry.getName();
                        if (str3.startsWith(str2)) {
                            arrayList.add(str3);
                        }
                    }
                    zipInputStream.close();
                    fileInputStream.close();
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException unused) {
        }
        return arrayList;
    }

    public static String p(String str) {
        InputStream resourceAsStream = C13710f.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new RuntimeException("resource not found:  " + C13724t.s(str));
        }
        Scanner scanner = new Scanner(resourceAsStream, StandardCharsets.UTF_8.name());
        try {
            scanner.useDelimiter("\\Z");
            String next = scanner.next();
            scanner.close();
            return next;
        } catch (Throwable th2) {
            try {
                scanner.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0013. Please report as an issue. */
    public static void q(SimpleApplication simpleApplication, String... strArr) {
        Level level = Level.WARNING;
        boolean z10 = false;
        for (String str : strArr) {
            str.hashCode();
            char c10 = '\uffff';
            switch (str.hashCode()) {
                case -1116486328:
                    if (str.equals("--showSettingsDialog")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 1510:
                    if (str.equals("-s")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1513:
                    if (str.equals("-v")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1737088994:
                    if (str.equals("--verbose")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                    z10 = true;
                    break;
                case 2:
                case 3:
                    level = Level.INFO;
                    break;
                default:
                    f92110a.log(Level.INFO, "Unknown command-line argument {0} skipped", C13724t.s(str));
                    break;
            }
        }
        s(level);
        simpleApplication.setShowSettings(z10);
    }

    public static void r(Graphics2D graphics2D, int i10, int i11, float f10, float f11) {
        Rectangle bounds = graphics2D.getDeviceConfiguration().getBounds();
        C13702E.i(i10, "X coordinate", 0, bounds.width - 1);
        C13702E.i(i11, "Y coordinate", 0, bounds.height - 1);
        C13702E.f(f10, "brightness");
        C13702E.f(f11, "opacity");
        graphics2D.setColor(new Color(f10, f10, f10, f11));
        graphics2D.fillRect(i10, i11, 1, 1);
    }

    public static void s(Level level) {
        C13702E.t(level, "level");
        Logger.getLogger("").setLevel(level);
    }

    public static String t() {
        return "Heart Heart master $Rev: 9.3.0 $";
    }

    public static String u() {
        String[] split = t().split("\\s+");
        return String.format("%s %s", split[2], split[4]);
    }

    public static void v(String str, RenderedImage renderedImage) throws IOException {
        C13702E.j(str, "path");
        C13702E.t(renderedImage, i.f6419n);
        String lowerCase = str.toLowerCase();
        String str2 = lowerCase.endsWith(".bmp") ? "bmp" : lowerCase.endsWith(".gif") ? "gif" : (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) ? "jpeg" : "png";
        if (renderedImage.getColorModel().hasAlpha() && (str2.equals("bmp") || str2.equals("jpeg"))) {
            f92110a.log(Level.SEVERE, "unable to write alpha channel to a {0}", str2.toUpperCase());
        }
        String s10 = C13724t.s(str);
        File file = new File(str);
        try {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("Unable to create " + C13724t.s(parentFile.toString()));
            }
            if (!ImageIO.write(renderedImage, str2, file)) {
                f92110a.log(Level.SEVERE, "write to {0} failed; no writer for {1} format", new Object[]{s10, C13724t.s(str2)});
            }
            Logger logger = f92110a;
            Level level = Level.INFO;
            if (logger.isLoggable(level)) {
                logger.log(level, "wrote {0}-by-{1} texture to {2}", new Object[]{Integer.valueOf(renderedImage.getWidth()), Integer.valueOf(renderedImage.getHeight()), s10});
            }
        } catch (IOException e10) {
            Logger logger2 = f92110a;
            Level level2 = Level.SEVERE;
            logger2.log(level2, "write to {0} failed", s10);
            if (file.delete()) {
                Level level3 = Level.INFO;
                if (logger2.isLoggable(level3)) {
                    logger2.log(level3, "deleted file {0}", s10);
                }
            } else {
                logger2.log(level2, "deletion of {0} failed", s10);
            }
            throw e10;
        }
    }

    public static void w(String str, Savable savable) {
        C13702E.j(str, "file path");
        C13702E.t(savable, "savable");
        try {
            BinaryExporter.getInstance().save(savable, new File(str));
            Logger logger = f92110a;
            Level level = Level.INFO;
            if (logger.isLoggable(level)) {
                logger.log(level, "wrote version-{0} binary to {1}", new Object[]{3, C13724t.s(str)});
            }
        } catch (IOException e10) {
            f92110a.log(Level.SEVERE, "write to {0} failed", C13724t.s(str));
            throw new RuntimeException(e10);
        }
    }
}
