package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.GenerateMainDexListCommand;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.YK;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.shaking.C11518y3;
import com.android.tools.r8.shaking.C11534z3;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GenerateMainDexListCommand extends BaseCommand {

    static final String f35313j = String.join("\n", AbstractC7552hC.a("Usage: maindex [options] <input-files>", " where <input-files> are JAR files", " and options are:", "  --lib <file>             # Add <file> as a library resource.", "  --main-dex-rules <file>  # Proguard keep rules for classes to place in the", "                           # primary dex file.", "  --main-dex-list <file>   # List of classes to place in the primary dex file.", "  --main-dex-list-output <file>  # Output the full main-dex list in <file>.", "  --version                # Print the version.", "  --help                   # Print this message."));

    static final boolean f35314k = true;

    private final AbstractC7552hC f35315e;

    private final YK f35316f;

    private final GraphConsumer f35317g;

    private final C4724u1 f35318h;

    private final C5094Ef0 f35319i;

    public static class Builder extends BaseCommand.Builder<GenerateMainDexListCommand, Builder> {

        private final C4724u1 f35320f;

        private final ArrayList f35321g;

        private StringConsumer f35322h;

        private GraphConsumer f35323i;

        public void a(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f35321g.add(new C11518y3((Path) it.next()));
            }
        }

        public Builder addMainDexRules(final List<String> list, final Origin origin) {
            a(new Runnable() {
                @Override
                public final void run() {
                    GenerateMainDexListCommand.Builder.this.a(list, origin);
                }
            });
            return this;
        }

        public Builder addMainDexRulesFiles(final Path... pathArr) {
            a(new Runnable() {
                @Override
                public final void run() {
                    GenerateMainDexListCommand.Builder.this.c(pathArr);
                }
            });
            return this;
        }

        @Override
        public final BaseCommand.Builder c() {
            return this;
        }

        public Builder setMainDexKeptGraphConsumer(GraphConsumer graphConsumer) {
            this.f35323i = graphConsumer;
            return this;
        }

        public Builder setMainDexListConsumer(StringConsumer stringConsumer) {
            this.f35322h = stringConsumer;
            return this;
        }

        public Builder setMainDexListOutputPath(Path path) {
            this.f35322h = new StringConsumer.FileConsumer(path);
            return this;
        }

        public void c(Path[] pathArr) {
            for (Path path : pathArr) {
                this.f35321g.add(new C11518y3(path));
            }
        }

        public Builder addMainDexRulesFiles(final List<Path> list) {
            a(new Runnable() {
                @Override
                public final void run() {
                    GenerateMainDexListCommand.Builder.this.a(list);
                }
            });
            return this;
        }

        @Override
        public GenerateMainDexListCommand makeCommand() {
            AbstractC7552hC a10;
            if (!isPrintHelp() && !isPrintVersion()) {
                ArrayList arrayList = this.f35321g;
                C4724u1 c4724u1 = this.f35320f;
                C5094Ef0 b10 = b();
                AbstractC7552hC abstractC7552hC = C11384q3.f57715f;
                if (arrayList.isEmpty()) {
                    int i10 = AbstractC7552hC.f48487c;
                    a10 = C6190Xe0.f45779e;
                } else {
                    C11384q3 c11384q3 = new C11384q3(c4724u1, b10);
                    c11384q3.a(arrayList);
                    a10 = AbstractC7552hC.a(c11384q3.a().p());
                }
                return new GenerateMainDexListCommand(this.f35320f, a().a(), a10, new YK(this.f35322h), this.f35323i, b());
            }
            return new GenerateMainDexListCommand(isPrintHelp(), isPrintVersion());
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35320f = new C4724u1();
            this.f35321g = new ArrayList();
            this.f35322h = null;
            this.f35323i = null;
        }

        public void a(List list, Origin origin) {
            this.f35321g.add(new C11534z3(list, Paths.get(".", new String[0]), origin));
        }

        private Builder() {
            super(C11662i.b());
            this.f35320f = new C4724u1();
            this.f35321g = new ArrayList();
            this.f35322h = null;
            this.f35323i = null;
        }
    }

    private static void a(String[] strArr, Builder builder) {
        int i10 = 0;
        while (i10 < strArr.length) {
            String trim = strArr[i10].trim();
            if (trim.length() != 0) {
                if (trim.equals("--help")) {
                    builder.setPrintHelp(true);
                } else if (trim.equals("--version")) {
                    builder.setPrintVersion(true);
                } else if (trim.equals("--lib")) {
                    i10++;
                    builder.addLibraryFiles(Paths.get(strArr[i10], new String[0]));
                } else if (trim.equals("--main-dex-rules")) {
                    i10++;
                    builder.addMainDexRulesFiles(Paths.get(strArr[i10], new String[0]));
                } else if (trim.equals("--main-dex-list")) {
                    i10++;
                    builder.addMainDexListFiles(Paths.get(strArr[i10], new String[0]));
                } else if (trim.equals("--main-dex-list-output")) {
                    i10++;
                    builder.setMainDexListOutputPath(Paths.get(strArr[i10], new String[0]));
                } else {
                    if (trim.startsWith("--")) {
                        builder.b().error(new StringDiagnostic("Unknown option: " + trim, com.android.tools.r8.origin.a.f56150f));
                    }
                    builder.addProgramFiles(Paths.get(trim, new String[0]));
                }
            }
            i10++;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder parse(String[] strArr) {
        Builder builder = builder();
        a(strArr, builder);
        return builder;
    }

    @Override
    public C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ(this.f35318h, this.f35319i);
        c8570nJ.f50697l = DexIndexedConsumer.emptyConsumer();
        c8570nJ.f50602G1 = this.f35315e;
        c8570nJ.f50629P1 = this.f35316f;
        c8570nJ.f50653X1 = this.f35317g;
        c8570nJ.f50605H1 = c8570nJ.f50690i1;
        if (!f35314k && !c8570nJ.f50601G0) {
            throw new AssertionError();
        }
        c8570nJ.f50601G0 = false;
        return c8570nJ;
    }

    public final C5094Ef0 c() {
        return this.f35319i;
    }

    public StringConsumer getMainDexListConsumer() {
        return this.f35316f;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private GenerateMainDexListCommand(C4724u1 c4724u1, C11662i c11662i, AbstractC7552hC abstractC7552hC, YK yk2, GraphConsumer graphConsumer, C5094Ef0 c5094Ef0) {
        super(c11662i);
        this.f35318h = c4724u1;
        this.f35315e = abstractC7552hC;
        this.f35316f = yk2;
        this.f35317g = graphConsumer;
        this.f35319i = c5094Ef0;
    }

    private GenerateMainDexListCommand(boolean z10, boolean z11) {
        super(z10, z11);
        this.f35318h = new C4724u1();
        this.f35315e = C6190Xe0.f45779e;
        this.f35316f = null;
        this.f35317g = null;
        this.f35319i = new C5094Ef0();
    }
}
