package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.BaseCompilerCommand;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.assistant.runtime.ReflectiveOperationReceiver;
import com.android.tools.r8.assistant.runtime.ReflectiveOracle;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6069Vc;
import com.android.tools.r8.internal.C8494mt;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.utils.C11662i;
import java.util.Collections;
import java.util.List;
import java.util.function.BiPredicate;

public class R8AssistantCommand extends BaseCompilerCommand {

    private final String f35452z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public R8AssistantCommand(C11662i c11662i, CompilationMode compilationMode, ProgramConsumer programConsumer, int i10, C5094Ef0 c5094Ef0, String str) {
        super(c11662i, compilationMode, programConsumer, r4, i10, c5094Ef0, r7, false, false, r8, r12, r12, -1, new C8494mt(), null, null, false, r12, r12, null, null);
        StringConsumer.EmptyConsumer emptyConsumer = StringConsumer.emptyConsumer();
        C8570nJ.f fVar = C8570nJ.f.f50758c;
        BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean a10;
                a10 = R8AssistantCommand.a((String) obj, (Long) obj2);
                return a10;
            }
        };
        List list = Collections.EMPTY_LIST;
        this.f35452z = str;
    }

    public static boolean a(String str, Long l10) {
        return true;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    @Override
    public final C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ(new C4724u1(), g());
        c8570nJ.d(com.android.tools.r8.internal.C2.a(getMinApiLevel()));
        c8570nJ.f50736y = true;
        W.b bVar = W.b.f35809i;
        c8570nJ.f50734x0 = bVar;
        com.android.tools.r8.dex.W w10 = new com.android.tools.r8.dex.W(bVar);
        W.a aVar = W.a.f35800c;
        if (!com.android.tools.r8.dex.W.f35796i && w10.f35797a.f48234b.containsKey("backend")) {
            throw new AssertionError();
        }
        w10.f35797a.a("backend", C10656zq0.f(aVar.name()));
        w10.a(getMinApiLevel());
        c8570nJ.a(w10);
        c8570nJ.f50697l = getProgramConsumer();
        return c8570nJ;
    }

    public String getReflectiveReceiverDescriptor() {
        return this.f35452z;
    }

    public static class Builder extends BaseCompilerCommand.Builder<R8AssistantCommand, Builder> {

        private String f35453B;

        public Builder addReflectiveOperationReceiverInput(ProgramResourceProvider programResourceProvider) {
            addProgramResourceProvider(programResourceProvider);
            return this;
        }

        @Override
        public final BaseCommand.Builder c() {
            return this;
        }

        @Override
        public final void d() {
            if (!(getProgramConsumer() instanceof DexIndexedConsumer)) {
                b().a("R8 assistant does not support CF output.");
            }
            if (!n() || getMinApiLevel() < com.android.tools.r8.internal.C2.L.d()) {
                b().a("R8 assistant requires min api >= 21");
            }
        }

        @Override
        public final CompilationMode e() {
            return CompilationMode.RELEASE;
        }

        @Override
        public final BaseCommand makeCommand() {
            C6069Vc c6069Vc = new C6069Vc(b());
            addClassProgramData(c6069Vc.a(ReflectiveOracle.class), new com.android.tools.r8.origin.f("Reflective instrumentation", ReflectiveOracle.class));
            addClassProgramData(c6069Vc.a(ReflectiveOracle.Stack.class), new com.android.tools.r8.origin.f("Reflective instrumentation", ReflectiveOracle.Stack.class));
            addClassProgramData(c6069Vc.a(ReflectiveOperationReceiver.class), new com.android.tools.r8.origin.f("Reflective instrumentation", ReflectiveOperationReceiver.class));
            addClassProgramData(c6069Vc.a(ReflectiveOracle.ReflectiveOperationLogger.class), new com.android.tools.r8.origin.f("Reflective instrumentation", ReflectiveOracle.ReflectiveOperationLogger.class));
            return new R8AssistantCommand(a().a(), getMode(), getProgramConsumer(), getMinApiLevel(), b(), this.f35453B);
        }

        public Builder setReflectiveReceiverClassDescriptor(String str) {
            if (!C4932Bl.y(str)) {
                b().a("Not a valid descriptor " + str);
            }
            this.f35453B = str;
            return this;
        }

        private Builder() {
            super(new C4330e0());
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
        }
    }

    public static Builder builder() {
        return new Builder();
    }
}
