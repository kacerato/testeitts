package X7;

import Bg.j;
import Ic.C2633l;
import Ic.C2635n;
import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.InstanceCreator;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.Utils.DateSerializer;
import com.itsmagic.engine.Activities.Editor.Utils.C;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import ug.C15608a;
import zg.k;

public class a {

    public static Gson f28024a;

    public static final InstanceCreator<List> f28025b = new C0781a();

    public static final InstanceCreator<Collection> f28026c = new b();

    public static final InstanceCreator<Iterable> f28027d = new c();

    public class C0781a implements InstanceCreator<List> {
        @Override
        public List createInstance(Type type) {
            return new SteppedArrayList();
        }
    }

    public class b implements InstanceCreator<Collection> {
        @Override
        public Collection createInstance(Type type) {
            return new SteppedArrayList();
        }
    }

    public class c implements InstanceCreator<Iterable> {
        @Override
        public Iterable createInstance(Type type) {
            return new SteppedArrayList();
        }
    }

    public static String A(String folder, String fileName) {
        return B(folder, fileName, N7.c.t());
    }

    public static String B(String folder, String fileName, Context context) {
        return z(folder + "/" + fileName, context);
    }

    public static String C(String folder, String fileName, Context context) {
        StringBuffer stringBuffer = new StringBuffer("");
        if (folder.contains("@@ASSET@@")) {
            stringBuffer = v(folder.replace("@@ASSET@@", "") + "/" + fileName, context);
        } else {
            try {
                File file = new File(W7.b.f27306f.f2458a.q(context) + "/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, folder);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File file3 = new File(file2, fileName);
                if (!file3.exists()) {
                    String F10 = F(folder);
                    String F11 = F(fileName);
                    if (F10 != null || F11 != null) {
                        if (F10 != null) {
                            folder = F10;
                        }
                        File file4 = new File(file, folder);
                        if (F11 != null) {
                            fileName = F11;
                        }
                        File file5 = new File(file4, fileName);
                        if (file5.exists()) {
                            file3 = file5;
                        }
                    }
                }
                if (file3.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file3);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                            stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                            byteArrayOutputStream.close();
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
                }
            } catch (IOException unused) {
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Finally extract failed */
    public static String D(File zipFile, String file) {
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                j Q10 = c15608a.Q(file);
                if (Q10 != null) {
                    if (Q10.s()) {
                    }
                    if (Q10 != null || Q10.s()) {
                        c15608a.close();
                        return "";
                    }
                    k S10 = c15608a.S(Q10);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int read = S10.read(bArr);
                                if (read == -1) {
                                    String c10 = C2635n.c(byteArrayOutputStream.toByteArray());
                                    byteArrayOutputStream.close();
                                    S10.close();
                                    c15608a.close();
                                    return c10;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        } finally {
                        }
                    } finally {
                    }
                }
                String F10 = F(file);
                if (F10 != null) {
                    Q10 = c15608a.Q(F10);
                }
                if (Q10 != null) {
                }
                c15608a.close();
                return "";
            } catch (Throwable th2) {
                try {
                    c15608a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static InputStream E(AssetManager assetManager, String filePath) throws IOException {
        try {
            return assetManager.open(filePath);
        } catch (FileNotFoundException e10) {
            String F10 = F(filePath);
            if (F10 != null) {
                try {
                    return assetManager.open(F10);
                } catch (FileNotFoundException unused) {
                    throw e10;
                }
            }
            throw e10;
        }
    }

    public static String F(String path) {
        String V10;
        if (path == null || (V10 = Tc.b.V(path)) == null || V10.equals(path)) {
            return null;
        }
        return V10;
    }

    public static boolean a(String file, String json) {
        if (C2633l.b(file, ".java")) {
            throw new RuntimeException("cannot gzip codes");
        }
        return c(file, json, N7.c.t(), true);
    }

    public static boolean b(String file, String json, Context context) {
        return c(file, json, context, true);
    }

    public static boolean c(String filePath, String json, Context context, boolean override) {
        if (filePath == null || filePath.trim().isEmpty()) {
            throw new NullPointerException("Path can't be empty or null");
        }
        try {
            String o10 = Tc.b.o(filePath.trim());
            if (o10.startsWith("storage/emulated/0")) {
                o10 = "/" + o10;
                try {
                    o10 = o10.substring(o10.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (o10.startsWith("/storage/emulated/0")) {
                try {
                    o10 = o10.substring(o10.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/"));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            if (!o10.startsWith(Context.STORAGE_SERVICE) && !o10.startsWith("/storage")) {
                String o11 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + o10);
                File file = new File(Tc.b.u(o11));
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(o11);
                if (file2.exists()) {
                    if (!override) {
                        return false;
                    }
                    file2.delete();
                }
                file2.createNewFile();
                if (!file2.exists()) {
                    System.out.println("could not export file " + file2.getAbsolutePath() + " not exist!");
                    return false;
                }
                if (json == null) {
                    json = "";
                }
                byte[] a10 = C2635n.a(json);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    try {
                        fileOutputStream.write(a10);
                        fileOutputStream.close();
                        return true;
                    } finally {
                    }
                } catch (IOException e12) {
                    e12.printStackTrace();
                    return true;
                }
            }
            Log.e("STORAGE DETECTED", "Storage path detected on class exporter line 139:" + o10);
            C.a();
            return false;
        } catch (IOException e13) {
            System.out.println("Exception could not export file " + e13.toString());
            e13.printStackTrace();
            return false;
        }
    }

    public static boolean d(String folder, String fileName, String json) {
        return f(folder, fileName, json, N7.c.t(), true);
    }

    public static boolean e(String folder, String fileName, String json, Context context) {
        return f(folder, fileName, json, context, true);
    }

    public static boolean f(String folder, String fileName, String json, Context context, boolean override) {
        try {
            if (folder.startsWith("storage/emulated/0")) {
                String str = "/" + folder;
                folder = str.substring(str.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/"));
            }
            if (folder.startsWith("/storage/emulated/0")) {
                try {
                    folder = folder.substring(folder.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, Tc.b.o(folder));
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2, fileName);
            if (file3.exists()) {
                if (!override) {
                    return false;
                }
                file3.delete();
            }
            file3.createNewFile();
            if (json == null) {
                json = "";
            }
            byte[] a10 = C2635n.a(json);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    fileOutputStream.write(a10);
                    fileOutputStream.close();
                    return true;
                } finally {
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                return true;
            }
        } catch (IOException e12) {
            e12.printStackTrace();
            return false;
        }
    }

    public static boolean g(String folder, String fileName, String json, boolean override) {
        return f(folder, fileName, json, N7.c.t(), override);
    }

    public static boolean h(File file, String json) {
        return j(file.getAbsolutePath(), json);
    }

    public static boolean i(File filePath, String json) {
        return j(filePath.getAbsolutePath(), json);
    }

    public static boolean j(String filePath, String json) {
        try {
            String replace = filePath.replace("//", "/");
            File file = new File(Tc.b.u(replace));
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(replace);
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
            if (json == null) {
                json = "";
            }
            byte[] a10 = C2635n.a(json);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(a10);
                    fileOutputStream.close();
                    return true;
                } finally {
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return true;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean k(String folder, String fileName, String json) {
        try {
            File file = new File(Tc.b.o(folder));
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, fileName);
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
            if (json == null) {
                json = "";
            }
            byte[] a10 = C2635n.a(json);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(a10);
                    fileOutputStream.close();
                    return true;
                } finally {
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return true;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean l(String folder, String fileName, String json, Context context) {
        try {
            File file = new File(W7.b.f27306f.f2458a.q(context) + "/");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, folder);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2, fileName);
            file3.createNewFile();
            if (!file3.exists()) {
                System.out.println("Failed to export settings file " + fileName + " because the file doesn't exist");
                return false;
            }
            if (json == null) {
                json = "";
            }
            byte[] a10 = C2635n.a(json);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    fileOutputStream.write(a10);
                    fileOutputStream.close();
                    return true;
                } finally {
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return true;
            }
        } catch (IOException e11) {
            System.out.println("Exception could not export file " + e11.toString());
            e11.printStackTrace();
            return false;
        }
    }

    public static Gson m() {
        if (f28024a == null) {
            f28024a = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().serializeSpecialFloatingPointValues().registerTypeAdapter(List.class, f28025b).registerTypeAdapter(Collection.class, f28026c).registerTypeAdapter(Iterable.class, f28027d).registerTypeAdapter(Date.class, new DateSerializer()).registerTypeAdapter(Ac.b.class, new OHStringSerializer()).create();
        }
        return f28024a;
    }

    public static FileOutputStream n(String filePath, Context context) throws IOException {
        String o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + filePath);
        File file = new File(Tc.b.u(o10));
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(o10);
        if (file2.exists()) {
            file2.delete();
        }
        file2.createNewFile();
        if (file2.exists()) {
            return new FileOutputStream(file2);
        }
        return null;
    }

    public static InputStream o(String filePath) {
        return p(filePath, N7.c.t());
    }

    public static InputStream p(String filePath, Context context) {
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        }
        String o10 = Tc.b.o(filePath);
        if (o10 == null) {
            throw new NullPointerException("filepath can't be null");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.S(context) == null || com.itsmagic.engine.Core.Components.ProjectController.a.S(context).contains("@@ASSET@@") || o10.contains("@@ASSET@@")) {
            try {
                AssetManager assets = context.getAssets();
                if (assets == null) {
                    return null;
                }
                String replace = o10.replace("@@ASSET@@", "");
                while (replace.startsWith("/")) {
                    replace = replace.substring(1);
                }
                String replace2 = replace.replace("//", "/");
                try {
                    return E(assets, replace2);
                } catch (FileNotFoundException e10) {
                    try {
                        return E(assets, "compiled/" + replace2);
                    } catch (FileNotFoundException e11) {
                        e10.printStackTrace();
                        System.out.println("TRYING WIL COMPILED FIRST");
                        e11.printStackTrace();
                        throw e10;
                    }
                }
            } catch (IOException e12) {
                System.out.println("Failed to load asset file:" + o10);
                e12.printStackTrace();
            }
        } else {
            try {
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + o10;
                if (str.startsWith("/")) {
                    str = str.substring(1);
                }
                String replace3 = str.replace("//", "/");
                File file = new File(replace3);
                if (file.exists()) {
                    return new FileInputStream(file);
                }
                String F10 = F(replace3);
                if (F10 != null) {
                    File file2 = new File(F10);
                    if (file2.exists()) {
                        return new FileInputStream(file2);
                    }
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        }
        return null;
    }

    public static Gson q() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().serializeSpecialFloatingPointValues().create();
    }

    public static String r(String filePath) {
        return s(filePath, N7.c.t());
    }

    public static String s(String filePath, Context context) {
        String replace;
        ByteArrayOutputStream byteArrayOutputStream;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        }
        String o10 = Tc.b.o(filePath);
        if (o10 == null || o10.isEmpty()) {
            throw new NullPointerException("filepath can't be null");
        }
        StringBuffer stringBuffer = new StringBuffer("");
        if (com.itsmagic.engine.Core.Components.ProjectController.a.S(context) == null || !com.itsmagic.engine.Core.Components.ProjectController.a.S(context).contains("@@ASSET@@")) {
            if (o10.contains("@@ASSET@@")) {
                String replace2 = o10.replace("@@ASSET@@", "").replace("//", "/");
                while (replace2.startsWith("/")) {
                    replace2 = replace2.substring(1);
                }
                stringBuffer = v(replace2, context);
            } else {
                try {
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + o10;
                    if (str.startsWith("/")) {
                        str = str.substring(1);
                    }
                    replace = str.replace("//", "/");
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                if (replace.contains(".itjar/")) {
                    String substring = replace.substring(0, replace.indexOf(".itjar/") + 6);
                    String substring2 = replace.substring(replace.indexOf(".itjar/") + 6);
                    File file = new File(substring);
                    String D10 = D(file, substring2);
                    if ((D10 == null || D10.isEmpty()) && !file.exists()) {
                        String F10 = F(substring);
                        String F11 = F(substring2);
                        if (F10 != null || F11 != null) {
                            if (F10 != null) {
                                file = new File(F10);
                            }
                            if (F11 != null) {
                                substring2 = F11;
                            }
                            String D11 = D(file, substring2);
                            if (D11 != null) {
                                return D11;
                            }
                        }
                    }
                    return D10;
                }
                File file2 = new File(replace);
                if (file2.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                            stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                            byteArrayOutputStream.close();
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
                } else {
                    String F12 = F(replace);
                    if (F12 == null) {
                        return null;
                    }
                    File file3 = new File(F12);
                    if (!file3.exists()) {
                        return null;
                    }
                    FileInputStream fileInputStream2 = new FileInputStream(file3);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr2 = new byte[8192];
                            while (true) {
                                int read2 = fileInputStream2.read(bArr2);
                                if (read2 == -1) {
                                    stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                                    String stringBuffer2 = stringBuffer.toString();
                                    byteArrayOutputStream.close();
                                    fileInputStream2.close();
                                    return stringBuffer2;
                                }
                                byteArrayOutputStream.write(bArr2, 0, read2);
                            }
                        } finally {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th4) {
                                th.addSuppressed(th4);
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            fileInputStream2.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                e10.printStackTrace();
            }
        } else if (o10.contains("@@ASSET@@")) {
            String replace3 = o10.replace("@@ASSET@@", "").replace("//", "/");
            while (replace3.startsWith("/")) {
                replace3 = replace3.substring(1);
            }
            stringBuffer = v(replace3, context);
        } else {
            stringBuffer = v((com.itsmagic.engine.Core.Components.ProjectController.a.S(context).replace("@@ASSET@@", "") + "/" + o10).substring(1).replace("//", "/"), context);
        }
        return stringBuffer.toString();
    }

    public static String t(String folder, String filename) {
        return u(folder, filename, N7.c.t());
    }

    public static String u(String folder, String filename, Context context) {
        return s(folder + "/" + filename, context);
    }

    public static StringBuffer v(String file, Context context) {
        InputStream E10;
        FileOutputStream fileOutputStream;
        if (file.contains(".itjar/")) {
            StringBuffer stringBuffer = new StringBuffer("");
            String substring = file.substring(0, file.indexOf(".itjar/") + 6);
            String substring2 = file.substring(file.indexOf(".itjar/") + 6);
            try {
                File file2 = new File(W7.b.f27306f.f2458a.f() + "/assetZips/" + Tc.b.v(substring));
                if (!file2.exists()) {
                    AssetManager assets = context.getAssets();
                    E10 = assets != null ? E(assets, substring) : null;
                    file2.createNewFile();
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = E10.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                stringBuffer.append(D(file2, substring2));
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return stringBuffer;
        }
        if (!file.contains(".zip/")) {
            StringBuffer stringBuffer2 = new StringBuffer("");
            try {
                AssetManager assets2 = context.getAssets();
                E10 = assets2 != null ? E(assets2, file) : null;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr2 = new byte[8192];
                    while (true) {
                        int read2 = E10.read(bArr2);
                        if (read2 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read2);
                    }
                    stringBuffer2.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                    byteArrayOutputStream.close();
                    E10.close();
                } finally {
                }
            } catch (FileNotFoundException unused) {
                System.out.println("Assets file not found: " + file);
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            return stringBuffer2;
        }
        StringBuffer stringBuffer3 = new StringBuffer("");
        String substring3 = file.substring(0, file.indexOf(".zip/") + 4);
        String substring4 = file.substring(file.indexOf(".zip/") + 4);
        try {
            File file3 = new File(W7.b.f27306f.f2458a.f() + "/assetZips/" + Tc.b.v(substring3));
            if (!file3.exists()) {
                AssetManager assets3 = context.getAssets();
                E10 = assets3 != null ? E(assets3, substring3) : null;
                file3.createNewFile();
                fileOutputStream = new FileOutputStream(file3);
                try {
                    byte[] bArr3 = new byte[1024];
                    while (true) {
                        int read3 = E10.read(bArr3);
                        if (read3 <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr3, 0, read3);
                    }
                    fileOutputStream.close();
                } finally {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
            }
            stringBuffer3.append(D(file3, substring4));
        } catch (IOException e12) {
            e12.printStackTrace();
        }
        return stringBuffer3;
    }

    public static String w(InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder("");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    sb2.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                    byteArrayOutputStream.close();
                    return sb2.toString();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static String x(File file) {
        return y(file.getAbsolutePath());
    }

    public static String y(String filePath) {
        return z(filePath, N7.c.t());
    }

    public static String z(String filePath, Context context) {
        File file;
        ByteArrayOutputStream byteArrayOutputStream;
        if (filePath.contains("//")) {
            filePath = filePath.replace("//", "/");
        }
        if (filePath.contains(".itjar/")) {
            String substring = filePath.substring(0, filePath.indexOf(".itjar/") + 6);
            String substring2 = filePath.substring(filePath.indexOf(".itjar/") + 6);
            File file2 = new File(substring);
            String D10 = D(file2, substring2);
            if ((D10 == null || D10.isEmpty()) && !file2.exists()) {
                String F10 = F(substring);
                String F11 = F(substring2);
                if (F10 != null || F11 != null) {
                    if (F10 != null) {
                        file2 = new File(F10);
                    }
                    if (F11 != null) {
                        substring2 = F11;
                    }
                    String D11 = D(file2, substring2);
                    if (D11 != null) {
                        return D11;
                    }
                }
            }
            return D10;
        }
        StringBuffer stringBuffer = new StringBuffer("");
        try {
            file = new File(filePath);
        } catch (IOException unused) {
        }
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return stringBuffer.toString();
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
        }
        String F12 = F(filePath);
        if (F12 != null) {
            File file3 = new File(F12);
            if (file3.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(file3);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr2 = new byte[8192];
                        while (true) {
                            int read2 = fileInputStream2.read(bArr2);
                            if (read2 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr2, 0, read2);
                        }
                        stringBuffer.append(C2635n.c(byteArrayOutputStream.toByteArray()));
                        byteArrayOutputStream.close();
                        fileInputStream2.close();
                    } finally {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th4) {
                            th.addSuppressed(th4);
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        }
        return stringBuffer.toString();
    }
}
