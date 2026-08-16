package java.lang;

import java.io.PrintStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

class VersionProps {
    private static final String launcher_name = "openjdk";
    private static final String java_version = "25.0.2";
    private static final String java_version_date = "2026-01-20";
    private static final String java_runtime_name = "OpenJDK Runtime Environment";
    private static final String java_runtime_version = "25.0.2+10-b432.48";
    private static final String VERSION_NUMBER = "25.0.2";
    private static final String VERSION_SPECIFICATION = "25";
    private static final String VERSION_BUILD = "10";
    private static final String VERSION_PRE = "";
    private static final String CLASSFILE_MAJOR_MINOR = "69.0";
    private static final String VENDOR = "JetBrains s.r.o.";
    private static final String VENDOR_URL = "https://www.jetbrains.com/";
    private static final String VERSION_OPT = "b432.48";
    private static final boolean isLTS = VERSION_OPT.startsWith("LTS");
    private static String VENDOR_VERSION = "JBR-25.0.2+10-432.48-nomod";
    private static String VENDOR_URL_BUG = "https://youtrack.jetbrains.com/issues/JBR";
    private static String VENDOR_URL_VM_BUG = "https://youtrack.jetbrains.com/issues/JBR";

    VersionProps() {
    }

    public static void init(Map<String, String> props) {
        props.put("java.version", "25.0.2");
        props.put("java.version.date", java_version_date);
        props.put("java.runtime.version", java_runtime_version);
        props.put("java.runtime.name", java_runtime_name);
        if (!VENDOR_VERSION.isEmpty()) {
            props.put("java.vendor.version", VENDOR_VERSION);
        }
        props.put("java.class.version", CLASSFILE_MAJOR_MINOR);
        props.put("java.specification.version", VERSION_SPECIFICATION);
        props.put("java.specification.name", "Java Platform API Specification");
        props.put("java.specification.vendor", "Oracle Corporation");
        props.put("java.vendor", VENDOR);
        props.put("java.vendor.url", VENDOR_URL);
        props.put("java.vendor.url.bug", VENDOR_URL_BUG);
    }

    private static int parseVersionNumber(String version, int prevIndex, int index) {
        if (index - prevIndex > 1 && Character.digit(version.charAt(prevIndex), 10) <= 0) {
            throw new IllegalArgumentException("Leading zeros not supported (" + version.substring(prevIndex, index) + ")");
        }
        return Integer.parseInt(version, prevIndex, index, 10);
    }

    static List<Integer> parseVersionNumbers(String version) {
        int size = 0;
        int prevIndex = 0;
        do {
            prevIndex = version.indexOf(46, prevIndex) + 1;
            size++;
        } while (prevIndex > 0);
        Integer[] verNumbers = new Integer[size];
        int n10 = 0;
        int prevIndex2 = 0;
        int index = version.indexOf(46);
        while (index > -1) {
            verNumbers[n10] = Integer.valueOf(parseVersionNumber(version, prevIndex2, index));
            prevIndex2 = index + 1;
            index = version.indexOf(46, prevIndex2);
            n10++;
        }
        verNumbers[n10] = Integer.valueOf(parseVersionNumber(version, prevIndex2, version.length()));
        if (verNumbers[0].intValue() == 0 || verNumbers[n10].intValue() == 0) {
            throw new IllegalArgumentException("Leading/trailing zeros not allowed (" + Arrays.toString(verNumbers) + ")");
        }
        return List.of(verNumbers);
    }

    public static List<Integer> versionNumbers() {
        return parseVersionNumbers("25.0.2");
    }

    public static Optional<String> pre() {
        return optionalOf("");
    }

    public static Optional<Integer> build() {
        if ("10".isEmpty()) {
            return Optional.empty();
        }
        return Optional.of(Integer.valueOf(Integer.parseInt("10")));
    }

    public static Optional<String> optional() {
        return optionalOf(VERSION_OPT);
    }

    private static Optional<String> optionalOf(String value) {
        if (!value.isEmpty()) {
            return Optional.of(value);
        }
        return Optional.empty();
    }

    private static void print(boolean err) {
        String jdk_debug_level;
        PrintStream ps = err ? System.err : System.out;
        if (err) {
            ps.println("openjdk version \"25.0.2\" 2026-01-20" + (isLTS ? " LTS" : ""));
        } else {
            ps.println("openjdk 25.0.2 2026-01-20" + (isLTS ? " LTS" : ""));
        }
        String jdk_debug_level2 = System.getProperty("jdk.debug", "release");
        if ("release".equals(jdk_debug_level2)) {
            jdk_debug_level = "";
        } else {
            jdk_debug_level = jdk_debug_level2 + " ";
        }
        String vendor_version = VENDOR_VERSION.isEmpty() ? "" : " " + VENDOR_VERSION;
        ps.println(java_runtime_name + vendor_version + " (" + jdk_debug_level + "build " + java_runtime_version + ")");
        String java_vm_name = System.getProperty("java.vm.name");
        String java_vm_version = System.getProperty("java.vm.version");
        String java_vm_info = System.getProperty("java.vm.info");
        ps.println(java_vm_name + vendor_version + " (" + jdk_debug_level + "build " + java_vm_version + ", " + java_vm_info + ")");
    }
}
