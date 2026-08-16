package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8304ll0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.StringDiagnostic;
import java.nio.file.Path;
import java.nio.file.Paths;

public class ExtractR8RulesCommand extends BaseCommand {

    static final String f35289j = C10656zq0.b("Usage: TBD", "  --rules-output <file>      # Output the extracted keep rules.", "  --compiler-version <version>  # Output the proguard rules extracted.", "  --include-origin-comments  # Include comments with origin for extracted rules.", "  --version                  # Print the version.", "  --help                     # Print this message.");

    static final boolean f35290k = true;

    private final StringConsumer f35291e;

    private final boolean f35292f;

    private final C8304ll0 f35293g;

    private final C4724u1 f35294h;

    private final C5094Ef0 f35295i;

    public static class Builder extends BaseCommand.Builder<ExtractR8RulesCommand, Builder> {

        private final C4724u1 f35296f;

        private StringConsumer f35297g;

        private boolean f35298h;

        private C8304ll0 f35299i;

        @Override
        public final BaseCommand.Builder c() {
            return this;
        }

        public Builder setCompilerVersion(C8304ll0 c8304ll0) {
            this.f35299i = c8304ll0;
            return this;
        }

        public Builder setIncludeOriginComments(boolean z10) {
            this.f35298h = z10;
            return this;
        }

        public Builder setRulesConsumer(StringConsumer stringConsumer) {
            this.f35297g = stringConsumer;
            return this;
        }

        public Builder setRulesOutputPath(Path path) {
            this.f35297g = new StringConsumer.FileConsumer(path);
            return this;
        }

        @Override
        public ExtractR8RulesCommand makeCommand() {
            if (!isPrintHelp() && !isPrintVersion()) {
                return new ExtractR8RulesCommand(this.f35296f, a().a(), this.f35297g, this.f35298h, this.f35299i, b());
            }
            return new ExtractR8RulesCommand(isPrintHelp(), isPrintVersion());
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            super(diagnosticsHandler);
            this.f35296f = new C4724u1();
            this.f35297g = null;
            this.f35298h = false;
            this.f35299i = null;
        }

        private Builder() {
            super(C11662i.b());
            this.f35296f = new C4724u1();
            this.f35297g = null;
            this.f35298h = false;
            this.f35299i = null;
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
                } else if (trim.equals("--rules-output")) {
                    i10++;
                    builder.setRulesOutputPath(Paths.get(strArr[i10], new String[0]));
                } else if (trim.equals("--compiler-version")) {
                    i10++;
                    builder.setCompilerVersion(C8304ll0.a(strArr[i10]));
                } else if (trim.equals("--include-origin-comments")) {
                    builder.setIncludeOriginComments(true);
                } else {
                    if (trim.startsWith("--")) {
                        C5094Ef0 b10 = builder.b();
                        b10.a(null, new StringDiagnostic("Unknown option: " + trim, com.android.tools.r8.origin.a.f56150f));
                        throw b10.f39969c;
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
    public final C8570nJ b() {
        C8570nJ c8570nJ = new C8570nJ(this.f35294h, this.f35295i);
        c8570nJ.f50697l = DexIndexedConsumer.emptyConsumer();
        if (!f35290k && !c8570nJ.f50601G0) {
            throw new AssertionError();
        }
        c8570nJ.f50601G0 = false;
        return c8570nJ;
    }

    public C8304ll0 getCompilerVersion() {
        return this.f35293g;
    }

    public boolean getIncludeOriginComments() {
        return this.f35292f;
    }

    public StringConsumer getRulesConsumer() {
        return this.f35291e;
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private ExtractR8RulesCommand(C4724u1 c4724u1, C11662i c11662i, StringConsumer stringConsumer, boolean z10, C8304ll0 c8304ll0, C5094Ef0 c5094Ef0) {
        super(c11662i);
        this.f35294h = c4724u1;
        this.f35291e = stringConsumer;
        this.f35292f = z10;
        this.f35293g = c8304ll0;
        this.f35295i = c5094Ef0;
    }

    private ExtractR8RulesCommand(boolean z10, boolean z11) {
        super(z10, z11);
        this.f35294h = new C4724u1();
        this.f35291e = null;
        this.f35292f = false;
        this.f35293g = null;
        this.f35295i = new C5094Ef0();
    }
}
