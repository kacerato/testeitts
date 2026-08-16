package com.jme3.input;

import com.jme3.util.res.Resources;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class JoystickCompatibilityMappings {
    private static final Logger logger = Logger.getLogger(JoystickCompatibilityMappings.class.getName());
    private static String[] searchPaths = {"joystick-mapping.properties"};
    private static Map<String, Map<String, String>> joystickMappings = new HashMap();
    private static Map<String, Map<String, AxisData>> axisMappings = new HashMap();
    private static Map<JoystickAxis, float[]> axisRangeMappings = new HashMap();
    private static Map<String, Map<String, String>> buttonMappings = new HashMap();
    private static final Map<Pattern, String> nameRemappings = new HashMap();
    private static final Map<String, String> nameCache = new HashMap();

    public static class AxisData {
        String name;
        float[] range;

        public AxisData(String str, float[] fArr) {
            this.name = str;
            this.range = fArr;
        }
    }

    static {
        loadDefaultMappings();
    }

    private JoystickCompatibilityMappings() {
    }

    public static void addAxisMapping(String str, String str2, String str3) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "addAxisMapping({0}, {1}, {2})", new Object[]{str, str2, str3});
        }
        getAxisMappings(str, true).put(str2, new AxisData(str3, new float[0]));
    }

    public static void addButtonMapping(String str, String str2, String str3) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "addButtonMapping({0}, {1}, {2})", new Object[]{str, str2, str3});
        }
        getButtonMappings(str, true).put(str2, str3);
    }

    public static void addJoystickNameRegex(String str, String str2) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "addJoystickNameRegex({0}, {1})", new Object[]{str, str2});
        }
        nameRemappings.put(Pattern.compile(str), str2);
    }

    public static void addMapping(String str, String str2, String str3) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "addMapping({0}, {1}, {2})", new Object[]{str, str2, str3});
        }
        getMappings(str, true).put(str2, str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void addMappings(Properties properties) {
        String trim;
        int indexOf;
        float[] fArr;
        for (Map.Entry<Object, Object> entry : properties.entrySet()) {
            String trim2 = String.valueOf(entry.getKey()).trim();
            int indexOf2 = trim2.indexOf(46);
            int lastIndexOf = trim2.lastIndexOf(46);
            if (lastIndexOf < 0) {
                logger.log(Level.WARNING, "Skipping mapping:{0}", entry);
            } else {
                String str = "";
                if (indexOf2 >= 0 && indexOf2 != lastIndexOf) {
                    String trim3 = trim2.substring(0, indexOf2).trim();
                    if (trim3.equals("axis") || trim3.equals("button")) {
                        str = trim3;
                        String trim4 = trim2.substring(indexOf2 + 1, lastIndexOf).trim();
                        trim = trim2.substring(lastIndexOf + 1).trim();
                        String trim5 = String.valueOf(entry.getValue()).trim();
                        if ("regex".equals(trim)) {
                            addJoystickNameRegex(trim5, trim4);
                        }
                        indexOf = trim5.indexOf(91);
                        if (indexOf <= 0) {
                            fArr = new float[2];
                            int indexOf3 = trim5.indexOf(93);
                            int indexOf4 = trim5.indexOf(44);
                            if (indexOf3 > -1 && indexOf4 > -1) {
                                try {
                                    fArr[0] = Float.parseFloat(trim5.substring(indexOf + 1, indexOf4).trim());
                                    fArr[1] = Float.parseFloat(trim5.substring(indexOf4 + 1, indexOf3).trim());
                                    trim5 = trim5.substring(0, indexOf).trim();
                                    str = "axis";
                                } catch (NumberFormatException e10) {
                                    logger.log(Level.SEVERE, "Could not parse axis range \"" + trim5.substring(indexOf) + JavadocConstants.ANCHOR_PREFIX_END, (Throwable) e10);
                                }
                            }
                        } else {
                            fArr = null;
                        }
                        if (!str.equals("button")) {
                            addButtonMapping(trim4, trim, trim5);
                        } else if (!str.equals("axis")) {
                            addMapping(trim4, trim, trim5);
                        } else if (fArr == null) {
                            addAxisMapping(trim4, trim, trim5);
                        } else {
                            addAxisMapping(trim4, trim, trim5, fArr);
                        }
                    }
                }
                indexOf2 = -1;
                String trim42 = trim2.substring(indexOf2 + 1, lastIndexOf).trim();
                trim = trim2.substring(lastIndexOf + 1).trim();
                String trim52 = String.valueOf(entry.getValue()).trim();
                if ("regex".equals(trim)) {
                }
                indexOf = trim52.indexOf(91);
                if (indexOf <= 0) {
                }
                if (!str.equals("button")) {
                }
            }
        }
    }

    private static Map<String, AxisData> getAxisMappings(String str, boolean z10) {
        Map<String, AxisData> map = axisMappings.get(str.trim());
        if (map != null || !z10) {
            return map;
        }
        HashMap hashMap = new HashMap();
        axisMappings.put(str.trim(), hashMap);
        return hashMap;
    }

    public static Map<String, String> getButtonMappings(String str, boolean z10) {
        Map<String, String> map = buttonMappings.get(str.trim());
        if (map != null || !z10) {
            return map;
        }
        HashMap hashMap = new HashMap();
        buttonMappings.put(str.trim(), hashMap);
        return hashMap;
    }

    public static Map<String, String> getJoystickButtonMappings(String str) {
        Map<String, String> buttonMappings2 = getButtonMappings(str.trim(), false);
        return buttonMappings2 == null ? Collections.emptyMap() : Collections.unmodifiableMap(buttonMappings2);
    }

    public static Map<String, String> getJoystickMappings(String str) {
        Map<String, String> mappings = getMappings(str.trim(), false);
        return mappings == null ? Collections.emptyMap() : Collections.unmodifiableMap(mappings);
    }

    public static Map<String, String> getMappings(String str, boolean z10) {
        Map<String, String> map = joystickMappings.get(str.trim());
        if (map != null || !z10) {
            return map;
        }
        HashMap hashMap = new HashMap();
        joystickMappings.put(str.trim(), hashMap);
        return hashMap;
    }

    public static String getNormalizedName(String str) {
        String str2 = nameCache.get(str);
        if (str2 != null) {
            return str2;
        }
        for (Map.Entry<Pattern, String> entry : nameRemappings.entrySet()) {
            if (entry.getKey().matcher(str).matches()) {
                nameCache.put(str, entry.getValue());
                return entry.getValue();
            }
        }
        return null;
    }

    public static void loadDefaultMappings() {
        for (String str : searchPaths) {
            try {
                loadMappings(str);
            } catch (IOException unused) {
                logger.log(Level.SEVERE, "Error searching resource path:{0}", str);
            }
        }
    }

    public static void loadMappingProperties(URL url) throws IOException {
        logger.log(Level.FINE, "Loading mapping properties:{0}", url);
        InputStream openStream = url.openStream();
        try {
            Properties properties = new Properties();
            properties.load(openStream);
            addMappings(properties);
        } finally {
            openStream.close();
        }
    }

    public static void loadMappings(String str) throws IOException {
        logger.log(Level.FINE, "Searching for mappings for path:{0}", str);
        Enumeration<URL> resources = Resources.getResources(str);
        while (resources.hasMoreElements()) {
            URL nextElement = resources.nextElement();
            try {
                loadMappingProperties(nextElement);
            } catch (IOException e10) {
                logger.log(Level.SEVERE, "Error loading:" + ((Object) nextElement), (Throwable) e10);
            }
        }
    }

    public static String remapAxis(String str, String str2) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "remapAxis({0}, {1})", new Object[]{str, str2});
        }
        String trim = str.trim();
        Map<String, AxisData> axisMappings2 = getAxisMappings(trim, false);
        if (axisMappings2 != null && axisMappings2.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped axis:{0}", axisMappings2.get(str2));
            }
            return axisMappings2.get(str2).name;
        }
        Map<String, String> mappings = getMappings(trim, false);
        if (mappings != null && mappings.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped axis:{0}", mappings.get(str2));
            }
            return mappings.get(str2);
        }
        String normalizedName = getNormalizedName(trim);
        logger2.log(level, "normalized joystick name:{0}", normalizedName);
        if (normalizedName == null) {
            return str2;
        }
        Map<String, AxisData> axisMappings3 = getAxisMappings(normalizedName, false);
        if (axisMappings3 != null && axisMappings3.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped:{0}", axisMappings3.get(str2));
            }
            return axisMappings3.get(str2).name;
        }
        Map<String, String> mappings2 = getMappings(normalizedName, false);
        if (mappings2 == null || !mappings2.containsKey(str2)) {
            return str2;
        }
        if (logger2.isLoggable(level)) {
            logger2.log(level, "returning remapped:{0}", mappings2.get(str2));
        }
        return mappings2.get(str2);
    }

    public static float remapAxisRange(JoystickAxis joystickAxis, float f10) {
        Map<String, AxisData> axisMappings2;
        String name = joystickAxis.getJoystick().getName();
        float[] fArr = axisRangeMappings.get(joystickAxis);
        if (fArr == null) {
            Map<String, AxisData> axisMappings3 = getAxisMappings(name, false);
            if (axisMappings3 == null || !axisMappings3.containsKey(joystickAxis.getName())) {
                String normalizedName = getNormalizedName(name);
                if (normalizedName != null && (axisMappings2 = getAxisMappings(normalizedName, false)) != null && axisMappings2.containsKey(joystickAxis.getName())) {
                    fArr = axisMappings2.get(joystickAxis.getName()).range;
                    axisRangeMappings.put(joystickAxis, fArr);
                }
            } else {
                fArr = axisMappings3.get(joystickAxis.getName()).range;
                axisRangeMappings.put(joystickAxis, fArr);
            }
        }
        if (fArr == null) {
            axisRangeMappings.put(joystickAxis, new float[0]);
            return f10;
        }
        if (fArr.length == 0) {
            return f10;
        }
        float f11 = fArr[1];
        float f12 = fArr[0];
        return (f10 + f11 + f12) * ((f11 - f12) / 2.0f);
    }

    public static String remapButton(String str, String str2) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "remapAxis({0}, {1})", new Object[]{str, str2});
        }
        String trim = str.trim();
        Map<String, String> buttonMappings2 = getButtonMappings(trim, false);
        if (buttonMappings2 != null && buttonMappings2.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped axis:{0}", buttonMappings2.get(str2));
            }
            return buttonMappings2.get(str2);
        }
        Map<String, String> mappings = getMappings(trim, false);
        if (mappings != null && mappings.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped axis:{0}", mappings.get(str2));
            }
            return mappings.get(str2);
        }
        String normalizedName = getNormalizedName(trim);
        logger2.log(level, "normalized joystick name:{0}", normalizedName);
        if (normalizedName == null) {
            return str2;
        }
        Map<String, String> buttonMappings3 = getButtonMappings(normalizedName, false);
        if (buttonMappings3 != null && buttonMappings3.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped:{0}", buttonMappings3.get(str2));
            }
            return buttonMappings3.get(str2);
        }
        Map<String, String> mappings2 = getMappings(normalizedName, false);
        if (mappings2 == null || !mappings2.containsKey(str2)) {
            return str2;
        }
        if (logger2.isLoggable(level)) {
            logger2.log(level, "returning remapped:{0}", mappings2.get(str2));
        }
        return mappings2.get(str2);
    }

    public static String remapComponent(String str, String str2) {
        Map<String, String> mappings;
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "remapComponent({0}, {1})", new Object[]{str, str2});
        }
        String trim = str.trim();
        Map<String, String> mappings2 = getMappings(trim, false);
        if (mappings2 != null && mappings2.containsKey(str2)) {
            if (logger2.isLoggable(level)) {
                logger2.log(level, "returning remapped:{0}", mappings2.get(str2));
            }
            return mappings2.get(str2);
        }
        String normalizedName = getNormalizedName(trim);
        logger2.log(level, "normalized joystick name:{0}", normalizedName);
        if (normalizedName == null || (mappings = getMappings(normalizedName, false)) == null || !mappings.containsKey(str2)) {
            return str2;
        }
        if (logger2.isLoggable(level)) {
            logger2.log(level, "returning remapped:{0}", mappings.get(str2));
        }
        return mappings.get(str2);
    }

    public static void addAxisMapping(String str, String str2, String str3, float[] fArr) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "addAxisMapping({0}, {1}, {2})", new Object[]{str, str2, str3});
        }
        if (fArr.length == 2) {
            getAxisMappings(str, true).put(str2, new AxisData(str3, fArr));
            return;
        }
        throw new IllegalArgumentException("The range must have exactly 2 elements");
    }
}
