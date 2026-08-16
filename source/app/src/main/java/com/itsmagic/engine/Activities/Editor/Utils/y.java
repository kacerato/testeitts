package com.itsmagic.engine.Activities.Editor.Utils;

import Ic.C2633l;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class y {

    public static final Map<String, List<File>> f72338a = new HashMap();

    public class a implements x8.b {
        @Override
        public void a() {
            y.c();
        }

        @Override
        public void b() {
            y.c();
        }
    }

    public class b implements j {

        public final AtomicInteger f72339a;

        public final i f72340b;

        public b(final AtomicInteger val$total, final i val$callback) {
            this.f72339a = val$total;
            this.f72340b = val$callback;
        }

        @Override
        public void a(File file) {
            this.f72339a.incrementAndGet();
        }

        @Override
        public void onFinish() {
            this.f72340b.a(this.f72339a.get());
        }
    }

    public class c implements j {

        public final AtomicInteger f72341a;

        public final i f72342b;

        public c(final AtomicInteger val$total, final i val$callback) {
            this.f72341a = val$total;
            this.f72342b = val$callback;
        }

        @Override
        public void a(File file) {
            this.f72341a.incrementAndGet();
        }

        @Override
        public void onFinish() {
            this.f72342b.a(this.f72341a.get());
        }
    }

    public class d implements Runnable {

        public final String f72343b;

        public final j f72344c;

        public d(final String val$fileType, final j val$listInterface) {
            this.f72343b = val$fileType;
            this.f72344c = val$listInterface;
        }

        @Override
        public void run() {
            synchronized (y.f72338a) {
                try {
                    Iterator it = ((List) y.f72338a.get(this.f72343b)).iterator();
                    while (it.hasNext()) {
                        this.f72344c.a((File) it.next());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f72344c.onFinish();
        }
    }

    public class e implements Runnable {

        public final boolean f72345b;

        public final String f72346c;

        public final j f72347d;

        public e(final boolean val$allowInsideMeta, final String val$fileType, final j val$listInterface) {
            this.f72345b = val$allowInsideMeta;
            this.f72346c = val$fileType;
            this.f72347d = val$listInterface;
        }

        @Override
        public void run() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R()).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR") && (this.f72345b || !file.getName().contains(".meta"))) {
                            y.j(this.f72345b, this.f72346c, file, this.f72347d, steppedArrayList);
                        }
                    } else if (C2633l.b(file.getName(), this.f72346c)) {
                        steppedArrayList.add(file);
                        this.f72347d.a(file);
                    }
                }
            }
            synchronized (y.f72338a) {
                y.f72338a.put(this.f72346c, steppedArrayList);
            }
            this.f72347d.onFinish();
        }
    }

    public class f implements Runnable {

        public final boolean f72348b;

        public final String f72349c;

        public final j f72350d;

        public f(final boolean val$allowInsideMeta, final String val$fileType, final j val$listInterface) {
            this.f72348b = val$allowInsideMeta;
            this.f72349c = val$fileType;
            this.f72350d = val$listInterface;
        }

        @Override
        public void run() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R()).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR") && (this.f72348b || !file.getName().contains(".meta"))) {
                            y.j(this.f72348b, this.f72349c, file, this.f72350d, steppedArrayList);
                        }
                    } else if (C2633l.b(file.getName(), this.f72349c)) {
                        steppedArrayList.add(file);
                        this.f72350d.a(file);
                    }
                }
            }
            synchronized (y.f72338a) {
                y.f72338a.put(this.f72349c, steppedArrayList);
            }
            this.f72350d.onFinish();
        }
    }

    public class g implements Runnable {

        public final String f72351b;

        public final j f72352c;

        public g(final String val$fileType, final j val$listInterface) {
            this.f72351b = val$fileType;
            this.f72352c = val$listInterface;
        }

        @Override
        public void run() {
            synchronized (y.f72338a) {
                try {
                    Iterator it = ((List) y.f72338a.get(this.f72351b)).iterator();
                    while (it.hasNext()) {
                        this.f72352c.a((File) it.next());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f72352c.onFinish();
        }
    }

    public class h implements Runnable {

        public final String f72353b;

        public final boolean f72354c;

        public final String f72355d;

        public final j f72356e;

        public h(final String val$projectName, final boolean val$allowInsideMeta, final String val$fileType, final j val$listInterface) {
            this.f72353b = val$projectName;
            this.f72354c = val$allowInsideMeta;
            this.f72355d = val$fileType;
            this.f72356e = val$listInterface;
        }

        @Override
        public void run() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f72353b)).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR") && (this.f72354c || !file.getName().contains(".meta"))) {
                            y.j(this.f72354c, this.f72355d, file, this.f72356e, steppedArrayList);
                        }
                    } else if (C2633l.b(file.getName(), this.f72355d)) {
                        steppedArrayList.add(file);
                        this.f72356e.a(file);
                    }
                }
            }
            synchronized (y.f72338a) {
                y.f72338a.put(this.f72355d, steppedArrayList);
            }
            this.f72356e.onFinish();
        }
    }

    public interface i {
        void a(int count);
    }

    public interface j {
        void a(File file);

        void onFinish();
    }

    public static abstract class k implements i {

        public class a implements Runnable {

            public final int f72357b;

            public a(final int val$count) {
                this.f72357b = val$count;
            }

            @Override
            public void run() {
                k.this.b(this.f72357b);
            }
        }

        @Override
        public void a(int count) {
            N7.c.j0(new a(count));
        }

        public abstract void b(int count);
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public static void c() {
        Map<String, List<File>> map = f72338a;
        synchronized (map) {
            map.clear();
        }
    }

    public static void d(String projectName, boolean allowInsideMeta, String fileType, i callback) {
        if (UserController.U()) {
            callback.a(0);
        } else {
            h(projectName, allowInsideMeta, fileType, new c(new AtomicInteger(), callback));
        }
    }

    public static void e(boolean allowInsideMeta, String fileType, i callback) {
        if (UserController.U()) {
            callback.a(0);
        } else {
            new SteppedArrayList();
            i(allowInsideMeta, fileType, new b(new AtomicInteger(), callback));
        }
    }

    public static String f(String projectName, String fileName) {
        String g10;
        String v10 = Tc.b.v(fileName);
        File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName)).listFiles();
        if (listFiles == null) {
            return null;
        }
        for (File file : listFiles) {
            if (!file.isDirectory()) {
                if (file.getName().equals(v10)) {
                    return file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/", "");
                }
            } else if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR") && (g10 = g(projectName, v10, file)) != null) {
                return g10;
            }
        }
        return null;
    }

    public static String g(String projectName, String fileName, File parent) {
        String g10;
        String v10 = Tc.b.v(fileName);
        File[] listFiles = parent.listFiles();
        if (listFiles == null) {
            return null;
        }
        for (File file : listFiles) {
            if (!file.isDirectory()) {
                if (file.getName().equals(v10)) {
                    return file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/", "");
                }
            } else if (!file.getName().equals("JAVARuntime") && !file.getName().equals("_EDITOR") && (g10 = g(projectName, v10, file)) != null) {
                return g10;
            }
        }
        return null;
    }

    public static void h(String projectName, boolean allowInsideMeta, String fileType, j listInterface) {
        Map<String, List<File>> map = f72338a;
        synchronized (map) {
            try {
                if (map.containsKey(fileType)) {
                    new Thread(new g(fileType, listInterface)).start();
                    return;
                }
                Thread thread = new Thread(new h(projectName, allowInsideMeta, fileType, listInterface));
                thread.setPriority(1);
                thread.start();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void i(boolean allowInsideMeta, String fileType, j listInterface) {
        Map<String, List<File>> map = f72338a;
        synchronized (map) {
            try {
                if (map.containsKey(fileType)) {
                    new Thread(new d(fileType, listInterface)).start();
                    return;
                }
                Thread thread = new Thread(new e(allowInsideMeta, fileType, listInterface));
                thread.setPriority(1);
                thread.start();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void j(boolean allowInsideMeta, String fileType, File folder, j listInterface, List<File> toCache) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    if (allowInsideMeta || !file.getName().contains(".meta")) {
                        j(allowInsideMeta, fileType, file, listInterface, toCache);
                    }
                } else if (C2633l.b(file.getName(), fileType)) {
                    if (toCache != null) {
                        toCache.add(file);
                    }
                    listInterface.a(file);
                }
            }
        }
    }

    public static void k(boolean allowInsideMeta, String fileType, j listInterface) {
        Thread thread = new Thread(new f(allowInsideMeta, fileType, listInterface));
        thread.setPriority(1);
        thread.start();
    }
}
