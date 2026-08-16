package java.lang;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.Optional;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import jdk.internal.ValueBased;
import jdk.internal.access.SharedSecrets;
import jdk.internal.javac.Restricted;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Runtime.class
 */
public final class Runtime {
    private static final Runtime currentRuntime = new Runtime();
    private static Version version;

    public native int availableProcessors();

    public native long freeMemory();

    public native long totalMemory();

    public native long maxMemory();

    public native void gc();

    public static Runtime getRuntime() {
        return currentRuntime;
    }

    private Runtime() {
    }

    public void exit(int status) {
        Shutdown.exit(status);
    }

    public void addShutdownHook(Thread hook) {
        ApplicationShutdownHooks.add(hook);
    }

    public boolean removeShutdownHook(Thread hook) {
        return ApplicationShutdownHooks.remove(hook);
    }

    public void halt(int status) {
        Shutdown.beforeHalt();
        Shutdown.halt(status);
    }

    @Deprecated(since = "18")
    public Process exec(String command) throws IOException {
        return exec(command, (String[]) null, (File) null);
    }

    @Deprecated(since = "18")
    public Process exec(String command, String[] envp) throws IOException {
        return exec(command, envp, (File) null);
    }

    @Deprecated(since = "18")
    public Process exec(String command, String[] envp, File dir) throws IOException {
        if (command.isEmpty()) {
            throw new IllegalArgumentException("Empty command");
        }
        StringTokenizer st = new StringTokenizer(command);
        String[] cmdarray = new String[st.countTokens()];
        int i10 = 0;
        while (st.hasMoreTokens()) {
            cmdarray[i10] = st.nextToken();
            i10++;
        }
        return exec(cmdarray, envp, dir);
    }

    public Process exec(String[] cmdarray) throws IOException {
        return exec(cmdarray, (String[]) null, (File) null);
    }

    public Process exec(String[] cmdarray, String[] envp) throws IOException {
        return exec(cmdarray, envp, (File) null);
    }

    public Process exec(String[] cmdarray, String[] envp, File dir) throws IOException {
        return new ProcessBuilder(cmdarray).environment(envp).directory(dir).start();
    }

    @Deprecated(since = "18", forRemoval = true)
    public void runFinalization() {
        SharedSecrets.getJavaLangRefAccess().runFinalization();
    }

    @Restricted
    @CallerSensitive
    public void load(String filename) {
        Class<?> caller = Reflection.getCallerClass();
        Reflection.ensureNativeAccess(caller, Runtime.class, "load", false);
        load0(caller, filename);
    }

    public void load0(Class<?> fromClass, String filename) {
        File file = new File(filename);
        if (!file.isAbsolute()) {
            throw new UnsatisfiedLinkError("Expecting an absolute path of the library: " + filename);
        }
        ClassLoader.loadLibrary(fromClass, file);
    }

    @Restricted
    @CallerSensitive
    public void loadLibrary(String libname) {
        Class<?> caller = Reflection.getCallerClass();
        Reflection.ensureNativeAccess(caller, Runtime.class, "loadLibrary", false);
        loadLibrary0(caller, libname);
    }

    public void loadLibrary0(Class<?> fromClass, String libname) {
        if (libname.indexOf(File.separatorChar) != -1) {
            throw new UnsatisfiedLinkError("Directory separator should not appear in library name: " + libname);
        }
        ClassLoader.loadLibrary(fromClass, libname);
    }

    public static Version version() {
        Version v10 = version;
        if (v10 == null) {
            v10 = new Version(VersionProps.versionNumbers(), VersionProps.pre(), VersionProps.build(), VersionProps.optional());
            version = v10;
        }
        return v10;
    }

    @ValueBased
    public static final class Version implements Comparable<Version> {
        private final List<Integer> version;
        private final Optional<String> pre;
        private final Optional<Integer> build;
        private final Optional<String> optional;

        private Version(List<Integer> unmodifiableListOfVersions, Optional<String> pre, Optional<Integer> build, Optional<String> optional) {
            this.version = unmodifiableListOfVersions;
            this.pre = pre;
            this.build = build;
            this.optional = optional;
        }

        public static Version parse(String s10) {
            Optional<Integer> of2;
            if (s10 == null) {
                throw new NullPointerException();
            }
            if (isSimpleNumber(s10)) {
                return new Version(List.of(Integer.valueOf(Integer.parseInt(s10))), Optional.empty(), Optional.empty(), Optional.empty());
            }
            Matcher m10 = VersionPattern.VSTR_PATTERN.matcher(s10);
            if (!m10.matches()) {
                throw new IllegalArgumentException("Invalid version string: '" + s10 + "'");
            }
            String[] split = m10.group("VNUM").split("\\.");
            Integer[] version = new Integer[split.length];
            for (int i10 = 0; i10 < split.length; i10++) {
                version[i10] = Integer.valueOf(Integer.parseInt(split[i10]));
            }
            Optional<String> pre = Optional.ofNullable(m10.group("PRE"));
            String b10 = m10.group("BUILD");
            if (b10 == null) {
                of2 = Optional.empty();
            } else {
                of2 = Optional.of(Integer.valueOf(Integer.parseInt(b10)));
            }
            Optional<Integer> build = of2;
            Optional<String> optional = Optional.ofNullable(m10.group("OPT"));
            if (build.isEmpty()) {
                if (m10.group("PLUS") != null) {
                    if (optional.isPresent()) {
                        if (pre.isPresent()) {
                            throw new IllegalArgumentException("'+' found with pre-release and optional components:'" + s10 + "'");
                        }
                    } else {
                        throw new IllegalArgumentException("'+' found with neither build or optional components: '" + s10 + "'");
                    }
                } else if (optional.isPresent() && pre.isEmpty()) {
                    throw new IllegalArgumentException("optional component must be preceded by a pre-release component or '+': '" + s10 + "'");
                }
            }
            return new Version(List.of(version), pre, build, optional);
        }

        private static boolean isSimpleNumber(String s10) {
            int i10 = 0;
            while (i10 < s10.length()) {
                char c10 = s10.charAt(i10);
                char lowerBound = i10 > 0 ? '0' : '1';
                if (c10 >= lowerBound && c10 <= '9') {
                    i10++;
                } else {
                    return false;
                }
            }
            return true;
        }

        public int feature() {
            return this.version.get(0).intValue();
        }

        public int interim() {
            if (this.version.size() > 1) {
                return this.version.get(1).intValue();
            }
            return 0;
        }

        public int update() {
            if (this.version.size() > 2) {
                return this.version.get(2).intValue();
            }
            return 0;
        }

        public int patch() {
            if (this.version.size() > 3) {
                return this.version.get(3).intValue();
            }
            return 0;
        }

        @Deprecated(since = "10")
        public int major() {
            return feature();
        }

        @Deprecated(since = "10")
        public int minor() {
            return interim();
        }

        @Deprecated(since = "10")
        public int security() {
            return update();
        }

        public List<Integer> version() {
            return this.version;
        }

        public Optional<String> pre() {
            return this.pre;
        }

        public Optional<Integer> build() {
            return this.build;
        }

        public Optional<String> optional() {
            return this.optional;
        }

        @Override
        public int compareTo(Version obj) {
            return compare(obj, false);
        }

        public int compareToIgnoreOptional(Version obj) {
            return compare(obj, true);
        }

        private int compare(Version obj, boolean ignoreOpt) {
            if (obj == null) {
                throw new NullPointerException();
            }
            int ret = compareVersion(obj);
            if (ret != 0) {
                return ret;
            }
            int ret2 = comparePre(obj);
            if (ret2 != 0) {
                return ret2;
            }
            int ret3 = compareBuild(obj);
            if (ret3 != 0) {
                return ret3;
            }
            if (!ignoreOpt) {
                return compareOptional(obj);
            }
            return 0;
        }

        private int compareVersion(Version obj) {
            int size = this.version.size();
            int oSize = obj.version().size();
            int min = Math.min(size, oSize);
            for (int i10 = 0; i10 < min; i10++) {
                int val = this.version.get(i10).intValue();
                int oVal = obj.version().get(i10).intValue();
                if (val != oVal) {
                    return val - oVal;
                }
            }
            return size - oSize;
        }

        private int comparePre(Version obj) {
            Optional<String> oPre = obj.pre();
            if (this.pre.isEmpty()) {
                if (oPre.isPresent()) {
                    return 1;
                }
                return 0;
            }
            if (oPre.isEmpty()) {
                return -1;
            }
            String val = this.pre.get();
            String oVal = oPre.get();
            if (val.matches("\\d+")) {
                if (oVal.matches("\\d+")) {
                    return new BigInteger(val).compareTo(new BigInteger(oVal));
                }
                return -1;
            }
            if (oVal.matches("\\d+")) {
                return 1;
            }
            return val.compareTo(oVal);
        }

        private int compareBuild(Version obj) {
            Optional<Integer> oBuild = obj.build();
            if (oBuild.isPresent()) {
                if (this.build.isPresent()) {
                    return this.build.get().compareTo(oBuild.get());
                }
                return -1;
            }
            if (this.build.isPresent()) {
                return 1;
            }
            return 0;
        }

        private int compareOptional(Version obj) {
            Optional<String> oOpt = obj.optional();
            if (this.optional.isEmpty()) {
                if (oOpt.isPresent()) {
                    return -1;
                }
                return 0;
            }
            if (oOpt.isEmpty()) {
                return 1;
            }
            return this.optional.get().compareTo(oOpt.get());
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder((String) this.version.stream().map((v0) -> {
                return v0.toString();
            }).collect(Collectors.joining(".")));
            this.pre.ifPresent(v10 -> {
                sb2.append("-").append(v10);
            });
            if (this.build.isPresent()) {
                sb2.append("+").append((Object) this.build.get());
                if (this.optional.isPresent()) {
                    sb2.append("-").append(this.optional.get());
                }
            } else if (this.optional.isPresent()) {
                sb2.append(this.pre.isPresent() ? "-" : "+-");
                sb2.append(this.optional.get());
            }
            return sb2.toString();
        }

        public boolean equals(Object obj) {
            boolean ret = equalsIgnoreOptional(obj);
            if (!ret) {
                return false;
            }
            Version that = (Version) obj;
            return optional().equals(that.optional());
        }

        public boolean equalsIgnoreOptional(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Version) {
                Version that = (Version) obj;
                if (version().equals(that.version()) && pre().equals(that.pre()) && build().equals(that.build())) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int h10 = (17 * 1) + this.version.hashCode();
            return (17 * ((17 * ((17 * h10) + this.pre.hashCode())) + this.build.hashCode())) + this.optional.hashCode();
        }
    }

    private static class VersionPattern {
        private static final String VNUM = "(?<VNUM>[1-9][0-9]*(?:(?:\\.0)*\\.[1-9][0-9]*)*)";
        private static final String PRE = "(?:-(?<PRE>[a-zA-Z0-9]+))?";
        private static final String BUILD = "(?:(?<PLUS>\\+)(?<BUILD>0|[1-9][0-9]*)?)?";
        private static final String OPT = "(?:-(?<OPT>[-a-zA-Z0-9.]+))?";
        private static final String VSTR_FORMAT = "(?<VNUM>[1-9][0-9]*(?:(?:\\.0)*\\.[1-9][0-9]*)*)(?:-(?<PRE>[a-zA-Z0-9]+))?(?:(?<PLUS>\\+)(?<BUILD>0|[1-9][0-9]*)?)?(?:-(?<OPT>[-a-zA-Z0-9.]+))?";
        static final Pattern VSTR_PATTERN = Pattern.compile(VSTR_FORMAT);
        static final String VNUM_GROUP = "VNUM";
        static final String PRE_GROUP = "PRE";
        static final String PLUS_GROUP = "PLUS";
        static final String BUILD_GROUP = "BUILD";
        static final String OPT_GROUP = "OPT";

        private VersionPattern() {
        }
    }
}
