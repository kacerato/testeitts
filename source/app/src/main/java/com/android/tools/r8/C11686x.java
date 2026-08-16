package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.internal.QG;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.function.Consumer;

public class C11686x {

    public static final boolean f58661a = true;

    public static class a extends BaseCommand {

        public static final String f58662e = String.join("\n", AbstractC7552hC.a("Usage: dexsegments [options] <input-files>", " where <input-files> are dex files", "  --version               # Print the version of r8.", "  --help                  # Print this message."));

        public static class C0916a extends BaseCommand.Builder<a, C0916a> {
            public C0916a() {
                super(C11662i.b());
            }

            @Override
            public final BaseCommand.Builder c() {
                return this;
            }

            @Override
            public final BaseCommand makeCommand() {
                return isPrintHelp() ? new a(isPrintHelp()) : new a(a().a());
            }
        }

        public a(C11662i c11662i) {
            super(c11662i);
        }

        public static C0916a c() {
            return new C0916a();
        }

        @Override
        public final C8570nJ b() {
            return new C8570nJ();
        }

        public a(boolean z10) {
            super(z10, false);
        }
    }

    public static class b {

        public int f58663a = 0;

        public int f58664b = 0;

        public int a() {
            return this.f58663a;
        }

        public int b() {
            return this.f58664b;
        }
    }

    public static Map<Integer, b> a(a aVar) throws IOException, ResourceException {
        if (aVar.isPrintHelp()) {
            System.out.println(a.f58662e);
            return null;
        }
        return a(aVar.a());
    }

    public static Map<Integer, b> b(C11662i c11662i) throws IOException, ResourceException {
        return a(c11662i);
    }

    public static QG a(C11662i c11662i) {
        QG qg2 = new QG();
        for (int i10 : com.android.tools.r8.dex.E.a()) {
            qg2.a(i10, new b());
        }
        C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
        try {
            ArrayList a10 = c11662i.a((Consumer) null);
            int size = a10.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = a10.get(i11);
                i11++;
                ProgramResource programResource = (ProgramResource) obj;
                if (programResource.getKind() == ProgramResource.Kind.DEX) {
                    InputStream byteStream = programResource.getByteStream();
                    if (byteStream != null) {
                        c8950pe.f51581b.addFirst(byteStream);
                    }
                    Origin origin = programResource.getOrigin();
                    boolean z10 = com.android.tools.r8.dex.C.f35669m;
                    ArrayList arrayList = new com.android.tools.r8.dex.C(new com.android.tools.r8.dex.D(origin, AbstractC6706c8.a(byteStream)), com.android.tools.r8.graph.V.f36877c, new C8570nJ(), 0, null).f35672c;
                    int size2 = arrayList.size();
                    int i12 = 0;
                    while (i12 < size2) {
                        Object obj2 = arrayList.get(i12);
                        i12++;
                        com.android.tools.r8.dex.E e10 = (com.android.tools.r8.dex.E) obj2;
                        if (!f58661a && !qg2.a(e10.f35684a)) {
                            throw new AssertionError((Object) com.android.tools.r8.dex.E.a(e10.f35684a));
                        }
                        b bVar = (b) qg2.get(e10.f35684a);
                        int i13 = e10.f35685b;
                        int i14 = e10.f35687d - e10.f35686c;
                        bVar.f58663a += i13;
                        bVar.f58664b += i14;
                    }
                }
            }
            c8950pe.close();
            return qg2;
        } catch (Throwable th2) {
            try {
                c8950pe.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
