package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC8471ml0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5296Ht;
import com.android.tools.r8.internal.C8304ll0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.InterfaceC6044Uq0;
import com.android.tools.r8.shaking.InterfaceC11485w3;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Iterator;
import java.util.function.Consumer;

public class ExtractR8Rules {
    private static void a(C11662i c11662i, final StringConsumer stringConsumer, final boolean z10, C8304ll0 c8304ll0, final C5094Ef0 c5094Ef0) {
        InterfaceC6044Uq0 a10 = AbstractC8471ml0.a(c8304ll0, c5094Ef0);
        Iterator<ProgramResourceProvider> it = c11662i.h().iterator();
        while (it.hasNext()) {
            DataResourceProvider dataResourceProvider = it.next().getDataResourceProvider();
            if (dataResourceProvider == null) {
                return;
            }
            try {
                C5296Ht c5296Ht = new C5296Ht(c5094Ef0, a10);
                dataResourceProvider.accept(c5296Ht);
                c5296Ht.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ExtractR8Rules.a(z10, stringConsumer, c5094Ef0, (InterfaceC11485w3) obj);
                    }
                });
            } catch (ResourceException e10) {
                c5094Ef0.error(new ExceptionDiagnostic(e10));
            }
        }
        stringConsumer.finished(c5094Ef0);
    }

    public static void main(String[] strArr) throws CompilationFailedException {
        ExtractR8RulesCommand build = ExtractR8RulesCommand.parse(strArr).build();
        if (build.isPrintHelp()) {
            System.out.println(ExtractR8RulesCommand.f35289j);
        } else if (build.isPrintVersion()) {
            System.out.println("ExtractR8Rules 8.10.21");
        } else {
            run(build);
        }
    }

    public static void run(ExtractR8RulesCommand extractR8RulesCommand) throws CompilationFailedException {
        final C11662i a10 = extractR8RulesCommand.a();
        final StringConsumer rulesConsumer = extractR8RulesCommand.getRulesConsumer();
        final boolean includeOriginComments = extractR8RulesCommand.getIncludeOriginComments();
        final C8304ll0 compilerVersion = extractR8RulesCommand.getCompilerVersion();
        final C8570nJ b10 = extractR8RulesCommand.b();
        AbstractC8333lv.a(b10.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                ExtractR8Rules.a(C11662i.this, rulesConsumer, includeOriginComments, compilerVersion, b10);
            }
        });
    }

    public static void a(boolean z10, StringConsumer stringConsumer, C5094Ef0 c5094Ef0, InterfaceC11485w3 interfaceC11485w3) {
        if (z10) {
            try {
                stringConsumer.accept("# Rules extracted from:", c5094Ef0);
                String str = C10656zq0.f54547c;
                stringConsumer.accept(str, c5094Ef0);
                stringConsumer.accept("# ", c5094Ef0);
                stringConsumer.accept(interfaceC11485w3.getOrigin().toString(), c5094Ef0);
                stringConsumer.accept(str, c5094Ef0);
            } catch (IOException e10) {
                throw new UncheckedIOException(e10);
            }
        }
        stringConsumer.accept(interfaceC11485w3.get(), c5094Ef0);
        stringConsumer.accept(C10656zq0.f54547c, c5094Ef0);
    }

    public static void a(C11662i c11662i, StringConsumer stringConsumer, boolean z10, C8304ll0 c8304ll0, C8570nJ c8570nJ) {
        a(c11662i, stringConsumer, z10, c8304ll0, c8570nJ.f50691j);
    }
}
