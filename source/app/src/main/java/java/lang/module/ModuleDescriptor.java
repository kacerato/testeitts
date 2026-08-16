package java.lang.module;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.AccessFlag;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.access.JavaLangModuleAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.module.Checks;
import jdk.internal.module.ModuleInfo;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public final class ModuleDescriptor implements Comparable<ModuleDescriptor> {
    private final String name;
    private final Version version;
    private final String rawVersionString;
    private final Set<Modifier> modifiers;
    private final boolean open;
    private final boolean automatic;
    private final Set<Requires> requires;
    private final Set<Exports> exports;
    private final Set<Opens> opens;
    private final Set<String> uses;
    private final Set<Provides> provides;
    private final Set<String> packages;
    private final String mainClass;
    private transient int hash;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ModuleDescriptor.class.desiredAssertionStatus();
        SharedSecrets.setJavaLangModuleAccess(new JavaLangModuleAccess() {
            public Builder newModuleBuilder(String mn2, boolean strict, Set<Modifier> modifiers) {
                return new Builder(mn2, strict, modifiers);
            }

            public Set<String> packages(Builder builder) {
                return builder.packages();
            }

            public void requires(Builder builder, Set<Requires.Modifier> ms, String mn2, String rawCompiledVersion) {
                builder.requires(ms, mn2, rawCompiledVersion);
            }

            public Requires newRequires(Set<Requires.Modifier> ms, String mn2, Version v10) {
                return new Requires(ms, mn2, v10, true);
            }

            public Exports newExports(Set<Exports.Modifier> ms, String source) {
                return new Exports(ms, source, Set.of(), true);
            }

            public Exports newExports(Set<Exports.Modifier> ms, String source, Set<String> targets) {
                return new Exports(ms, source, targets, true);
            }

            public Opens newOpens(Set<Opens.Modifier> ms, String source, Set<String> targets) {
                return new Opens(ms, source, targets, true);
            }

            public Opens newOpens(Set<Opens.Modifier> ms, String source) {
                return new Opens(ms, source, Set.of(), true);
            }

            public Provides newProvides(String service, List<String> providers) {
                return new Provides(service, providers, true);
            }

            public ModuleDescriptor newModuleDescriptor(String name, Version version, Set<Modifier> modifiers, Set<Requires> requires, Set<Exports> exports, Set<Opens> opens, Set<String> uses, Set<Provides> provides, Set<String> packages, String mainClass, int hashCode) {
                return new ModuleDescriptor(name, version, modifiers, requires, exports, opens, uses, provides, packages, mainClass, hashCode, false);
            }

            public Configuration resolveAndBind(ModuleFinder finder, Collection<String> roots, PrintStream traceOutput) {
                return Configuration.resolveAndBind(finder, roots, traceOutput);
            }

            public Configuration newConfiguration(ModuleFinder finder, Map<String, Set<String>> graph) {
                return new Configuration(finder, graph);
            }
        });
    }

    public enum Modifier {
        OPEN(AccessFlag.OPEN.mask()),
        AUTOMATIC(0),
        SYNTHETIC(AccessFlag.SYNTHETIC.mask()),
        MANDATED(AccessFlag.MANDATED.mask());

        private final int mask;

        Modifier(int mask) {
            this.mask = mask;
        }

        private int mask() {
            return this.mask;
        }
    }

    public static final class Requires implements Comparable<Requires> {
        private final Set<Modifier> mods;
        private final String name;
        private final Version compiledVersion;
        private final String rawCompiledVersion;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ModuleDescriptor.class.desiredAssertionStatus();
        }

        public enum Modifier {
            TRANSITIVE(AccessFlag.TRANSITIVE.mask()),
            STATIC(AccessFlag.STATIC_PHASE.mask()),
            SYNTHETIC(AccessFlag.SYNTHETIC.mask()),
            MANDATED(AccessFlag.MANDATED.mask());

            private final int mask;

            Modifier(int mask) {
                this.mask = mask;
            }

            private int mask() {
                return this.mask;
            }
        }

        private Requires(Set<Modifier> ms, String mn2, Version v10, String vs) {
            if (!$assertionsDisabled && v10 != null && vs != null) {
                throw new AssertionError();
            }
            this.mods = Set.copyOf(ms);
            this.name = mn2;
            this.compiledVersion = v10;
            this.rawCompiledVersion = vs;
        }

        private Requires(Set<Modifier> ms, String mn2, Version v10, boolean unused) {
            this.mods = ms;
            this.name = mn2;
            this.compiledVersion = v10;
            this.rawCompiledVersion = null;
        }

        public Set<Modifier> modifiers() {
            return this.mods;
        }

        public Set<AccessFlag> accessFlags() {
            int mask = 0;
            for (Modifier modifier : this.mods) {
                mask |= modifier.mask();
            }
            return AccessFlag.maskToAccessFlags(mask, AccessFlag.Location.MODULE_REQUIRES);
        }

        public String name() {
            return this.name;
        }

        public Optional<Version> compiledVersion() {
            return Optional.ofNullable(this.compiledVersion);
        }

        public Optional<String> rawCompiledVersion() {
            if (this.compiledVersion != null) {
                return Optional.of(this.compiledVersion.toString());
            }
            return Optional.ofNullable(this.rawCompiledVersion);
        }

        @Override
        public int compareTo(Requires that) {
            if (this == that) {
                return 0;
            }
            int c10 = name().compareTo(that.name());
            if (c10 != 0) {
                return c10;
            }
            long v12 = ModuleDescriptor.modsValue(modifiers());
            long v22 = ModuleDescriptor.modsValue(that.modifiers());
            int c11 = Long.compare(v12, v22);
            if (c11 != 0) {
                return c11;
            }
            int c12 = ModuleDescriptor.compare(this.compiledVersion, that.compiledVersion);
            if (c12 != 0) {
                return c12;
            }
            int c13 = ModuleDescriptor.compare(this.rawCompiledVersion, that.rawCompiledVersion);
            if (c13 != 0) {
                return c13;
            }
            return 0;
        }

        public boolean equals(Object ob2) {
            if (ob2 instanceof Requires) {
                Requires that = (Requires) ob2;
                if (this.name.equals(that.name) && this.mods.equals(that.mods) && Objects.equals(this.compiledVersion, that.compiledVersion) && Objects.equals(this.rawCompiledVersion, that.rawCompiledVersion)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int hash = (this.name.hashCode() * 43) + ModuleDescriptor.modsHashCode(this.mods);
            if (this.compiledVersion != null) {
                hash = (hash * 43) + this.compiledVersion.hashCode();
            }
            if (this.rawCompiledVersion != null) {
                hash = (hash * 43) + this.rawCompiledVersion.hashCode();
            }
            return hash;
        }

        public String toString() {
            String what;
            if (this.compiledVersion != null) {
                what = name() + " (@" + ((Object) this.compiledVersion) + ")";
            } else {
                what = name();
            }
            return ModuleDescriptor.toString(this.mods, what);
        }
    }

    public static final class Exports implements Comparable<Exports> {
        private final Set<Modifier> mods;
        private final String source;
        private final Set<String> targets;

        public enum Modifier {
            SYNTHETIC(AccessFlag.SYNTHETIC.mask()),
            MANDATED(AccessFlag.MANDATED.mask());

            private final int mask;

            Modifier(int mask) {
                this.mask = mask;
            }

            private int mask() {
                return this.mask;
            }
        }

        private Exports(Set<Modifier> ms, String source, Set<String> targets) {
            this.mods = Set.copyOf(ms);
            this.source = source;
            this.targets = Set.copyOf(targets);
        }

        private Exports(Set<Modifier> ms, String source, Set<String> targets, boolean unused) {
            this.mods = ms;
            this.source = source;
            this.targets = targets;
        }

        public Set<Modifier> modifiers() {
            return this.mods;
        }

        public Set<AccessFlag> accessFlags() {
            int mask = 0;
            for (Modifier modifier : this.mods) {
                mask |= modifier.mask();
            }
            return AccessFlag.maskToAccessFlags(mask, AccessFlag.Location.MODULE_EXPORTS);
        }

        public boolean isQualified() {
            return !this.targets.isEmpty();
        }

        public String source() {
            return this.source;
        }

        public Set<String> targets() {
            return this.targets;
        }

        @Override
        public int compareTo(Exports that) {
            if (this == that) {
                return 0;
            }
            int c10 = this.source.compareTo(that.source);
            if (c10 != 0) {
                return c10;
            }
            long v12 = ModuleDescriptor.modsValue(modifiers());
            long v22 = ModuleDescriptor.modsValue(that.modifiers());
            int c11 = Long.compare(v12, v22);
            if (c11 != 0) {
                return c11;
            }
            int c12 = ModuleDescriptor.compare((Set) this.targets, (Set) that.targets);
            if (c12 != 0) {
                return c12;
            }
            return 0;
        }

        public int hashCode() {
            int hash = ModuleDescriptor.modsHashCode(this.mods);
            return (((hash * 43) + this.source.hashCode()) * 43) + this.targets.hashCode();
        }

        public boolean equals(Object ob2) {
            if (ob2 instanceof Exports) {
                Exports other = (Exports) ob2;
                if (Objects.equals(this.mods, other.mods) && Objects.equals(this.source, other.source) && Objects.equals(this.targets, other.targets)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            String s10 = ModuleDescriptor.toString(this.mods, this.source);
            if (this.targets.isEmpty()) {
                return s10;
            }
            return s10 + " to " + ((Object) this.targets);
        }
    }

    public static final class Opens implements Comparable<Opens> {
        private final Set<Modifier> mods;
        private final String source;
        private final Set<String> targets;

        public enum Modifier {
            SYNTHETIC(AccessFlag.SYNTHETIC.mask()),
            MANDATED(AccessFlag.MANDATED.mask());

            private final int mask;

            Modifier(int mask) {
                this.mask = mask;
            }

            private int mask() {
                return this.mask;
            }
        }

        private Opens(Set<Modifier> ms, String source, Set<String> targets) {
            this.mods = Set.copyOf(ms);
            this.source = source;
            this.targets = Set.copyOf(targets);
        }

        private Opens(Set<Modifier> ms, String source, Set<String> targets, boolean unused) {
            this.mods = ms;
            this.source = source;
            this.targets = targets;
        }

        public Set<Modifier> modifiers() {
            return this.mods;
        }

        public Set<AccessFlag> accessFlags() {
            int mask = 0;
            for (Modifier modifier : this.mods) {
                mask |= modifier.mask();
            }
            return AccessFlag.maskToAccessFlags(mask, AccessFlag.Location.MODULE_OPENS);
        }

        public boolean isQualified() {
            return !this.targets.isEmpty();
        }

        public String source() {
            return this.source;
        }

        public Set<String> targets() {
            return this.targets;
        }

        @Override
        public int compareTo(Opens that) {
            if (this == that) {
                return 0;
            }
            int c10 = this.source.compareTo(that.source);
            if (c10 != 0) {
                return c10;
            }
            long v12 = ModuleDescriptor.modsValue(modifiers());
            long v22 = ModuleDescriptor.modsValue(that.modifiers());
            int c11 = Long.compare(v12, v22);
            if (c11 != 0) {
                return c11;
            }
            int c12 = ModuleDescriptor.compare((Set) this.targets, (Set) that.targets);
            if (c12 != 0) {
                return c12;
            }
            return 0;
        }

        public int hashCode() {
            int hash = ModuleDescriptor.modsHashCode(this.mods);
            return (((hash * 43) + this.source.hashCode()) * 43) + this.targets.hashCode();
        }

        public boolean equals(Object ob2) {
            if (ob2 instanceof Opens) {
                Opens other = (Opens) ob2;
                if (Objects.equals(this.mods, other.mods) && Objects.equals(this.source, other.source) && Objects.equals(this.targets, other.targets)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            String s10 = ModuleDescriptor.toString(this.mods, this.source);
            if (this.targets.isEmpty()) {
                return s10;
            }
            return s10 + " to " + ((Object) this.targets);
        }
    }

    public static final class Provides implements Comparable<Provides> {
        private final String service;
        private final List<String> providers;

        private Provides(String service, List<String> providers) {
            this.service = service;
            this.providers = List.copyOf(providers);
        }

        private Provides(String service, List<String> providers, boolean unused) {
            this.service = service;
            this.providers = providers;
        }

        public String service() {
            return this.service;
        }

        public List<String> providers() {
            return this.providers;
        }

        @Override
        public int compareTo(Provides that) {
            if (this == that) {
                return 0;
            }
            int c10 = this.service.compareTo(that.service);
            if (c10 != 0) {
                return c10;
            }
            int size1 = this.providers.size();
            int size2 = that.providers.size();
            for (int index = 0; index < Math.min(size1, size2); index++) {
                String e12 = this.providers.get(index);
                String e22 = that.providers.get(index);
                int c11 = e12.compareTo(e22);
                if (c11 != 0) {
                    return c11;
                }
            }
            if (size1 == size2) {
                return 0;
            }
            return size1 > size2 ? 1 : -1;
        }

        public int hashCode() {
            return (this.service.hashCode() * 43) + this.providers.hashCode();
        }

        public boolean equals(Object ob2) {
            if (ob2 instanceof Provides) {
                Provides other = (Provides) ob2;
                if (Objects.equals(this.service, other.service) && Objects.equals(this.providers, other.providers)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return this.service + " with " + ((Object) this.providers);
        }
    }

    public static final class Version implements Comparable<Version> {
        private final String version;
        private final List<Object> sequence;
        private final List<Object> pre;
        private final List<Object> build;

        private static int takeNumber(String s10, int i10, List<Object> acc) {
            char c10;
            int d10 = s10.charAt(i10) - '0';
            int n10 = s10.length();
            while (true) {
                i10++;
                if (i10 >= n10 || (c10 = s10.charAt(i10)) < '0' || c10 > '9') {
                    break;
                }
                d10 = (d10 * 10) + (c10 - '0');
            }
            acc.add(Integer.valueOf(d10));
            return i10;
        }

        private static int takeString(String s10, int i10, List<Object> acc) {
            char c10;
            int n10 = s10.length();
            while (true) {
                i10++;
                if (i10 >= n10 || (c10 = s10.charAt(i10)) == '.' || c10 == '-' || c10 == '+' || (c10 >= '0' && c10 <= '9')) {
                    break;
                }
            }
            acc.add(s10.substring(i10, i10));
            return i10;
        }

        private Version(String v10) {
            if (v10 == null) {
                throw new IllegalArgumentException("Null version string");
            }
            int n10 = v10.length();
            if (n10 == 0) {
                throw new IllegalArgumentException("Empty version string");
            }
            char c10 = v10.charAt(0);
            if (c10 < '0' || c10 > '9') {
                throw new IllegalArgumentException(v10 + ": Version string does not start with a number");
            }
            List<Object> sequence = new ArrayList<>(4);
            List<Object> pre = new ArrayList<>(2);
            List<Object> build = new ArrayList<>(2);
            int i10 = takeNumber(v10, 0, sequence);
            while (i10 < n10) {
                c10 = v10.charAt(i10);
                if (c10 == '.') {
                    i10++;
                } else if (c10 == '-' || c10 == '+') {
                    i10++;
                    break;
                } else if (c10 >= '0' && c10 <= '9') {
                    i10 = takeNumber(v10, i10, sequence);
                } else {
                    i10 = takeString(v10, i10, sequence);
                }
            }
            if (c10 == '-' && i10 >= n10) {
                throw new IllegalArgumentException(v10 + ": Empty pre-release");
            }
            while (true) {
                if (i10 >= n10) {
                    break;
                }
                c10 = v10.charAt(i10);
                if (c10 == '.' || c10 == '-') {
                    i10++;
                } else if (c10 == '+') {
                    i10++;
                    break;
                } else if (c10 >= '0' && c10 <= '9') {
                    i10 = takeNumber(v10, i10, pre);
                } else {
                    i10 = takeString(v10, i10, pre);
                }
            }
            if (c10 == '+' && i10 >= n10) {
                throw new IllegalArgumentException(v10 + ": Empty pre-release");
            }
            while (i10 < n10) {
                char c11 = v10.charAt(i10);
                if (c11 == '.' || c11 == '-' || c11 == '+') {
                    i10++;
                } else if (c11 >= '0' && c11 <= '9') {
                    i10 = takeNumber(v10, i10, build);
                } else {
                    i10 = takeString(v10, i10, build);
                }
            }
            this.version = v10;
            this.sequence = sequence;
            this.pre = pre;
            this.build = build;
        }

        public static Version parse(String v10) {
            return new Version(v10);
        }

        private int cmp(Object o12, Object o22) {
            return ((Comparable) o12).compareTo(o22);
        }

        private int compareTokens(List<Object> ts1, List<Object> ts2) {
            int n10 = Math.min(ts1.size(), ts2.size());
            for (int i10 = 0; i10 < n10; i10++) {
                Object o12 = ts1.get(i10);
                Object o22 = ts2.get(i10);
                if (((o12 instanceof Integer) && (o22 instanceof Integer)) || ((o12 instanceof String) && (o22 instanceof String))) {
                    int c10 = cmp(o12, o22);
                    if (c10 != 0) {
                        return c10;
                    }
                } else {
                    int c11 = o12.toString().compareTo(o22.toString());
                    if (c11 != 0) {
                        return c11;
                    }
                }
            }
            List<Object> rest = ts1.size() > ts2.size() ? ts1 : ts2;
            int e10 = rest.size();
            for (int i11 = n10; i11 < e10; i11++) {
                Object o10 = rest.get(i11);
                if (!(o10 instanceof Integer) || ((Integer) o10).intValue() != 0) {
                    return ts1.size() - ts2.size();
                }
            }
            return 0;
        }

        @Override
        public int compareTo(Version that) {
            int c10 = compareTokens(this.sequence, that.sequence);
            if (c10 != 0) {
                return c10;
            }
            if (this.pre.isEmpty()) {
                if (!that.pre.isEmpty()) {
                    return 1;
                }
            } else if (that.pre.isEmpty()) {
                return -1;
            }
            int c11 = compareTokens(this.pre, that.pre);
            return c11 != 0 ? c11 : compareTokens(this.build, that.build);
        }

        public boolean equals(Object ob2) {
            return (ob2 instanceof Version) && compareTo((Version) ob2) == 0;
        }

        public int hashCode() {
            return this.version.hashCode();
        }

        public String toString() {
            return this.version;
        }
    }

    private ModuleDescriptor(String name, Version version, String rawVersionString, Set<Modifier> modifiers, Set<Requires> requires, Set<Exports> exports, Set<Opens> opens, Set<String> uses, Set<Provides> provides, Set<String> packages, String mainClass) {
        if (!$assertionsDisabled && version != null && rawVersionString != null) {
            throw new AssertionError();
        }
        this.name = name;
        this.version = version;
        this.rawVersionString = rawVersionString;
        this.modifiers = Set.copyOf(modifiers);
        this.open = modifiers.contains(Modifier.OPEN);
        this.automatic = modifiers.contains(Modifier.AUTOMATIC);
        if (!$assertionsDisabled && requires.stream().map((v0) -> {
            return v0.name();
        }).distinct().count() != requires.size()) {
            throw new AssertionError();
        }
        this.requires = Set.copyOf(requires);
        this.exports = Set.copyOf(exports);
        this.opens = Set.copyOf(opens);
        this.uses = Set.copyOf(uses);
        this.provides = Set.copyOf(provides);
        this.packages = Set.copyOf(packages);
        this.mainClass = mainClass;
    }

    private ModuleDescriptor(String name, Version version, Set<Modifier> modifiers, Set<Requires> requires, Set<Exports> exports, Set<Opens> opens, Set<String> uses, Set<Provides> provides, Set<String> packages, String mainClass, int hashCode, boolean unused) {
        this.name = name;
        this.version = version;
        this.rawVersionString = null;
        this.modifiers = modifiers;
        this.open = modifiers.contains(Modifier.OPEN);
        this.automatic = modifiers.contains(Modifier.AUTOMATIC);
        this.requires = requires;
        this.exports = exports;
        this.opens = opens;
        this.uses = uses;
        this.provides = provides;
        this.packages = packages;
        this.mainClass = mainClass;
        this.hash = hashCode;
    }

    public String name() {
        return this.name;
    }

    public Set<Modifier> modifiers() {
        return this.modifiers;
    }

    public Set<AccessFlag> accessFlags() {
        int mask = 0;
        for (Modifier modifier : this.modifiers) {
            mask |= modifier.mask();
        }
        return AccessFlag.maskToAccessFlags(mask, AccessFlag.Location.MODULE);
    }

    public boolean isOpen() {
        return this.open;
    }

    public boolean isAutomatic() {
        return this.automatic;
    }

    public Set<Requires> requires() {
        return this.requires;
    }

    public Set<Exports> exports() {
        return this.exports;
    }

    public Set<Opens> opens() {
        return this.opens;
    }

    public Set<String> uses() {
        return this.uses;
    }

    public Set<Provides> provides() {
        return this.provides;
    }

    public Optional<Version> version() {
        return Optional.ofNullable(this.version);
    }

    public Optional<String> rawVersion() {
        if (this.version != null) {
            return Optional.of(this.version.toString());
        }
        return Optional.ofNullable(this.rawVersionString);
    }

    public String toNameAndVersion() {
        if (this.version != null) {
            return name() + "@" + ((Object) this.version);
        }
        return name();
    }

    public Optional<String> mainClass() {
        return Optional.ofNullable(this.mainClass);
    }

    public Set<String> packages() {
        return this.packages;
    }

    public static final class Builder {
        final String name;
        final boolean strict;
        final Set<Modifier> modifiers;
        final boolean open;
        final boolean automatic;
        final Set<String> packages = new HashSet();
        final Map<String, Requires> requires = new HashMap();
        final Map<String, Exports> exports = new HashMap();
        final Map<String, Opens> opens = new HashMap();
        final Set<String> uses = new HashSet();
        final Map<String, Provides> provides = new HashMap();
        Version version;
        String rawVersionString;
        String mainClass;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ModuleDescriptor.class.desiredAssertionStatus();
        }

        Builder(String name, boolean strict, Set<Modifier> modifiers) {
            this.name = strict ? Checks.requireModuleName(name) : name;
            this.strict = strict;
            this.modifiers = modifiers;
            this.open = modifiers.contains(Modifier.OPEN);
            this.automatic = modifiers.contains(Modifier.AUTOMATIC);
            if (!$assertionsDisabled && this.open && this.automatic) {
                throw new AssertionError();
            }
        }

        Set<String> packages() {
            return Collections.unmodifiableSet(this.packages);
        }

        public Builder requires(Requires req) {
            if (this.automatic) {
                throw new IllegalStateException("Automatic modules cannot declare dependences");
            }
            String mn2 = req.name();
            if (this.name.equals(mn2)) {
                throw new IllegalArgumentException("Dependence on self");
            }
            if (this.requires.containsKey(mn2)) {
                throw new IllegalStateException("Dependence upon " + mn2 + " already declared");
            }
            this.requires.put(mn2, req);
            return this;
        }

        public Builder requires(Set<Requires.Modifier> ms, String mn2, Version compiledVersion) {
            Objects.requireNonNull(compiledVersion);
            if (this.strict) {
                mn2 = Checks.requireModuleName(mn2);
            }
            return requires(new Requires(ms, mn2, compiledVersion, (String) null));
        }

        Builder requires(Set<Requires.Modifier> ms, String mn2, String rawCompiledVersion) {
            Requires r10;
            try {
                Version v10 = Version.parse(rawCompiledVersion);
                r10 = new Requires(ms, mn2, v10, (String) null);
            } catch (IllegalArgumentException e10) {
                if (this.strict) {
                    throw e10;
                }
                r10 = new Requires(ms, mn2, (Version) null, rawCompiledVersion);
            }
            return requires(r10);
        }

        public Builder requires(Set<Requires.Modifier> ms, String mn2) {
            if (this.strict) {
                mn2 = Checks.requireModuleName(mn2);
            }
            return requires(new Requires(ms, mn2, (Version) null, (String) null));
        }

        public Builder requires(String mn2) {
            return requires(EnumSet.noneOf(Requires.Modifier.class), mn2);
        }

        public Builder exports(Exports e10) {
            if (this.automatic) {
                throw new IllegalStateException("Automatic modules cannot declare exported packages");
            }
            String source = e10.source();
            if (this.exports.containsKey(source)) {
                throw new IllegalStateException("Exported package " + source + " already declared");
            }
            this.exports.put(source, e10);
            this.packages.add(source);
            return this;
        }

        public Builder exports(Set<Exports.Modifier> ms, String pn2, Set<String> targets) {
            Set<String> targets2 = new HashSet<>(targets);
            if (targets2.isEmpty()) {
                throw new IllegalArgumentException("Empty target set");
            }
            if (this.strict) {
                Checks.requirePackageName(pn2);
                targets2.forEach(Checks::requireModuleName);
            }
            Exports e10 = new Exports(ms, pn2, targets2);
            return exports(e10);
        }

        public Builder exports(Set<Exports.Modifier> ms, String pn2) {
            if (this.strict) {
                Checks.requirePackageName(pn2);
            }
            Exports e10 = new Exports(ms, pn2, Set.of());
            return exports(e10);
        }

        public Builder exports(String pn2, Set<String> targets) {
            return exports(Set.of(), pn2, targets);
        }

        public Builder exports(String pn2) {
            return exports(Set.of(), pn2);
        }

        public Builder opens(Opens obj) {
            if (this.open || this.automatic) {
                throw new IllegalStateException("Open or automatic modules cannot declare open packages");
            }
            String source = obj.source();
            if (this.opens.containsKey(source)) {
                throw new IllegalStateException("Open package " + source + " already declared");
            }
            this.opens.put(source, obj);
            this.packages.add(source);
            return this;
        }

        public Builder opens(Set<Opens.Modifier> ms, String pn2, Set<String> targets) {
            Set<String> targets2 = new HashSet<>(targets);
            if (targets2.isEmpty()) {
                throw new IllegalArgumentException("Empty target set");
            }
            if (this.strict) {
                Checks.requirePackageName(pn2);
                targets2.forEach(Checks::requireModuleName);
            }
            Opens opens = new Opens(ms, pn2, targets2);
            return opens(opens);
        }

        public Builder opens(Set<Opens.Modifier> ms, String pn2) {
            if (this.strict) {
                Checks.requirePackageName(pn2);
            }
            Opens e10 = new Opens(ms, pn2, Set.of());
            return opens(e10);
        }

        public Builder opens(String pn2, Set<String> targets) {
            return opens(Set.of(), pn2, targets);
        }

        public Builder opens(String pn2) {
            return opens(Set.of(), pn2);
        }

        public Builder uses(String service) {
            if (this.automatic) {
                throw new IllegalStateException("Automatic modules can not declare service dependences");
            }
            if (this.uses.contains(Checks.requireServiceTypeName(service))) {
                throw new IllegalStateException("Dependence upon service " + service + " already declared");
            }
            this.uses.add(service);
            return this;
        }

        public Builder provides(Provides p10) {
            String service = p10.service();
            if (this.provides.containsKey(service)) {
                throw new IllegalStateException("Providers of service " + service + " already declared");
            }
            this.provides.put(service, p10);
            p10.providers().forEach(name -> {
                this.packages.add(ModuleDescriptor.packageName(name));
            });
            return this;
        }

        public Builder provides(String service, List<String> providers) {
            List<String> providers2 = new ArrayList<>(providers);
            if (providers2.isEmpty()) {
                throw new IllegalArgumentException("Empty providers set");
            }
            if (this.strict) {
                Checks.requireServiceTypeName(service);
                providers2.forEach(Checks::requireServiceProviderName);
            } else {
                String pn2 = ModuleDescriptor.packageName(service);
                if (pn2.isEmpty()) {
                    throw new IllegalArgumentException(service + ": unnamed package");
                }
                for (String name : providers2) {
                    String pn3 = ModuleDescriptor.packageName(name);
                    if (pn3.isEmpty()) {
                        throw new IllegalArgumentException(name + ": unnamed package");
                    }
                }
            }
            Provides p10 = new Provides(service, providers2);
            return provides(p10);
        }

        public Builder packages(Set<String> pns) {
            if (this.strict) {
                pns = new HashSet(pns);
                pns.forEach(Checks::requirePackageName);
            }
            this.packages.addAll(pns);
            return this;
        }

        public Builder version(Version v10) {
            this.version = (Version) Objects.requireNonNull(v10);
            this.rawVersionString = null;
            return this;
        }

        public Builder version(String vs) {
            try {
                this.version = Version.parse(vs);
                this.rawVersionString = null;
            } catch (IllegalArgumentException e10) {
                if (this.strict) {
                    throw e10;
                }
                this.version = null;
                this.rawVersionString = vs;
            }
            return this;
        }

        public Builder mainClass(String mc2) {
            String pn2;
            if (this.strict) {
                mc2 = Checks.requireQualifiedClassName("main class name", mc2);
                pn2 = ModuleDescriptor.packageName(mc2);
                if (!$assertionsDisabled && pn2.isEmpty()) {
                    throw new AssertionError();
                }
            } else {
                pn2 = ModuleDescriptor.packageName(mc2);
                if (pn2.isEmpty()) {
                    throw new IllegalArgumentException(mc2 + ": unnamed package");
                }
            }
            this.packages.add(pn2);
            this.mainClass = mc2;
            return this;
        }

        public ModuleDescriptor build() {
            Set<Requires> requires = new HashSet<>(this.requires.values());
            Set<Exports> exports = new HashSet<>(this.exports.values());
            Set<Opens> opens = new HashSet<>(this.opens.values());
            if (this.strict && !this.name.equals(JRTUtil.JAVA_BASE) && !this.requires.containsKey(JRTUtil.JAVA_BASE)) {
                requires.add(new Requires((Set<Requires.Modifier>) Set.of(Requires.Modifier.MANDATED), JRTUtil.JAVA_BASE, (Version) null, (String) null));
            }
            Set<Provides> provides = new HashSet<>(this.provides.values());
            return new ModuleDescriptor(this.name, this.version, this.rawVersionString, this.modifiers, requires, exports, opens, this.uses, provides, this.packages, this.mainClass);
        }
    }

    @Override
    public int compareTo(ModuleDescriptor that) {
        if (this == that) {
            return 0;
        }
        int c10 = name().compareTo(that.name());
        if (c10 != 0) {
            return c10;
        }
        int c11 = compare(this.version, that.version);
        if (c11 != 0) {
            return c11;
        }
        int c12 = compare(this.rawVersionString, that.rawVersionString);
        if (c12 != 0) {
            return c12;
        }
        long v12 = modsValue(modifiers());
        long v22 = modsValue(that.modifiers());
        int c13 = Long.compare(v12, v22);
        if (c13 != 0) {
            return c13;
        }
        int c14 = compare((Set) this.requires, (Set) that.requires);
        if (c14 != 0) {
            return c14;
        }
        int c15 = compare((Set) this.packages, (Set) that.packages);
        if (c15 != 0) {
            return c15;
        }
        int c16 = compare((Set) this.exports, (Set) that.exports);
        if (c16 != 0) {
            return c16;
        }
        int c17 = compare((Set) this.opens, (Set) that.opens);
        if (c17 != 0) {
            return c17;
        }
        int c18 = compare((Set) this.uses, (Set) that.uses);
        if (c18 != 0) {
            return c18;
        }
        int c19 = compare((Set) this.provides, (Set) that.provides);
        if (c19 != 0) {
            return c19;
        }
        int c20 = compare(this.mainClass, that.mainClass);
        if (c20 != 0) {
            return c20;
        }
        return 0;
    }

    public boolean equals(Object ob2) {
        if (ob2 == this) {
            return true;
        }
        if (ob2 instanceof ModuleDescriptor) {
            ModuleDescriptor that = (ModuleDescriptor) ob2;
            if (this.name.equals(that.name) && this.modifiers.equals(that.modifiers) && this.requires.equals(that.requires) && Objects.equals(this.packages, that.packages) && this.exports.equals(that.exports) && this.opens.equals(that.opens) && this.uses.equals(that.uses) && this.provides.equals(that.provides) && Objects.equals(this.version, that.version) && Objects.equals(this.rawVersionString, that.rawVersionString) && Objects.equals(this.mainClass, that.mainClass)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hc2 = this.hash;
        if (hc2 == 0) {
            hc2 = (((((((((((((((((((this.name.hashCode() * 43) + modsHashCode(this.modifiers)) * 43) + this.requires.hashCode()) * 43) + Objects.hashCode(this.packages)) * 43) + this.exports.hashCode()) * 43) + this.opens.hashCode()) * 43) + this.uses.hashCode()) * 43) + this.provides.hashCode()) * 43) + Objects.hashCode(this.version)) * 43) + Objects.hashCode(this.rawVersionString)) * 43) + Objects.hashCode(this.mainClass);
            if (hc2 == 0) {
                hc2 = -1;
            }
            this.hash = hc2;
        }
        return hc2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (isOpen()) {
            sb2.append("open ");
        }
        sb2.append("module { name: ").append(toNameAndVersion());
        if (!this.requires.isEmpty()) {
            sb2.append(", ").append((Object) this.requires);
        }
        if (!this.uses.isEmpty()) {
            sb2.append(", uses: ").append((Object) this.uses);
        }
        if (!this.exports.isEmpty()) {
            sb2.append(", exports: ").append((Object) this.exports);
        }
        if (!this.opens.isEmpty()) {
            sb2.append(", opens: ").append((Object) this.opens);
        }
        if (!this.provides.isEmpty()) {
            sb2.append(", provides: ").append((Object) this.provides);
        }
        sb2.append(" }");
        return sb2.toString();
    }

    public static Builder newModule(String name, Set<Modifier> ms) {
        Set<Modifier> mods = new HashSet<>(ms);
        if (mods.contains(Modifier.AUTOMATIC) && mods.size() > 1) {
            throw new IllegalArgumentException("AUTOMATIC cannot be used with other modifiers");
        }
        return new Builder(name, true, mods);
    }

    public static Builder newModule(String name) {
        return new Builder(name, true, Set.of());
    }

    public static Builder newOpenModule(String name) {
        return new Builder(name, true, Set.of(Modifier.OPEN));
    }

    public static Builder newAutomaticModule(String name) {
        return new Builder(name, true, Set.of(Modifier.AUTOMATIC));
    }

    public static ModuleDescriptor read(InputStream in2, Supplier<Set<String>> packageFinder) throws IOException {
        return ModuleInfo.read(in2, (Supplier) Objects.requireNonNull(packageFinder)).descriptor();
    }

    public static ModuleDescriptor read(InputStream in2) throws IOException {
        return ModuleInfo.read(in2, (Supplier) null).descriptor();
    }

    public static ModuleDescriptor read(ByteBuffer bb2, Supplier<Set<String>> packageFinder) {
        return ModuleInfo.read(bb2, (Supplier) Objects.requireNonNull(packageFinder)).descriptor();
    }

    public static ModuleDescriptor read(ByteBuffer bb2) {
        return ModuleInfo.read(bb2, (Supplier) null).descriptor();
    }

    private static String packageName(String cn2) {
        int index = cn2.lastIndexOf(46);
        return index == -1 ? "" : cn2.substring(0, index);
    }

    private static <M> String toString(Set<M> mods, String what) {
        return (String) Stream.concat(mods.stream().map(e10 -> {
            return e10.toString().toLowerCase(Locale.ROOT);
        }), Stream.of(what)).collect(Collectors.joining(" "));
    }

    private static int modsHashCode(Iterable<? extends Enum<?>> enums) {
        int h10 = 0;
        for (Enum<?> e10 : enums) {
            h10 += e10.name().hashCode();
        }
        return h10;
    }

    private static <T extends Comparable<? super T>> int compare(T obj1, T obj2) {
        if (obj1 == null) {
            return obj2 == null ? 0 : -1;
        }
        if (obj2 != null) {
            return obj1.compareTo(obj2);
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object[], java.lang.Comparable[]] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object[], java.lang.Comparable[]] */
    private static <T extends Comparable<? super T>> int compare(Set<T> s12, Set<T> s22) {
        ?? array = s12.toArray();
        ?? array2 = s22.toArray();
        Arrays.sort((Object[]) array);
        Arrays.sort((Object[]) array2);
        return Arrays.compare(array, array2);
    }

    private static <E extends Enum<E>> long modsValue(Set<E> set) {
        long value = 0;
        while (set.iterator().hasNext()) {
            value += 1 << r0.next().ordinal();
        }
        return value;
    }
}
