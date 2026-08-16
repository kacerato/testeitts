package id;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.World.World;
import d8.j;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n4.C14350b;
import nd.e;

public class C13696a {

    public class RunnableC1775a implements Runnable {

        public final String f92052b;

        public final Context f92053c;

        public final d f92054d;

        public class RunnableC1776a implements Runnable {
            public RunnableC1776a() {
            }

            @Override
            public void run() {
                N7.c.D().B0(new C14350b());
                RunnableC1775a.this.f92054d.b();
            }
        }

        public RunnableC1775a(final String val$project, final Context val$context, final d val$listener) {
            this.f92052b = val$project;
            this.f92053c = val$context;
            this.f92054d = val$listener;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x0097, code lost:
        
            if (r2 == null) goto L69;
         */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            BufferedInputStream bufferedInputStream;
            BufferedOutputStream bufferedOutputStream;
            Exception e10;
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f92052b) + "/javaRTImportPack.zip";
            try {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedInputStream = new BufferedInputStream(this.f92053c.getAssets().open("Editor/javaLibs.zip"));
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
                    try {
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, 8192);
                                if (read > 0) {
                                    bufferedOutputStream.write(bArr, 0, read);
                                } else {
                                    try {
                                        break;
                                    } catch (Error | Exception unused) {
                                    }
                                }
                            }
                            bufferedOutputStream.close();
                        } catch (Exception e12) {
                            e10 = e12;
                            System.err.println("Error while copying from assets: " + e10.getMessage());
                            e10.printStackTrace();
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (Error | Exception unused2) {
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream2 = bufferedOutputStream;
                        if (bufferedOutputStream2 != null) {
                            try {
                                bufferedOutputStream2.close();
                            } catch (Error | Exception unused3) {
                            }
                        }
                        if (bufferedInputStream != null) {
                            throw th;
                        }
                        try {
                            bufferedInputStream.close();
                            throw th;
                        } catch (Error | Exception unused4) {
                            throw th;
                        }
                    }
                } catch (Exception e13) {
                    bufferedOutputStream = null;
                    e10 = e13;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedOutputStream2 != null) {
                    }
                    if (bufferedInputStream != null) {
                    }
                }
            } catch (Exception e14) {
                bufferedOutputStream = null;
                e10 = e14;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
            }
            try {
                bufferedInputStream.close();
            } catch (Error | Exception unused5) {
                try {
                    e.n(str, com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f92052b) + "/");
                    new File(str).delete();
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
                N7.c.j0(new RunnableC1776a());
            }
        }
    }

    public interface b {
        void a();

        void b();

        void onSuccess();
    }

    public interface c {
        void a();

        void b();

        void c();
    }

    public interface d {
        void b();
    }

    public static boolean a(File sourceLocation, File targetLocation) {
        return b(sourceLocation, targetLocation, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(File sourceLocation, File targetLocation, b listener) {
        FileOutputStream fileOutputStream;
        if (sourceLocation == null || targetLocation == null) {
            if (listener != null) {
                listener.a();
            }
            return false;
        }
        try {
            String canonicalPath = sourceLocation.getCanonicalPath();
            String canonicalPath2 = targetLocation.getCanonicalPath();
            if (canonicalPath.equals(canonicalPath2)) {
                if (listener != null) {
                    listener.a();
                }
                return false;
            }
            if (sourceLocation.isDirectory()) {
                String str = File.separator;
                if (!canonicalPath.endsWith(str)) {
                    canonicalPath = canonicalPath + str;
                }
                if (canonicalPath2.startsWith(canonicalPath)) {
                    if (listener != null) {
                        listener.a();
                    }
                    return false;
                }
            }
            if (!sourceLocation.exists()) {
                if (listener != null) {
                    listener.a();
                }
                return false;
            }
            if (sourceLocation.isDirectory()) {
                if (!targetLocation.exists() && !targetLocation.mkdirs()) {
                    if (listener != null) {
                        listener.a();
                    }
                    return false;
                }
                String[] list = sourceLocation.list();
                if (list != null) {
                    for (int i10 = 0; i10 < list.length; i10++) {
                        b(new File(sourceLocation, list[i10]), new File(targetLocation, list[i10]), listener);
                    }
                }
                return true;
            }
            FileInputStream fileInputStream = null;
            try {
                File parentFile = targetLocation.getParentFile();
                if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                    if (listener != null) {
                        listener.a();
                    }
                    return false;
                }
                FileInputStream fileInputStream2 = new FileInputStream(sourceLocation);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(targetLocation);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        }
                        if (listener != null) {
                            listener.b();
                        }
                        try {
                            fileInputStream2.close();
                        } catch (Error | Exception unused) {
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (Error | Exception unused2) {
                        }
                        return true;
                    } catch (IOException e10) {
                        fileInputStream = fileInputStream2;
                        fileOutputStream = fileOutputStream2;
                        e = e10;
                        try {
                            e.printStackTrace();
                            if (listener != null) {
                                listener.a();
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Error | Exception unused3) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Error | Exception unused4) {
                                }
                            }
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Error | Exception unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                throw th;
                            }
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (Error | Exception unused6) {
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        fileInputStream = fileInputStream2;
                        fileOutputStream = fileOutputStream2;
                        th = th3;
                        if (fileInputStream != null) {
                        }
                        if (fileOutputStream != null) {
                        }
                    }
                } catch (IOException e11) {
                    e = e11;
                    fileOutputStream = null;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                    fileInputStream = fileInputStream2;
                }
            } catch (IOException e12) {
                e = e12;
                fileOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
            if (listener != null) {
                listener.a();
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(Context context, String filename, File output) {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        AssetManager assets = context.getAssets();
        while (true) {
            inputStream = null;
            try {
                if (!filename.startsWith("/")) {
                    break;
                }
                filename = filename.substring(1);
            } catch (Exception e10) {
                e = e10;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        }
        InputStream open = assets.open(filename);
        try {
            if (!output.exists()) {
                File parentFile = output.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                output.createNewFile();
            }
            fileOutputStream = new FileOutputStream(output);
        } catch (Exception e11) {
            e = e11;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        try {
            f(open, fileOutputStream);
            fileOutputStream.flush();
            if (open != null) {
                try {
                    open.close();
                } catch (Error | Exception unused) {
                }
            }
            try {
                fileOutputStream.close();
            } catch (Error | Exception unused2) {
            }
            return true;
        } catch (Exception e12) {
            e = e12;
            inputStream = open;
            e = e;
            try {
                System.out.println("FILE:" + filename);
                e.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Error | Exception unused3) {
                    }
                }
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (Error | Exception unused4) {
                    return false;
                }
            } catch (Throwable th4) {
                th = th4;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Error | Exception unused5) {
                    }
                }
                if (fileOutputStream != null) {
                    throw th;
                }
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (Error | Exception unused6) {
                    throw th;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream = open;
            th = th;
            if (inputStream != null) {
            }
            if (fileOutputStream != null) {
            }
        }
    }

    public static boolean d(InputStream in2, File file) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                new File(Tc.b.u(file.getPath())).mkdirs();
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable unused) {
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = in2.read(bArr);
                if (read <= 0) {
                    try {
                        fileOutputStream.close();
                        in2.close();
                        return true;
                    } catch (IOException e11) {
                        e11.printStackTrace();
                        return true;
                    }
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                    return false;
                }
            }
            if (in2 != null) {
                in2.close();
            }
            return false;
        } catch (Throwable unused2) {
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                    return false;
                }
            }
            if (in2 != null) {
                in2.close();
            }
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x00d1, code lost:
    
        if (r6 == null) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean e(Context context) {
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        if (context == null) {
            return false;
        }
        j.r();
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/JAVARuntime/");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.exists()) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/JAVARuntime/javaruntimelibraries.zip";
            System.err.println("copying the runtime.zip from asssets to the internal storage to make it available to the compiler");
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedInputStream = new BufferedInputStream(context.getAssets().open("javaruntimelibraries.zip"));
                try {
                    try {
                        File file2 = new File(str);
                        if (file2.exists()) {
                            file2.delete();
                        }
                        file2.createNewFile();
                        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                    } catch (Exception e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e11) {
                e = e11;
                bufferedInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 8192);
                    if (read > 0) {
                        bufferedOutputStream.write(bArr, 0, read);
                    } else {
                        try {
                            break;
                        } catch (Error | Exception unused) {
                        }
                    }
                }
                bufferedOutputStream.close();
            } catch (Exception e12) {
                e = e12;
                bufferedOutputStream2 = bufferedOutputStream;
                System.err.println("Error while copying from assets: " + e.getMessage());
                e.printStackTrace();
                if (bufferedOutputStream2 != null) {
                    try {
                        bufferedOutputStream2.close();
                    } catch (Error | Exception unused2) {
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream2 = bufferedOutputStream;
                if (bufferedOutputStream2 != null) {
                    try {
                        bufferedOutputStream2.close();
                    } catch (Error | Exception unused3) {
                    }
                }
                if (bufferedInputStream == null) {
                    throw th;
                }
                try {
                    bufferedInputStream.close();
                    throw th;
                } catch (Error | Exception unused4) {
                    throw th;
                }
            }
            try {
                bufferedInputStream.close();
            } catch (Error | Exception unused5) {
                File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/JAVARuntime/JAVARuntime/");
                if (file3.exists()) {
                    try {
                        for (File file4 : file3.listFiles()) {
                            g(file4);
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } else {
                    file3.mkdirs();
                }
                if (file3.exists()) {
                    try {
                        e.n(str, file3.getAbsolutePath());
                        try {
                            for (File file5 : file3.listFiles()) {
                                if (file5 != null && file5.getName() != null && file5.getName().endsWith(".class")) {
                                    try {
                                        j.m(new e8.c(Class.forName("JAVARuntime." + file5.getName().replace(".class", ""))));
                                    } catch (Error | Exception e14) {
                                        e14.printStackTrace();
                                    }
                                }
                            }
                        } catch (Exception e15) {
                            e15.printStackTrace();
                        }
                        new File(str).delete();
                    } catch (IOException e16) {
                        e16.printStackTrace();
                    }
                }
                return false;
            }
        }
        return false;
    }

    public static void f(InputStream in2, OutputStream out) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = in2.read(bArr);
            if (read == -1) {
                return;
            } else {
                out.write(bArr, 0, read);
            }
        }
    }

    public static boolean g(File fileOrDirectory) {
        File[] listFiles;
        if (fileOrDirectory.isDirectory() && (listFiles = fileOrDirectory.listFiles()) != null) {
            for (File file : listFiles) {
                g(file);
            }
        }
        return fileOrDirectory.delete();
    }

    public static boolean h(File fileOrDirectory, c listener) {
        File[] listFiles;
        if (fileOrDirectory.isDirectory() && (listFiles = fileOrDirectory.listFiles()) != null) {
            for (File file : listFiles) {
                h(file, listener);
            }
        }
        if (listener != null) {
            listener.c();
        }
        return fileOrDirectory.delete();
    }

    public static boolean i(File folder) {
        if (!folder.exists() || !folder.isDirectory()) {
            return false;
        }
        File[] listFiles = folder.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            folder.delete();
            return true;
        }
        for (File file : listFiles) {
            if (!file.isDirectory()) {
                return false;
            }
            i(file);
        }
        File[] listFiles2 = folder.listFiles();
        if (listFiles2 != null && listFiles2.length != 0) {
            return false;
        }
        folder.delete();
        return true;
    }

    public static long j(File dir) {
        long j10 = 0;
        if (!dir.exists()) {
            return 0L;
        }
        if (!dir.isDirectory()) {
            return dir.length();
        }
        File[] listFiles = dir.listFiles();
        if (listFiles == null) {
            return 0L;
        }
        for (int i10 = 0; i10 < listFiles.length; i10++) {
            j10 += listFiles[i10].isDirectory() ? j(listFiles[i10]) : listFiles[i10].length();
        }
        return j10;
    }

    public static boolean k(Context context, String filename) {
        AssetManager assets = context.getAssets();
        while (filename.startsWith("/")) {
            try {
                filename = filename.substring(1);
            } catch (Exception unused) {
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        InputStream open = assets.open(filename);
        if (open != null) {
            try {
                open.close();
            } catch (Error | Exception unused2) {
            }
        }
        return true;
    }

    public static Bitmap l(String filePath, Context context) {
        if (context != null) {
            try {
                return BitmapFactory.decodeStream(context.getAssets().open(filePath));
            } catch (IOException unused) {
                return null;
            }
        }
        J4.d.b2("FATAL ANDROID ERROR: Master activity couldn't be found!");
        return null;
    }

    public static String m(String fileName, Context context) {
        return com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + fileName;
    }

    public static void n(d listener) {
        o(com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener);
    }

    public static void o(String project, d listener) {
        new Thread(new RunnableC1775a(project, N7.c.t(), listener)).start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r3 == null) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean p(String project) {
        BufferedOutputStream bufferedOutputStream;
        Throwable th2;
        BufferedInputStream bufferedInputStream;
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.Y(project) + "/javaRTImportPack.zip";
        try {
            bufferedInputStream = new BufferedInputStream(N7.c.t().getAssets().open("Editor/javaLibs.zip"));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, 8192);
                        if (read > 0) {
                            bufferedOutputStream.write(bArr, 0, read);
                        } else {
                            try {
                                break;
                            } catch (Error | Exception unused) {
                            }
                        }
                    }
                    bufferedOutputStream.close();
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        TextOutputActivity.h(th2);
                        System.err.println("Error while copying from assets: " + th2.getMessage());
                        th2.printStackTrace();
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Error | Exception unused2) {
                            }
                        }
                    } finally {
                    }
                }
            } catch (Throwable th4) {
                bufferedOutputStream = null;
                th2 = th4;
            }
        } catch (Throwable th5) {
            bufferedOutputStream = null;
            th2 = th5;
            bufferedInputStream = null;
        }
        try {
            bufferedInputStream.close();
        } catch (Error | Exception unused3) {
            try {
                e.n(str, com.itsmagic.engine.Core.Components.ProjectController.a.Y(project) + "/");
                new File(str).delete();
                return true;
            } catch (Throwable th6) {
                th6.printStackTrace();
                TextOutputActivity.h(th6);
                return false;
            }
        }
    }

    public static void q(String folder, String name, Context context) {
        if (new File(Tc.b.d0(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + folder + "/" + name + ".world")).exists()) {
            return;
        }
        World world = new World();
        world.createExampleWhenOpen = true;
        world.fileName = name + ".world";
        world.folder = folder;
        X7.a aVar = W7.b.f27305e;
        X7.a.e(folder, name + ".world", X7.a.m().toJson(world), context);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean r(Context context, String filename, File output) {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        AssetManager assets = context.getAssets();
        while (true) {
            inputStream = null;
            try {
                if (!filename.startsWith("/")) {
                    break;
                }
                filename = filename.substring(1);
            } catch (Exception e10) {
                e = e10;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        }
        InputStream open = assets.open(filename);
        try {
            if (!output.exists()) {
                File parentFile = output.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                output.createNewFile();
            }
            fileOutputStream = new FileOutputStream(output);
        } catch (Exception e11) {
            inputStream = open;
            e = e11;
            fileOutputStream = null;
        } catch (Throwable th3) {
            inputStream = open;
            th = th3;
            fileOutputStream = null;
        }
        try {
            f(open, fileOutputStream);
            fileOutputStream.flush();
            if (open != null) {
                try {
                    open.close();
                } catch (Error | Exception unused) {
                }
            }
            try {
                fileOutputStream.close();
            } catch (Error | Exception unused2) {
            }
            return true;
        } catch (Exception e12) {
            inputStream = open;
            e = e12;
            try {
                e.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Error | Exception unused3) {
                    }
                }
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (Error | Exception unused4) {
                    return false;
                }
            } catch (Throwable th4) {
                th = th4;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Error | Exception unused5) {
                    }
                }
                if (fileOutputStream != null) {
                    throw th;
                }
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (Error | Exception unused6) {
                    throw th;
                }
            }
        } catch (Throwable th5) {
            inputStream = open;
            th = th5;
            if (inputStream != null) {
            }
            if (fileOutputStream != null) {
            }
        }
    }
}
