package com.android.tools.r8.tracereferences;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.PackageReference;

public interface TraceReferencesConsumer {

    public interface AccessFlags {
        boolean isPrivate();

        boolean isProtected();

        boolean isPublic();

        boolean isStatic();
    }

    public interface ClassAccessFlags extends AccessFlags {
        boolean isAnnotation();

        boolean isEnum();

        boolean isInterface();

        @Override
        boolean isPrivate();

        @Override
        boolean isProtected();

        @Override
        boolean isPublic();

        @Override
        boolean isStatic();
    }

    public interface FieldAccessFlags extends AccessFlags {
        @Override
        boolean isPrivate();

        @Override
        boolean isProtected();

        @Override
        boolean isPublic();

        @Override
        boolean isStatic();
    }

    public static class ForwardingConsumer implements TraceReferencesConsumer {

        private static final ForwardingConsumer f58422b = new ForwardingConsumer(null);

        private final TraceReferencesConsumer f58423a;

        public ForwardingConsumer(TraceReferencesConsumer traceReferencesConsumer) {
            this.f58423a = traceReferencesConsumer;
        }

        @Override
        public void acceptField(TracedField tracedField, DiagnosticsHandler diagnosticsHandler) {
            TraceReferencesConsumer traceReferencesConsumer = this.f58423a;
            if (traceReferencesConsumer != null) {
                traceReferencesConsumer.acceptField(tracedField, diagnosticsHandler);
            }
        }

        @Override
        public void acceptMethod(TracedMethod tracedMethod, DiagnosticsHandler diagnosticsHandler) {
            TraceReferencesConsumer traceReferencesConsumer = this.f58423a;
            if (traceReferencesConsumer != null) {
                traceReferencesConsumer.acceptMethod(tracedMethod, diagnosticsHandler);
            }
        }

        @Override
        public void acceptPackage(PackageReference packageReference, DiagnosticsHandler diagnosticsHandler) {
            TraceReferencesConsumer traceReferencesConsumer = this.f58423a;
            if (traceReferencesConsumer != null) {
                traceReferencesConsumer.acceptPackage(packageReference, diagnosticsHandler);
            }
        }

        @Override
        public void acceptType(TracedClass tracedClass, DiagnosticsHandler diagnosticsHandler) {
            TraceReferencesConsumer traceReferencesConsumer = this.f58423a;
            if (traceReferencesConsumer != null) {
                traceReferencesConsumer.acceptType(tracedClass, diagnosticsHandler);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            TraceReferencesConsumer traceReferencesConsumer = this.f58423a;
            if (traceReferencesConsumer != null) {
                traceReferencesConsumer.finished(diagnosticsHandler);
            }
        }
    }

    public interface MethodAccessFlags extends AccessFlags {
        @Override
        boolean isPrivate();

        @Override
        boolean isProtected();

        @Override
        boolean isPublic();

        @Override
        boolean isStatic();
    }

    public interface TracedClass extends TracedReference<ClassReference, ClassAccessFlags> {
        @Override
        ClassAccessFlags getAccessFlags();
    }

    public interface TracedField extends TracedReference<FieldReference, FieldAccessFlags> {
        @Override
        FieldAccessFlags getAccessFlags();
    }

    public interface TracedMethod extends TracedReference<MethodReference, MethodAccessFlags> {
        @Override
        MethodAccessFlags getAccessFlags();
    }

    public interface TracedReference<T, F> {
        F getAccessFlags();

        T getReference();

        DefinitionContext getReferencedFromContext();

        boolean isMissingDefinition();
    }

    static TraceReferencesConsumer emptyConsumer() {
        return ForwardingConsumer.f58422b;
    }

    void acceptField(TracedField tracedField, DiagnosticsHandler diagnosticsHandler);

    void acceptMethod(TracedMethod tracedMethod, DiagnosticsHandler diagnosticsHandler);

    default void acceptPackage(PackageReference packageReference, DiagnosticsHandler diagnosticsHandler) {
    }

    void acceptType(TracedClass tracedClass, DiagnosticsHandler diagnosticsHandler);

    default void finished(DiagnosticsHandler diagnosticsHandler) {
    }
}
