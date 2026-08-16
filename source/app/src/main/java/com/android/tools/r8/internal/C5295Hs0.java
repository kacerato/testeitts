package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

public final class C5295Hs0 implements TraceReferencesConsumer {

    public final HashSet f40894a = new HashSet();

    public final HashMap f40895b = new HashMap();

    public final HashMap f40896c = new HashMap();

    public final HashSet f40897d = new HashSet();

    public static Set a(ClassReference classReference) {
        return new HashSet();
    }

    public static Set b(ClassReference classReference) {
        return new HashSet();
    }

    @Override
    public final void acceptField(TraceReferencesConsumer.TracedField tracedField, DiagnosticsHandler diagnosticsHandler) {
        ((Set) this.f40895b.computeIfAbsent(tracedField.getReference().getHolderClass(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5295Hs0.a((ClassReference) obj);
            }
        })).add(tracedField);
    }

    @Override
    public final void acceptMethod(TraceReferencesConsumer.TracedMethod tracedMethod, DiagnosticsHandler diagnosticsHandler) {
        ((Set) this.f40896c.computeIfAbsent(tracedMethod.getReference().getHolderClass(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5295Hs0.b((ClassReference) obj);
            }
        })).add(tracedMethod);
    }

    @Override
    public final void acceptPackage(PackageReference packageReference, DiagnosticsHandler diagnosticsHandler) {
        this.f40897d.add(packageReference);
    }

    @Override
    public final void acceptType(TraceReferencesConsumer.TracedClass tracedClass, DiagnosticsHandler diagnosticsHandler) {
        this.f40894a.add(tracedClass);
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
