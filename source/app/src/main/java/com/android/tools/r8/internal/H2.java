package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.utils.C11673u;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.zip.ZipEntry;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class H2 {

    public static final boolean f40653m = true;

    public boolean f40654a;

    public String f40655b;

    public String f40656c;

    public boolean f40657d;

    public boolean f40658e;

    public boolean f40659f;

    public boolean f40660g;

    public Map<MethodReference, C2> f40661h;

    public Map<FieldReference, C2> f40662i;

    public Map<ClassReference, C2> f40663j;

    public BiConsumer<MethodReference, com.android.tools.r8.androidapi.f> f40664k;

    public final C8570nJ f40665l;

    public H2(C8570nJ c8570nJ) {
        this.f40654a = System.getProperty("com.android.tools.r8.disableApiModeling") == null;
        this.f40655b = System.getProperty("com.android.tools.r8.androidApiExtensionLibraries");
        this.f40656c = System.getProperty("com.android.tools.r8.androidApiExtensionPackages");
        this.f40657d = true;
        this.f40658e = true;
        this.f40659f = true;
        this.f40660g = true;
        this.f40661h = new HashMap();
        this.f40662i = new HashMap();
        this.f40663j = new HashMap();
        this.f40664k = null;
        this.f40665l = c8570nJ;
    }

    public final void a(final Consumer consumer) {
        if (!f40653m && !this.f40654a) {
            throw new AssertionError();
        }
        String str = this.f40655b;
        if (str != null) {
            C10656zq0.a(str, IIndexConstants.PARAMETER_SEPARATOR).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    H2.a(Consumer.this, (String) obj);
                }
            });
        }
    }

    public H2 b() {
        return c(false);
    }

    public H2 c(boolean z10) {
        this.f40654a = z10;
        return this;
    }

    public H2 d(boolean z10) {
        this.f40659f = z10;
        return this;
    }

    public boolean e() {
        return this.f40654a && this.f40657d;
    }

    public boolean f() {
        return this.f40654a && this.f40665l.P() && this.f40659f;
    }

    public boolean g() {
        return this.f40654a && this.f40665l.P() && this.f40658e;
    }

    public H2 b(boolean z10) {
        this.f40657d = z10;
        return this;
    }

    public H2 c() {
        return d(false);
    }

    public H2 d() {
        return e(false);
    }

    public H2 e(boolean z10) {
        this.f40658e = z10;
        return this;
    }

    public static void a(final Consumer consumer, String str) {
        try {
            C11673u.a(Paths.get(str, new String[0]), new C11673u.a() {
                @Override
                public final void a(ZipEntry zipEntry, InputStream inputStream) {
                    H2.a(Consumer.this, zipEntry, inputStream);
                }
            });
        } catch (Exception e10) {
            throw new C5325If("Failed to read extension library " + str, e10);
        }
    }

    public static void a(Consumer consumer, ZipEntry zipEntry, InputStream inputStream) {
        if (C11673u.a(zipEntry.getName())) {
            if (inputStream != null) {
                int available = inputStream.available();
                int min = available < 256 ? 4096 : Math.min(available, 1048576);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[min];
                    int i10 = 0;
                    while (true) {
                        int read = inputStream.read(bArr, 0, min);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                        i10++;
                    }
                    byteArrayOutputStream.flush();
                    if (i10 == 1) {
                        byteArrayOutputStream.close();
                    } else {
                        bArr = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                    }
                    int length = bArr.length;
                    C6072Vd c6072Vd = new C6072Vd(bArr, true);
                    C5197Gb c5197Gb = new C5197Gb();
                    c6072Vd.a(c5197Gb, new K4[0], 7);
                    consumer.accept(C4932Bl.k(c5197Gb.f40526c));
                    return;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th2;
                }
            }
            throw new IOException("Class not found");
        }
    }

    public H2 a() {
        return b(false);
    }

    public H2 a(boolean z10) {
        this.f40660g = z10;
        return this;
    }

    public final void a(final C4724u1 c4724u1, final BiConsumer biConsumer) {
        if (!f40653m && !this.f40654a) {
            throw new AssertionError();
        }
        this.f40663j.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(c4724u1.d(((ClassReference) obj).getDescriptor()), (C2) obj2);
            }
        });
        this.f40662i.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(c4724u1.a((FieldReference) obj), (C2) obj2);
            }
        });
        this.f40661h.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(c4724u1.a((MethodReference) obj), (C2) obj2);
            }
        });
    }
}
