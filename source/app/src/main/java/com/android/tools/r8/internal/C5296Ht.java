package com.android.tools.r8.internal;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.shaking.C11502x3;
import com.android.tools.r8.shaking.InterfaceC11485w3;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class C5296Ht implements DataResourceProvider.Visitor {

    public static final boolean f40899f = true;

    public final InterfaceC6044Uq0 f40900a;

    public final C5094Ef0 f40901b;

    public final ArrayList f40902c = new ArrayList();

    public final ArrayList f40903d = new ArrayList();

    public C8304ll0 f40904e;

    public C5296Ht(C5094Ef0 c5094Ef0, InterfaceC6044Uq0 interfaceC6044Uq0) {
        this.f40900a = interfaceC6044Uq0;
        this.f40901b = c5094Ef0;
    }

    public final void a(DataEntryResource dataEntryResource, Consumer consumer) {
        try {
            InputStream byteStream = dataEntryResource.getByteStream();
            try {
                consumer.accept(new C11502x3(dataEntryResource.getOrigin(), byteStream));
                byteStream.close();
            } catch (Throwable th2) {
                if (byteStream != null) {
                    try {
                        byteStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (ResourceException e10) {
            this.f40901b.error(new StringDiagnostic("Failed to open input: " + e10.getMessage(), dataEntryResource.getOrigin()));
        } catch (Exception e11) {
            this.f40901b.error(new ExceptionDiagnostic(e11, dataEntryResource.getOrigin()));
        }
    }

    @Override
    public final void visit(DataDirectoryResource dataDirectoryResource) {
    }

    @Override
    public final void visit(DataEntryResource dataEntryResource) {
        if (!dataEntryResource.getName().startsWith("META-INF/proguard") ? false : dataEntryResource.getName().substring(17).startsWith("/")) {
            if (!f40899f && a(dataEntryResource)) {
                throw new AssertionError();
            }
            final ArrayList arrayList = this.f40902c;
            Objects.requireNonNull(arrayList);
            a(dataEntryResource, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((InterfaceC11485w3) obj);
                }
            });
            return;
        }
        if (a(dataEntryResource)) {
            if (!f40899f) {
                if (dataEntryResource.getName().startsWith("META-INF/proguard") ? dataEntryResource.getName().substring(17).startsWith("/") : false) {
                    throw new AssertionError();
                }
            }
            final ArrayList arrayList2 = this.f40903d;
            Objects.requireNonNull(arrayList2);
            a(dataEntryResource, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    List.this.add((InterfaceC11485w3) obj);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009f, code lost:
    
        r0 = r8.f40904e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(DataEntryResource dataEntryResource) {
        C8304ll0 c8304ll0;
        C8304ll0 c8304ll02;
        int i10;
        int i11;
        int i12;
        int i13;
        if (!dataEntryResource.getName().startsWith("META-INF/com.android.tools/r8")) {
            return false;
        }
        String substring = dataEntryResource.getName().substring(29);
        if (substring.startsWith("/")) {
            return true;
        }
        if (!substring.startsWith("-from-") && !substring.startsWith("-upto-")) {
            return false;
        }
        C8304ll0 c8304ll03 = C8304ll0.f50094f;
        if (substring.startsWith("-from-")) {
            String substring2 = substring.substring(6);
            char[] cArr = C10656zq0.f54545a;
            int indexOf = substring2.indexOf(45);
            int indexOf2 = substring2.indexOf(47);
            if (indexOf == -1) {
                indexOf = indexOf2;
            } else if (indexOf2 != -1) {
                indexOf = Math.min(indexOf, indexOf2);
            }
            if (indexOf == -1) {
                return false;
            }
            try {
                c8304ll03 = C8304ll0.a(substring2.substring(0, indexOf));
                substring = substring2.substring(indexOf);
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        if (substring.startsWith("-upto-")) {
            String substring3 = substring.substring(6);
            int indexOf3 = substring3.indexOf(47);
            if (indexOf3 == -1) {
                return false;
            }
            try {
                c8304ll0 = C8304ll0.a(substring3.substring(0, indexOf3));
            } catch (IllegalArgumentException unused2) {
                return false;
            }
        } else {
            c8304ll0 = null;
        }
        if (this.f40904e == null) {
            this.f40904e = (C8304ll0) this.f40900a.get();
        }
        return this.f40904e.a(c8304ll03) && (c8304ll0 == null || ((i10 = c8304ll0.f50096b) == (i11 = c8304ll02.f50096b) ? !((i12 = c8304ll0.f50097c) == (i13 = c8304ll02.f50097c) ? c8304ll0.f50098d <= c8304ll02.f50098d : i12 <= i13) : i10 > i11));
    }

    public final void a(Consumer consumer) {
        (!this.f40903d.isEmpty() ? this.f40903d : this.f40902c).forEach(consumer);
    }
}
