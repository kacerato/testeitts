package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.Version;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.InterfaceC8500mv;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

public class DesugaredMethodsList extends C10689e {

    private final C2 f54599j;

    private final boolean f54600k;

    private final StringConsumer f54601l;

    public DesugaredMethodsList(int i10, boolean z10, C5094Ef0 c5094Ef0, InterfaceC11677v0 interfaceC11677v0, Collection collection, StringConsumer stringConsumer, Collection collection2) {
        super(c5094Ef0, interfaceC11677v0, collection, null, collection2);
        this.f54599j = C2.a(i10);
        this.f54600k = z10;
        this.f54601l = stringConsumer;
    }

    public static void a(DesugaredMethodsListCommand desugaredMethodsListCommand) {
        new DesugaredMethodsList(desugaredMethodsListCommand.getMinApi(), desugaredMethodsListCommand.isAndroidPlatformBuild(), desugaredMethodsListCommand.getReporter(), desugaredMethodsListCommand.getDesugarLibrarySpecification(), desugaredMethodsListCommand.getDesugarLibraryImplementation(), desugaredMethodsListCommand.getOutputConsumer(), desugaredMethodsListCommand.getLibrary()).run();
    }

    public static void main(final String[] strArr) {
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                DesugaredMethodsList.a(strArr);
            }
        });
    }

    public static void run(final DesugaredMethodsListCommand desugaredMethodsListCommand) throws CompilationFailedException {
        if (desugaredMethodsListCommand.isHelp()) {
            System.out.println(DesugaredMethodsListCommand.getUsageMessage());
            return;
        }
        if (desugaredMethodsListCommand.isVersion()) {
            System.out.println("DesugaredMethodsList " + Version.getVersionString());
            return;
        }
        AbstractC8333lv.b(desugaredMethodsListCommand.getReporter(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                DesugaredMethodsList.a(DesugaredMethodsListCommand.this);
            }
        });
    }

    @Override
    public C2 run() throws IOException {
        C2 d10 = this.f54641b.d();
        a(d10, this.f54599j, new o(this.f54640a, this.f54645f, true, this.f54599j, this.f54600k, true).b(this.f54643d, this.f54642c));
        return d10;
    }

    @Override
    public final void a(C2 c22, C2 c23, ArrayList arrayList) {
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            this.f54601l.accept((String) obj, this.f54640a.f50691j);
        }
        this.f54601l.finished(this.f54640a.f50691j);
    }

    public static void run(String[] strArr) throws CompilationFailedException, IOException {
        run(DesugaredMethodsListCommand.parse(strArr));
    }

    public static void a(String[] strArr) {
        try {
            run(strArr);
        } catch (IOException e10) {
            throw new C5325If(e10.getMessage(), e10);
        }
    }
}
