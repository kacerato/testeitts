package com.android.tools.r8;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10096wV;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9929vV;
import com.android.tools.r8.internal.InterfaceC8500mv;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.C11662i;
import java.io.PrintStream;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;

public class ExtractMarker {
    private static void a(MarkerInfoConsumer markerInfoConsumer, C5094Ef0 c5094Ef0, Origin origin, final C11662i.a aVar) {
        final ArrayList arrayList = new ArrayList();
        try {
            AbstractC8333lv.a(c5094Ef0, new AbstractC8333lv.a() {
                @Override
                public final void run() {
                    ExtractMarker.a(List.this, aVar);
                }
            });
            arrayList.sort(Comparator.comparing(new F1()));
            markerInfoConsumer.acceptMarkerInfo(new C9929vV(AT.a((Collection) arrayList, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new C10096wV((com.android.tools.r8.dex.W) obj);
                }
            }), origin));
        } catch (CompilationFailedException e10) {
            throw new D(e10);
        }
    }

    public static void b(MarkerInfoConsumer markerInfoConsumer, C5094Ef0 c5094Ef0, byte[] bArr, Origin origin) {
        a(markerInfoConsumer, c5094Ef0, origin, C11662i.b().a(bArr, origin));
    }

    public static void main(final String[] strArr) throws Exception {
        AbstractC8333lv.a(new InterfaceC8500mv() {
            @Override
            public final void run() {
                ExtractMarker.a(strArr);
            }
        });
    }

    public static void run(ExtractMarkerCommand extractMarkerCommand) throws CompilationFailedException {
        final MarkerInfoConsumer markerInfoConsumer = extractMarkerCommand.getMarkerInfoConsumer();
        final C5094Ef0 c5094Ef0 = new C5094Ef0(extractMarkerCommand.getDiagnosticsHandler());
        try {
            extractMarkerCommand.forEachEntry(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    ExtractMarker.a(MarkerInfoConsumer.this, c5094Ef0, (Path) obj, (Origin) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    ExtractMarker.a(MarkerInfoConsumer.this, c5094Ef0, (byte[]) obj, (Origin) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    ExtractMarker.b(MarkerInfoConsumer.this, c5094Ef0, (byte[]) obj, (Origin) obj2);
                }
            });
        } catch (D e10) {
            throw e10.f35223b;
        }
    }

    public static void a(List list, C11662i.a aVar) {
        C11662i a10 = aVar.a();
        C8570nJ c8570nJ = new C8570nJ();
        c8570nJ.f50626O1 = true;
        c8570nJ.d(com.android.tools.r8.internal.C2.P);
        list.addAll(new C4303c(a10, c8570nJ, new C8659ns0("ExtractMarker", false)).a().f38367e.d());
    }

    public static void a(MarkerInfoConsumer markerInfoConsumer, C5094Ef0 c5094Ef0, Path path, Origin origin) {
        a(markerInfoConsumer, c5094Ef0, origin, C11662i.b().c(path));
    }

    public static void a(MarkerInfoConsumer markerInfoConsumer, C5094Ef0 c5094Ef0, byte[] bArr, Origin origin) {
        a(markerInfoConsumer, c5094Ef0, origin, C11662i.b().b(bArr, origin));
    }

    public static void a(String[] strArr) {
        PrintStream printStream = System.out;
        ExtractMarkerCommand build = ExtractMarkerCommand.parse(strArr).setMarkerInfoConsumer(new E(printStream)).build();
        if (build.isPrintHelp()) {
            printStream.println(ExtractMarkerCommand.f35276g);
        } else {
            run(build);
        }
    }
}
