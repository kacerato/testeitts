package h4;

import Ic.C2633l;
import com.itsmagic.engine.Activities.Editor.Extensions.VCS.HashData;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import java.io.File;
import java.util.function.Function;
import java.util.function.Predicate;

public class f {

    public final File f90222a;

    public final File f90223b;

    public final C13425b<HashData> f90224c;

    public final m f90225d;

    public final String f90226e;

    public String f90227f;

    public boolean f90228g;

    public final Function<String, HashData> f90229h = new a();

    public class a implements Function<String, HashData> {
        public a() {
        }

        @Override
        public HashData apply(String s10) {
            return new HashData();
        }
    }

    public class b implements Function<String, HashData> {

        public final File f90231b;

        public b(final File val$file) {
            this.f90231b = val$file;
        }

        @Override
        public HashData apply(String s10) {
            HashData hashData = new HashData();
            hashData.dateModified = this.f90231b.lastModified();
            hashData.fileSizeBytes = this.f90231b.length();
            return hashData;
        }
    }

    public static class c {

        public static final int[] f90233a;

        static {
            int[] iArr = new int[EnumC13424a.values().length];
            f90233a = iArr;
            try {
                iArr[EnumC13424a.SAVE_DATE_BUT_DONT_NOTIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90233a[EnumC13424a.SAVE_NOTIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public f(boolean firstSetup, File hashTableFolder, File directory, String commonPathToExclude, m listener) {
        if (!directory.isDirectory()) {
            throw new RuntimeException();
        }
        this.f90222a = hashTableFolder;
        this.f90224c = new C13425b<>(hashTableFolder, HashData.class);
        this.f90226e = commonPathToExclude;
        this.f90223b = directory;
        this.f90225d = listener;
        if (firstSetup) {
            d(directory);
        }
    }

    public final void b(File directory, boolean cumullatedIsMeta, File originalFileFromMeta) {
        File[] listFiles = directory.listFiles();
        if (listFiles != null) {
            boolean z10 = C2633l.b(directory.getName(), ".meta") || cumullatedIsMeta;
            if (z10 && originalFileFromMeta == null) {
                try {
                    originalFileFromMeta = Tc.b.k(directory);
                } catch (Exception e10) {
                    System.out.println("file:" + directory.getName());
                    e10.printStackTrace();
                }
            } else {
                originalFileFromMeta = null;
            }
            for (File file : listFiles) {
                if (this.f90225d.a(file)) {
                    if (file.isDirectory()) {
                        b(file, z10, originalFileFromMeta);
                    } else {
                        long lastModified = file.lastModified();
                        if (originalFileFromMeta == null) {
                            String replace = file.getAbsolutePath().replace(this.f90226e, "");
                            if (this.f90224c.b(replace)) {
                                HashData a10 = this.f90224c.a(replace, this.f90229h);
                                if (a10 != null && lastModified != a10.dateModified) {
                                    int i10 = c.f90233a[this.f90225d.b(file, a10).ordinal()];
                                    if (i10 == 1) {
                                        a10.dateModified = lastModified;
                                        this.f90224c.g(replace, a10);
                                    } else if (i10 == 2) {
                                        a10.dateModified = lastModified;
                                        this.f90224c.g(replace, a10);
                                        this.f90225d.d(file, this.f90227f);
                                    }
                                }
                            } else {
                                HashData a11 = this.f90224c.a(replace, this.f90229h);
                                a11.dateModified = lastModified;
                                this.f90224c.g(replace, a11);
                                this.f90225d.c(file, this.f90227f);
                            }
                        } else {
                            String replace2 = file.getAbsolutePath().replace(this.f90226e, "");
                            if (!this.f90224c.b(replace2) || lastModified != this.f90224c.f(replace2).dateModified) {
                                String replace3 = file.getAbsolutePath().replace(this.f90226e, "");
                                if (this.f90224c.b(replace3)) {
                                    HashData a12 = this.f90224c.a(replace3, this.f90229h);
                                    if (lastModified != a12.dateModified) {
                                        HashData a13 = this.f90224c.a(file.getAbsolutePath().replace(this.f90226e, ""), this.f90229h);
                                        int i11 = c.f90233a[this.f90225d.b(file, a13).ordinal()];
                                        if (i11 == 1) {
                                            this.f90224c.g(file.getAbsolutePath().replace(this.f90226e, ""), a13);
                                            a12.dateModified = lastModified;
                                            this.f90224c.g(replace3, a12);
                                        } else if (i11 == 2) {
                                            this.f90224c.g(file.getAbsolutePath().replace(this.f90226e, ""), a13);
                                            a12.dateModified = lastModified;
                                            this.f90224c.g(replace3, a12);
                                            this.f90225d.d(originalFileFromMeta, this.f90227f);
                                        }
                                    }
                                } else {
                                    HashData a14 = this.f90224c.a(replace3, this.f90229h);
                                    a14.dateModified = lastModified;
                                    this.f90224c.g(replace3, a14);
                                    this.f90225d.c(originalFileFromMeta, this.f90227f);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void c() {
        this.f90227f = C12736d.m();
        this.f90224c.h(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean e10;
                e10 = f.this.e((String) obj);
                return e10;
            }
        });
        b(this.f90223b, false, null);
    }

    public final void d(File directory) {
        File[] listFiles = directory.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file != null && this.f90225d.a(file)) {
                    if (file.isDirectory()) {
                        d(file);
                    } else {
                        String replace = file.getAbsolutePath().replace(this.f90226e, "");
                        HashData a10 = this.f90224c.a(replace, new b(file));
                        if (a10 != null) {
                            this.f90225d.b(file, a10);
                            this.f90224c.g(replace, a10);
                        }
                    }
                }
            }
        }
    }

    public final boolean e(String str) {
        File file = new File(this.f90226e + str);
        if (file.exists()) {
            return false;
        }
        this.f90225d.e(file, this.f90227f);
        return true;
    }
}
