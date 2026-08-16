package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C11022x0;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.InvalidMappingFileException;
import com.android.tools.r8.retrace.MappingSupplierBase;
import com.android.tools.r8.retrace.ProguardMapProducer;
import com.android.tools.r8.retrace.ProguardMappingSupplier;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class C10043w80 extends ProguardMappingSupplier {

    public static final boolean f53419g = true;

    public ProguardMapProducer f53420a;

    public final boolean f53421b;

    public final boolean f53422c;

    public C10912b f53423d;

    public final HashSet f53424e = new HashSet();

    public final HashSet f53425f = new HashSet();

    public C10043w80(ProguardMapProducer proguardMapProducer, boolean z10, boolean z11) {
        this.f53420a = proguardMapProducer;
        this.f53421b = z10;
        this.f53422c = z11;
    }

    public static void a(C10912b.a aVar) {
        aVar.f55831a = true;
    }

    @Override
    public final Set getMapVersions(DiagnosticsHandler diagnosticsHandler) {
        if (this.f53423d == null) {
            createRetracer(diagnosticsHandler);
        }
        if (f53419g || this.f53423d != null) {
            return this.f53423d.b();
        }
        throw new AssertionError();
    }

    @Override
    public final MappingSupplierBase mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference) {
        String typeName = classReference.getTypeName();
        if (!this.f53422c && !this.f53425f.contains(typeName)) {
            this.f53424e.add(classReference.getTypeName());
        }
        return this;
    }

    @Override
    public final MappingSupplierBase registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference) {
        ClassReference holderClass = fieldReference.getHolderClass();
        String typeName = holderClass.getTypeName();
        if (!this.f53422c && !this.f53425f.contains(typeName)) {
            this.f53424e.add(holderClass.getTypeName());
        }
        return this;
    }

    @Override
    public final MappingSupplierBase registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference) {
        ClassReference holderClass = methodReference.getHolderClass();
        String typeName = holderClass.getTypeName();
        if (!this.f53422c && !this.f53425f.contains(typeName)) {
            this.f53424e.add(holderClass.getTypeName());
        }
        return this;
    }

    @Override
    public final void verifyMappingFileHash(DiagnosticsHandler diagnosticsHandler) {
        try {
            InputStream inputStream = this.f53420a.get();
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
                StringBuilder sb2 = new StringBuilder();
                char[] cArr = new char[2048];
                while (true) {
                    int read = inputStreamReader.read(cArr);
                    if (read == -1) {
                        break;
                    } else {
                        sb2.append(cArr, 0, read);
                    }
                }
                C11022x0.a a10 = C11022x0.a(sb2.toString());
                if (a10.f56102a) {
                    boolean z10 = C11022x0.a.f56101c;
                    if (!z10 && a10.f56103b == null) {
                        throw new AssertionError();
                    }
                    diagnosticsHandler.error(new StringDiagnostic(a10.f56103b));
                    if (!z10 && a10.f56103b == null) {
                        throw new AssertionError();
                    }
                    throw new RuntimeException(a10.f56103b);
                }
                if (!a10.a()) {
                    if (!C11022x0.a.f56101c && a10.f56103b == null) {
                        throw new AssertionError();
                    }
                    diagnosticsHandler.warning(new StringDiagnostic(a10.f56103b));
                }
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        } catch (IOException e10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e10));
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final C10137wk0 createRetracer(DiagnosticsHandler diagnosticsHandler) {
        Yi1 yi1;
        com.android.tools.r8.naming.P c9375s80;
        MapVersion s10;
        if (this.f53420a == null) {
            if (f53419g || this.f53423d != null) {
                return C10137wk0.a(C7093eV.a(this.f53423d), diagnosticsHandler);
            }
            throw new AssertionError();
        }
        if (this.f53423d == null || !this.f53424e.isEmpty()) {
            try {
                if (this.f53422c) {
                    yi1 = null;
                } else {
                    HashSet hashSet = this.f53424e;
                    Objects.requireNonNull(hashSet);
                    yi1 = new Yi1(hashSet);
                }
                boolean z10 = this.f53423d == null;
                if (this.f53420a.isFileBacked()) {
                    c9375s80 = new C9542t80(this.f53420a.getPath(), yi1, z10);
                } else {
                    c9375s80 = new C9375s80(this.f53420a.get(), yi1, z10);
                }
                com.android.tools.r8.naming.P p10 = c9375s80;
                C10912b c10912b = this.f53423d;
                if (c10912b == null) {
                    s10 = MapVersion.MAP_VERSION_NONE;
                } else {
                    com.android.tools.r8.naming.mappinginformation.b bVar = c10912b.f55828d.isEmpty() ? null : (com.android.tools.r8.naming.mappinginformation.b) c10912b.f55828d.iterator().next();
                    s10 = bVar == null ? MapVersion.MAP_VERSION_UNKNOWN : bVar.s();
                }
                this.f53423d = C10912b.a(p10, s10, diagnosticsHandler, true, this.f53421b, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10043w80.a((C10912b.a) obj);
                    }
                }).a(this.f53423d);
                this.f53425f.addAll(this.f53424e);
                this.f53424e.clear();
            } catch (Exception e10) {
                throw new InvalidMappingFileException(e10);
            }
        }
        if (this.f53422c) {
            this.f53420a = null;
        }
        return C10137wk0.a(C7093eV.a(this.f53423d), diagnosticsHandler);
    }
}
