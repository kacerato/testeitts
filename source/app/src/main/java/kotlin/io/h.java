package kotlin.io;

import Xf.InterfaceC3312m;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14965c;

public final class h implements InterfaceC3312m<File> {

    @NotNull
    public final File f95655a;

    @NotNull
    public final i f95656b;

    @Nullable
    public final Mf.l<File, Boolean> f95657c;

    @Nullable
    public final Mf.l<File, P0> f95658d;

    @Nullable
    public final Mf.p<File, IOException, P0> f95659e;

    public final int f95660f;

    @t0({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$DirectoryState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
    public static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull File rootDir) {
            super(rootDir);
            M.p(rootDir, "rootDir");
        }
    }

    public final class b extends AbstractC14965c<File> {

        @NotNull
        public final ArrayDeque<c> f95661d;

        public final class a extends a {

            public boolean f95663b;

            @Nullable
            public File[] f95664c;

            public int f95665d;

            public boolean f95666e;

            public final b f95667f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(@NotNull b bVar, File rootDir) {
                super(rootDir);
                M.p(rootDir, "rootDir");
                this.f95667f = bVar;
            }

            @Override
            @Nullable
            public File b() {
                if (!this.f95666e && this.f95664c == null) {
                    Mf.l lVar = h.this.f95657c;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        return null;
                    }
                    File[] listFiles = a().listFiles();
                    this.f95664c = listFiles;
                    if (listFiles == null) {
                        Mf.p pVar = h.this.f95659e;
                        if (pVar != null) {
                            pVar.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f95666e = true;
                    }
                }
                File[] fileArr = this.f95664c;
                if (fileArr != null) {
                    int i10 = this.f95665d;
                    M.m(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.f95664c;
                        M.m(fileArr2);
                        int i11 = this.f95665d;
                        this.f95665d = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (!this.f95663b) {
                    this.f95663b = true;
                    return a();
                }
                Mf.l lVar2 = h.this.f95658d;
                if (lVar2 != null) {
                    lVar2.invoke(a());
                }
                return null;
            }
        }

        @t0({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
        public final class C1857b extends c {

            public boolean f95668b;

            public final b f95669c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1857b(@NotNull b bVar, File rootFile) {
                super(rootFile);
                M.p(rootFile, "rootFile");
                this.f95669c = bVar;
            }

            @Override
            @Nullable
            public File b() {
                if (this.f95668b) {
                    return null;
                }
                this.f95668b = true;
                return a();
            }
        }

        public final class c extends a {

            public boolean f95670b;

            @Nullable
            public File[] f95671c;

            public int f95672d;

            public final b f95673e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull b bVar, File rootDir) {
                super(rootDir);
                M.p(rootDir, "rootDir");
                this.f95673e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x007f, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public File b() {
                Mf.p pVar;
                if (!this.f95670b) {
                    Mf.l lVar = h.this.f95657c;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        return null;
                    }
                    this.f95670b = true;
                    return a();
                }
                File[] fileArr = this.f95671c;
                if (fileArr != null) {
                    int i10 = this.f95672d;
                    M.m(fileArr);
                    if (i10 >= fileArr.length) {
                        Mf.l lVar2 = h.this.f95658d;
                        if (lVar2 != null) {
                            lVar2.invoke(a());
                        }
                        return null;
                    }
                }
                if (this.f95671c == null) {
                    File[] listFiles = a().listFiles();
                    this.f95671c = listFiles;
                    if (listFiles == null && (pVar = h.this.f95659e) != null) {
                        pVar.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
                    }
                    File[] fileArr2 = this.f95671c;
                    if (fileArr2 != null) {
                        M.m(fileArr2);
                    }
                    Mf.l lVar3 = h.this.f95658d;
                    if (lVar3 != null) {
                        lVar3.invoke(a());
                    }
                    return null;
                }
                File[] fileArr3 = this.f95671c;
                M.m(fileArr3);
                int i11 = this.f95672d;
                this.f95672d = i11 + 1;
                return fileArr3[i11];
            }
        }

        public static final class d {

            public static final int[] f95674a;

            static {
                int[] iArr = new int[i.values().length];
                try {
                    iArr[i.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[i.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f95674a = iArr;
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.f95661d = arrayDeque;
            if (h.this.f95655a.isDirectory()) {
                arrayDeque.push(e(h.this.f95655a));
            } else if (h.this.f95655a.isFile()) {
                arrayDeque.push(new C1857b(this, h.this.f95655a));
            } else {
                b();
            }
        }

        @Override
        public void a() {
            File f10 = f();
            if (f10 != null) {
                c(f10);
            } else {
                b();
            }
        }

        public final a e(File file) {
            int i10 = d.f95674a[h.this.f95656b.ordinal()];
            if (i10 == 1) {
                return new c(this, file);
            }
            if (i10 == 2) {
                return new a(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }

        public final File f() {
            File b10;
            while (true) {
                c peek = this.f95661d.peek();
                if (peek == null) {
                    return null;
                }
                b10 = peek.b();
                if (b10 == null) {
                    this.f95661d.pop();
                } else {
                    if (M.g(b10, peek.a()) || !b10.isDirectory() || this.f95661d.size() >= h.this.f95660f) {
                        break;
                    }
                    this.f95661d.push(e(b10));
                }
            }
            return b10;
        }
    }

    public static abstract class c {

        @NotNull
        public final File f95675a;

        public c(@NotNull File root) {
            M.p(root, "root");
            this.f95675a = root;
        }

        @NotNull
        public final File a() {
            return this.f95675a;
        }

        @Nullable
        public abstract File b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(File file, i iVar, Mf.l<? super File, Boolean> lVar, Mf.l<? super File, P0> lVar2, Mf.p<? super File, ? super IOException, P0> pVar, int i10) {
        this.f95655a = file;
        this.f95656b = iVar;
        this.f95657c = lVar;
        this.f95658d = lVar2;
        this.f95659e = pVar;
        this.f95660f = i10;
    }

    @NotNull
    public final h i(int i10) {
        if (i10 > 0) {
            return new h(this.f95655a, this.f95656b, this.f95657c, this.f95658d, this.f95659e, i10);
        }
        throw new IllegalArgumentException("depth must be positive, but was " + i10 + '.');
    }

    @Override
    @NotNull
    public Iterator<File> iterator() {
        return new b();
    }

    @NotNull
    public final h j(@NotNull Mf.l<? super File, Boolean> function) {
        M.p(function, "function");
        return new h(this.f95655a, this.f95656b, function, this.f95658d, this.f95659e, this.f95660f);
    }

    @NotNull
    public final h k(@NotNull Mf.p<? super File, ? super IOException, P0> function) {
        M.p(function, "function");
        return new h(this.f95655a, this.f95656b, this.f95657c, this.f95658d, function, this.f95660f);
    }

    @NotNull
    public final h l(@NotNull Mf.l<? super File, P0> function) {
        M.p(function, "function");
        return new h(this.f95655a, this.f95656b, this.f95657c, function, this.f95659e, this.f95660f);
    }

    public h(File file, i iVar, Mf.l lVar, Mf.l lVar2, Mf.p pVar, int i10, int i11, C14026x c14026x) {
        this(file, (i11 & 2) != 0 ? i.TOP_DOWN : iVar, lVar, lVar2, pVar, (i11 & 32) != 0 ? Integer.MAX_VALUE : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(@NotNull File start, @NotNull i direction) {
        this(start, direction, null, null, null, 0, 32, null);
        M.p(start, "start");
        M.p(direction, "direction");
    }

    public h(File file, i iVar, int i10, C14026x c14026x) {
        this(file, (i10 & 2) != 0 ? i.TOP_DOWN : iVar);
    }
}
