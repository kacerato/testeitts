package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.ToLongFunction;
import y8.C16152a;

public class f {

    public static final int f70234a = 100;

    public class a implements Runnable {

        public final a.l f70235b;

        public final Runnable f70236c;

        public class C1055a implements y8.b {
            public C1055a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b() {
            }

            @Override
            public void onSuccess() {
            }
        }

        public a(final a.l val$downloadOut, final Runnable val$doneListener) {
            this.f70235b = val$downloadOut;
            this.f70236c = val$doneListener;
        }

        @Override
        public void run() {
            File m10 = this.f70235b.m();
            File file = new File(W7.b.f27306f.f2458a.g(N7.c.t()) + "/store/" + (this.f70235b.f70227c + ConstantDescs.DEFAULT_NAME + this.f70235b.f70226b + ".impack"));
            if (file.exists()) {
                file.delete();
            }
            C16152a.c(m10, file, new C1055a());
            f.e();
            N7.c.j0(this.f70236c);
        }
    }

    public enum b {
        FailedToDelete,
        NoMoreToDelete,
        Deleted
    }

    public static b b() {
        File[] listFiles;
        File file = new File(W7.b.f27306f.f2458a.g(N7.c.t()) + "/store/");
        if (!file.exists() || (listFiles = file.listFiles()) == null || listFiles.length <= 0) {
            return b.NoMoreToDelete;
        }
        Arrays.sort(listFiles, Comparator.comparingLong(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                return ((File) obj).lastModified();
            }
        }).reversed());
        return listFiles[0].delete() ? b.Deleted : b.FailedToDelete;
    }

    public static File c(String packID, int version) {
        File[] listFiles;
        File file = new File(W7.b.f27306f.f2458a.g(N7.c.t()) + "/store/");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.getName().equals(packID + ConstantDescs.DEFAULT_NAME + version + ".impack")) {
                return file2;
            }
        }
        return null;
    }

    public static int d() {
        File[] listFiles;
        File file = new File(W7.b.f27306f.f2458a.g(N7.c.t()) + "/store/");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return 0;
        }
        return listFiles.length;
    }

    public static void e() {
        b b10;
        int d10 = d();
        while (d10 > 100 && (b10 = b()) != b.FailedToDelete && b10 != b.NoMoreToDelete) {
            if (b10 == b.Deleted) {
                d10 = d();
            }
        }
    }

    public static void f(a.l downloadOut, Runnable doneListener) {
        if (downloadOut.e() != a.m.Downloaded) {
            throw new RuntimeException();
        }
        new Thread(new a(downloadOut, doneListener)).start();
    }
}
