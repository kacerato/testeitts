package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class ExtractMarkerCommand {

    static final String f35276g = String.join("\n", AbstractC7552hC.a("Usage: extractmarker [options] <input-files>", " where <input-files> are D8 supported input/output files and options are:", "  --help                  # Print this message."));

    private final boolean f35277a;

    private final DiagnosticsHandler f35278b;

    private final MarkerInfoConsumer f35279c;

    private final ArrayList f35280d;

    private final ArrayList f35281e;

    private final ArrayList f35282f;

    public static class Builder {

        private boolean f35283a = false;

        private final ArrayList f35284b = new ArrayList();

        private final ArrayList f35285c = new ArrayList();

        private final ArrayList f35286d = new ArrayList();

        private MarkerInfoConsumer f35287e;

        private final DiagnosticsHandler f35288f;

        public Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f35288f = diagnosticsHandler;
        }

        public Builder addClassProgramData(byte[] bArr, Origin origin) {
            this.f35286d.add(new C8699o50(origin, bArr));
            return this;
        }

        public Builder addDexProgramData(byte[] bArr, Origin origin) {
            this.f35285c.add(new C8699o50(origin, bArr));
            return this;
        }

        public Builder addProgramFiles(Path... pathArr) {
            return addProgramFiles(Arrays.asList(pathArr));
        }

        public ExtractMarkerCommand build() {
            return isPrintHelp() ? new ExtractMarkerCommand(isPrintHelp()) : new ExtractMarkerCommand(this.f35288f, this.f35287e, this.f35284b, this.f35285c, this.f35286d);
        }

        public boolean isPrintHelp() {
            return this.f35283a;
        }

        public Builder setMarkerInfoConsumer(MarkerInfoConsumer markerInfoConsumer) {
            this.f35287e = markerInfoConsumer;
            return this;
        }

        public Builder setPrintHelp(boolean z10) {
            this.f35283a = z10;
            return this;
        }

        public Builder addProgramFiles(Collection<Path> collection) {
            this.f35284b.addAll(collection);
            return this;
        }
    }

    private static void a(String[] strArr, Builder builder) {
        for (String str : strArr) {
            String trim = str.trim();
            if (trim.equals("--help")) {
                builder.setPrintHelp(true);
            } else if (!trim.startsWith("--")) {
                builder.addProgramFiles(Paths.get(trim, new String[0]));
            } else {
                throw new C5325If("Unknown option: " + trim);
            }
        }
    }

    public static Builder builder() {
        return builder(new F());
    }

    public static Builder parse(String[] strArr) {
        Builder builder = builder();
        a(strArr, builder);
        return builder;
    }

    public void forEachEntry(final BiConsumer<Path, Origin> biConsumer, final BiConsumer<byte[], Origin> biConsumer2, final BiConsumer<byte[], Origin> biConsumer3) {
        this.f35280d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ExtractMarkerCommand.a(BiConsumer.this, (Path) obj);
            }
        });
        this.f35281e.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ExtractMarkerCommand.a(BiConsumer.this, (C8699o50) obj);
            }
        });
        this.f35282f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ExtractMarkerCommand.b(BiConsumer.this, (C8699o50) obj);
            }
        });
    }

    public DiagnosticsHandler getDiagnosticsHandler() {
        return this.f35278b;
    }

    public MarkerInfoConsumer getMarkerInfoConsumer() {
        return this.f35279c;
    }

    public boolean isPrintHelp() {
        return this.f35277a;
    }

    public static void b(BiConsumer biConsumer, C8699o50 c8699o50) {
        biConsumer.accept((byte[]) c8699o50.b(), (Origin) c8699o50.a());
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    private ExtractMarkerCommand(DiagnosticsHandler diagnosticsHandler, MarkerInfoConsumer markerInfoConsumer, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.f35277a = false;
        this.f35278b = diagnosticsHandler;
        this.f35279c = markerInfoConsumer;
        this.f35280d = arrayList;
        this.f35281e = arrayList2;
        this.f35282f = arrayList3;
    }

    public static void a(BiConsumer biConsumer, Path path) {
        biConsumer.accept(path, new PathOrigin(path));
    }

    public static void a(BiConsumer biConsumer, C8699o50 c8699o50) {
        biConsumer.accept((byte[]) c8699o50.b(), (Origin) c8699o50.a());
    }

    private ExtractMarkerCommand(boolean z10) {
        this.f35277a = z10;
        this.f35278b = null;
        this.f35279c = null;
        this.f35280d = null;
        this.f35281e = null;
        this.f35282f = null;
    }
}
