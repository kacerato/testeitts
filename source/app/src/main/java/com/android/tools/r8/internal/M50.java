package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.dex.C4318s;
import com.android.tools.r8.internal.M50;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.retrace.FinishedPartitionMappingCallback;
import com.android.tools.r8.retrace.InvalidMappingFileException;
import com.android.tools.r8.retrace.MappingPartitionFromKeySupplier;
import com.android.tools.r8.retrace.PartitionMappingSupplier;
import com.android.tools.r8.retrace.PrepareMappingPartitionsCallback;
import com.android.tools.r8.retrace.RegisterMappingPartitionCallback;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class M50<T extends M50<T>> implements com.android.tools.r8.H {

    private final RegisterMappingPartitionCallback f42161a;

    private final PrepareMappingPartitionsCallback f42162b;

    private final FinishedPartitionMappingCallback f42163c;

    private final boolean f42164d;

    private final byte[] f42165e;

    private final MapVersion f42166f;

    private C10912b f42167g;

    private final LinkedHashSet f42168h = new LinkedHashSet();

    private final HashSet f42169i = new HashSet();

    private final C7 f42170j = new C7();

    private final C7 f42171k = new C7();

    public M50(RegisterMappingPartitionCallback registerMappingPartitionCallback, PrepareMappingPartitionsCallback prepareMappingPartitionsCallback, FinishedPartitionMappingCallback finishedPartitionMappingCallback, boolean z10, byte[] bArr, MapVersion mapVersion) {
        this.f42161a = registerMappingPartitionCallback;
        this.f42162b = prepareMappingPartitionsCallback;
        this.f42163c = finishedPartitionMappingCallback;
        this.f42164d = z10;
        this.f42165e = bArr;
        this.f42166f = mapVersion;
    }

    public static void a(C10912b.a aVar) {
        aVar.f55831a = true;
    }

    public C10137wk0 createRetracerFromPartitionSupplier(DiagnosticsHandler diagnosticsHandler, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        if (!this.f42168h.isEmpty()) {
            this.f42162b.prepare();
        }
        Iterator<E> it = this.f42168h.iterator();
        while (it.hasNext()) {
            try {
                byte[] bArr = mappingPartitionFromKeySupplier.get((String) it.next());
                if (bArr != null) {
                    this.f42167g = C10912b.a(new C9375s80(new ByteArrayInputStream(bArr), EnumC6871d70.f47286b, true), getMetadata(diagnosticsHandler).b(), diagnosticsHandler, true, this.f42164d, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            M50.a((C10912b.a) obj);
                        }
                    }).a(this.f42167g);
                }
            } catch (IOException e10) {
                throw new InvalidMappingFileException(e10);
            }
        }
        this.f42169i.addAll(this.f42168h);
        this.f42168h.clear();
        if (this.f42167g == null) {
            this.f42167g = C10912b.a().a();
        }
        return C10137wk0.a(C7093eV.a(this.f42167g), diagnosticsHandler);
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f42163c.finished(diagnosticsHandler);
    }

    public Set<com.android.tools.r8.naming.mappinginformation.b> getMapVersions(DiagnosticsHandler diagnosticsHandler) {
        return Collections.singleton(getMetadata(diagnosticsHandler).b().toMapVersionMappingInformation());
    }

    public InterfaceC6594bV getMetadata(DiagnosticsHandler diagnosticsHandler) {
        if (this.f42170j.b()) {
            return (InterfaceC6594bV) this.f42170j.a();
        }
        synchronized (this.f42170j) {
            try {
                if (this.f42170j.b()) {
                    return (InterfaceC6594bV) this.f42170j.a();
                }
                byte[] bArr = this.f42165e;
                InterfaceC6594bV a10 = InterfaceC6594bV.a(bArr == null ? null : C4318s.b(bArr), this.f42166f, diagnosticsHandler);
                this.f42170j.a((C7) a10);
                return a10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public PartitionMappingSupplier getPartitionMappingSupplier() {
        return null;
    }

    public M50 mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference) {
        Set set;
        boolean test;
        String typeName = classReference.getTypeName();
        if (this.f42171k.b()) {
            test = ((Predicate) this.f42171k.a()).test(typeName);
        } else {
            synchronized (this.f42171k) {
                try {
                    if (this.f42171k.b()) {
                        test = ((Predicate) this.f42171k.a()).test(typeName);
                    } else {
                        InterfaceC6594bV metadata = getMetadata(diagnosticsHandler);
                        if (metadata != null && metadata.c()) {
                            C10098wW d10 = metadata.d();
                            if (d10.c()) {
                                set = d10.a();
                                Predicate a10 = a(set);
                                this.f42171k.a((C7) a10);
                                test = a10.test(typeName);
                            }
                        }
                        set = null;
                        Predicate a102 = a(set);
                        this.f42171k.a((C7) a102);
                        test = a102.test(typeName);
                    }
                } finally {
                }
            }
        }
        return test ? registerKeyUse(typeName) : self();
    }

    public T registerKeyUse(String str) {
        if (!this.f42169i.contains(str) && this.f42168h.add(str)) {
            this.f42161a.register(str);
        }
        return (T) self();
    }

    public abstract M50 self();

    public void verifyMappingFileHash(DiagnosticsHandler diagnosticsHandler) {
        diagnosticsHandler.error(new StringDiagnostic("Cannot verify map file hash for partitions"));
        throw new RuntimeException("Cannot verify map file hash for partitions");
    }

    private static Predicate a(final Set set) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a10;
                a10 = M50.a(Set.this, (String) obj);
                return a10;
            }
        };
    }

    public static boolean a(Set set, String str) {
        return set == null || set.contains(C4932Bl.q(str));
    }
}
