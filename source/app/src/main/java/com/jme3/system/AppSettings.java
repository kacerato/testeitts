package com.jme3.system;

import F2.d;
import android.util.DisplayMetrics;
import com.jme3.opencl.DefaultPlatformChooser;
import com.jme3.opencl.PlatformChooser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;

public final class AppSettings extends HashMap<String, Object> {

    @Deprecated
    public static final String ANDROID_MEDIAPLAYER = "MediaPlayer";
    public static final String ANDROID_OPENAL_SOFT = "OpenAL_SOFT";
    public static final String JOAL = "JOAL";
    public static final String JOGL_OPENGL_BACKWARD_COMPATIBLE = "JOGL_OPENGL_BACKWARD_COMPATIBLE";
    public static final String JOGL_OPENGL_FORWARD_COMPATIBLE = "JOGL_OPENGL_FORWARD_COMPATIBLE";
    public static final String JOYSTICKS_LEGACY_MAPPER = "JOYSTICKS_LEGACY_MAPPER";
    public static final String JOYSTICKS_RAW_MAPPER = "JOYSTICKS_RAW_MAPPER";
    public static final String JOYSTICKS_XBOX_LEGACY_MAPPER = "JOYSTICKS_XBOX_LEGACY_MAPPER";
    public static final String JOYSTICKS_XBOX_MAPPER = "JOYSTICKS_XBOX_MAPPER";
    public static final String JOYSTICKS_XBOX_WITH_FALLBACK_MAPPER = "JOYSTICKS_XBOX_WITH_FALLBACK_MAPPER";
    public static final String LWJGL_OPENAL = "LWJGL";
    public static final String LWJGL_OPENGL2 = "LWJGL-OpenGL2";

    @Deprecated
    public static final String LWJGL_OPENGL3 = "LWJGL-OpenGL3";
    public static final String LWJGL_OPENGL30 = "LWJGL-OpenGL30";
    public static final String LWJGL_OPENGL31 = "LWJGL-OpenGL31";
    public static final String LWJGL_OPENGL32 = "LWJGL-OpenGL3";
    public static final String LWJGL_OPENGL33 = "LWJGL-OpenGL33";

    @Deprecated
    public static final String LWJGL_OPENGL4 = "LWJGL-OpenGL4";
    public static final String LWJGL_OPENGL40 = "LWJGL-OpenGL4";
    public static final String LWJGL_OPENGL41 = "LWJGL-OpenGL41";
    public static final String LWJGL_OPENGL42 = "LWJGL-OpenGL42";
    public static final String LWJGL_OPENGL43 = "LWJGL-OpenGL43";
    public static final String LWJGL_OPENGL44 = "LWJGL-OpenGL44";
    public static final String LWJGL_OPENGL45 = "LWJGL-OpenGL45";
    private static final AppSettings defaults;
    private static final Logger logger = Logger.getLogger(AppSettings.class.getName());
    private static final long serialVersionUID = 1;

    static {
        AppSettings appSettings = new AppSettings(false);
        defaults = appSettings;
        appSettings.put("Display", 0);
        Boolean bool = Boolean.TRUE;
        appSettings.put("CenterWindow", bool);
        appSettings.put(d.f6276t1, Integer.valueOf(DisplayMetrics.DENSITY_XXXHIGH));
        appSettings.put("Height", Integer.valueOf(DisplayMetrics.DENSITY_XXHIGH));
        appSettings.put("WindowWidth", Integer.MIN_VALUE);
        appSettings.put("WindowHeight", Integer.MIN_VALUE);
        appSettings.put("BitsPerPixel", 24);
        appSettings.put("Frequency", 60);
        appSettings.put("DepthBits", 24);
        appSettings.put("StencilBits", 0);
        appSettings.put("Samples", 0);
        Boolean bool2 = Boolean.FALSE;
        appSettings.put("Fullscreen", bool2);
        appSettings.put("Title", JmeVersion.FULL_NAME);
        appSettings.put("Renderer", "LWJGL-OpenGL3");
        appSettings.put("AudioRenderer", LWJGL_OPENAL);
        appSettings.put("DisableJoysticks", bool);
        appSettings.put("UseInput", bool);
        appSettings.put("VSync", bool);
        appSettings.put("FrameRate", -1);
        appSettings.put("SettingsDialogImage", "/com/jme3/app/Monkey.png");
        appSettings.put("MinHeight", 0);
        appSettings.put("MinWidth", 0);
        appSettings.put("GammaCorrection", bool);
        appSettings.put("Resizable", bool2);
        appSettings.put("SwapBuffers", bool);
        appSettings.put("OpenCL", bool2);
        appSettings.put("OpenCLPlatformChooser", DefaultPlatformChooser.class.getName());
        appSettings.put("UseRetinaFrameBuffer", bool2);
        appSettings.put("WindowYPosition", 0);
        appSettings.put("WindowXPosition", 0);
        appSettings.put("X11PlatformPreferred", bool2);
        appSettings.put("JoysticksMapper", JOYSTICKS_XBOX_MAPPER);
        appSettings.put("JoysticksTriggerToButtonThreshold", Float.valueOf(0.5f));
        appSettings.put("JoysticksAxisJitterThreshold", Float.valueOf(1.0E-4f));
        appSettings.put("SDLGameControllerDBResourcePath", "");
    }

    public AppSettings(boolean z10) {
        if (z10) {
            putAll(defaults);
        }
    }

    public static void printPreferences(String str) throws BackingStoreException {
        Preferences node = Preferences.userRoot().node(str);
        String[] keys = node.keys();
        if (keys == null || keys.length == 0) {
            logger.log(Level.WARNING, "No Preferences found under key: {0}", str);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Preferences for key: ");
        sb2.append(str);
        for (String str2 : keys) {
            String str3 = node.get(str2, "[Value Not Found]");
            sb2.append("\n * ");
            sb2.append(str2);
            sb2.append(" = ");
            sb2.append(str3);
        }
        logger.log(Level.INFO, sb2.toString());
    }

    public void copyFrom(AppSettings appSettings) {
        putAll(appSettings);
    }

    public int getAlphaBits() {
        return getInteger("AlphaBits");
    }

    public String getAudioRenderer() {
        return getString("AudioRenderer");
    }

    public int getBitsPerPixel() {
        return getInteger("BitsPerPixel");
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getCenterWindow() {
        return getBoolean("CenterWindow");
    }

    public int getDepthBits() {
        return getInteger("DepthBits");
    }

    public int getDisplay() {
        return getInteger("Display");
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public int getFrameRate() {
        return getInteger("FrameRate");
    }

    public int getFrequency() {
        return getInteger("Frequency");
    }

    public int getHeight() {
        return getInteger("Height");
    }

    public Object[] getIcons() {
        return (Object[]) get("Icons");
    }

    public int getInteger(String str) {
        return getInteger(str, 0);
    }

    public float getJoysticksAxisJitterThreshold() {
        return getFloat("JoysticksAxisJitterThreshold");
    }

    public String getJoysticksMapper() {
        return getString("JoysticksMapper");
    }

    public float getJoysticksTriggerToButtonThreshold() {
        return getFloat("JoysticksTriggerToButtonThreshold");
    }

    public int getMinHeight() {
        return getInteger("MinHeight");
    }

    public int getMinWidth() {
        return getInteger("MinWidth");
    }

    public String getOpenCLPlatformChooser() {
        return getString("OpenCLPlatformChooser");
    }

    public String getRenderer() {
        return getString("Renderer");
    }

    public String getSDLGameControllerDBResourcePath() {
        return getString("SDLGameControllerDBResourcePath");
    }

    public int getSamples() {
        return getInteger("Samples");
    }

    public String getSettingsDialogImage() {
        return getString("SettingsDialogImage");
    }

    public int getStencilBits() {
        return getInteger("StencilBits");
    }

    public String getString(String str) {
        return getString(str, null);
    }

    public String getTitle() {
        return getString("Title");
    }

    public int getWidth() {
        return getInteger(d.f6276t1);
    }

    public int getWindowHeight() {
        int integer = getInteger("WindowHeight");
        return integer != Integer.MIN_VALUE ? integer : getHeight();
    }

    public int getWindowWidth() {
        int integer = getInteger("WindowWidth");
        return integer != Integer.MIN_VALUE ? integer : getWidth();
    }

    public int getWindowXPosition() {
        return getInteger("WindowXPosition");
    }

    public int getWindowYPosition() {
        return getInteger("WindowYPosition");
    }

    public boolean isEmulateKeyboard() {
        return getBoolean("TouchEmulateKeyboard");
    }

    public boolean isEmulateMouse() {
        return getBoolean("TouchEmulateMouse");
    }

    public boolean isEmulateMouseFlipX() {
        return getBoolean("TouchEmulateMouseFlipX");
    }

    public boolean isEmulateMouseFlipY() {
        return getBoolean("TouchEmulateMouseFlipY");
    }

    public boolean isFullscreen() {
        return getBoolean("Fullscreen");
    }

    public boolean isGammaCorrection() {
        return getBoolean("GammaCorrection");
    }

    public boolean isGraphicsDebug() {
        return getBoolean("GraphicsDebug");
    }

    public boolean isGraphicsTiming() {
        return getBoolean("GraphicsTiming");
    }

    public boolean isGraphicsTrace() {
        return getBoolean("GraphicsTrace");
    }

    public boolean isOpenCLSupport() {
        return getBoolean("OpenCL");
    }

    public boolean isResizable() {
        return getBoolean("Resizable");
    }

    public boolean isSwapBuffers() {
        return getBoolean("SwapBuffers");
    }

    public boolean isUseRetinaFrameBuffer() {
        return getBoolean("UseRetinaFrameBuffer");
    }

    public boolean isVSync() {
        return getBoolean("VSync");
    }

    public boolean isX11PlatformPreferred() {
        return getBoolean("X11PlatformPreferred");
    }

    public void load(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        for (Map.Entry<Object, Object> entry : properties.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 != null) {
                str2 = str2.trim();
            }
            if (str.endsWith("(int)")) {
                putInteger(str.substring(0, str.length() - 5), Integer.parseInt(str2));
            } else if (str.endsWith("(string)")) {
                putString(str.substring(0, str.length() - 8), str2);
            } else if (str.endsWith("(bool)")) {
                putBoolean(str.substring(0, str.length() - 6), Boolean.parseBoolean(str2));
            } else if (str.endsWith("(float)")) {
                putFloat(str.substring(0, str.length() - 7), Float.parseFloat(str2));
            } else {
                throw new IOException("Cannot parse key: " + str);
            }
        }
    }

    public void mergeFrom(AppSettings appSettings) {
        for (String str : appSettings.o()) {
            if (!containsKey(str)) {
                put(str, appSettings.get(str));
            }
        }
    }

    public void putBoolean(String str, boolean z10) {
        put(str, Boolean.valueOf(z10));
    }

    public void putFloat(String str, float f10) {
        put(str, Float.valueOf(f10));
    }

    public void putInteger(String str, int i10) {
        put(str, Integer.valueOf(i10));
    }

    public void putString(String str, String str2) {
        put(str, str2);
    }

    public void save(OutputStream outputStream) throws IOException {
        String str;
        Properties properties = new Properties();
        for (Map.Entry<String, Object> entry : entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Integer) {
                str = "(int)";
            } else if (value instanceof String) {
                str = "(string)";
            } else if (value instanceof Boolean) {
                str = "(bool)";
            } else if (value instanceof Float) {
                str = "(float)";
            }
            properties.setProperty(entry.getKey() + str, value.toString());
        }
        properties.store(outputStream, "jME3 AppSettings");
    }

    public void setAlphaBits(int i10) {
        putInteger("AlphaBits", i10);
    }

    public void setAudioRenderer(String str) {
        putString("AudioRenderer", str);
    }

    public void setBitsPerPixel(int i10) {
        putInteger("BitsPerPixel", i10);
    }

    public void setCenterWindow(boolean z10) {
        putBoolean("CenterWindow", z10);
    }

    public void setCustomRenderer(Class<? extends JmeContext> cls) {
        put("Renderer", "CUSTOM" + cls.getName());
    }

    public void setDepthBits(int i10) {
        putInteger("DepthBits", i10);
    }

    public void setDisplay(int i10) {
        putInteger("Display", i10);
    }

    public void setEmulateKeyboard(boolean z10) {
        putBoolean("TouchEmulateKeyboard", z10);
    }

    public void setEmulateMouse(boolean z10) {
        putBoolean("TouchEmulateMouse", z10);
    }

    public void setEmulateMouseFlipAxis(boolean z10, boolean z11) {
        putBoolean("TouchEmulateMouseFlipX", z10);
        putBoolean("TouchEmulateMouseFlipY", z11);
    }

    public void setFrameRate(int i10) {
        putInteger("FrameRate", i10);
    }

    public void setFrequency(int i10) {
        putInteger("Frequency", i10);
    }

    public void setFullscreen(boolean z10) {
        putBoolean("Fullscreen", z10);
    }

    public void setGammaCorrection(boolean z10) {
        putBoolean("GammaCorrection", z10);
    }

    public void setGraphicsDebug(boolean z10) {
        putBoolean("GraphicsDebug", z10);
    }

    public void setGraphicsTiming(boolean z10) {
        putBoolean("GraphicsTiming", z10);
    }

    public void setGraphicsTrace(boolean z10) {
        putBoolean("GraphicsTrace", z10);
    }

    public void setHeight(int i10) {
        putInteger("Height", i10);
    }

    public void setIcons(Object[] objArr) {
        put("Icons", objArr);
    }

    public void setJoysticksAxisJitterThreshold(float f10) {
        putFloat("JoysticksAxisJitterThreshold", f10);
    }

    public void setJoysticksMapper(String str) {
        putString("JoysticksMapper", str);
    }

    public void setJoysticksTriggerToButtonThreshold(float f10) {
        putFloat("JoysticksTriggerToButtonThreshold", f10);
    }

    public void setMinHeight(int i10) {
        putInteger("MinHeight", i10);
    }

    public void setMinResolution(int i10, int i11) {
        setMinWidth(i10);
        setMinHeight(i11);
    }

    public void setMinWidth(int i10) {
        putInteger("MinWidth", i10);
    }

    public void setOpenCLPlatformChooser(Class<? extends PlatformChooser> cls) {
        putString("OpenCLPlatformChooser", cls.getName());
    }

    public void setOpenCLSupport(boolean z10) {
        putBoolean("OpenCL", z10);
    }

    public void setRenderer(String str) {
        putString("Renderer", str);
    }

    public void setResizable(boolean z10) {
        putBoolean("Resizable", z10);
    }

    public void setResolution(int i10, int i11) {
        setWidth(i10);
        setHeight(i11);
    }

    public void setSDLGameControllerDBResourcePath(String str) {
        putString("SDLGameControllerDBResourcePath", str);
    }

    public void setSamples(int i10) {
        putInteger("Samples", i10);
    }

    public void setSettingsDialogImage(String str) {
        putString("SettingsDialogImage", str);
    }

    public void setStencilBits(int i10) {
        putInteger("StencilBits", i10);
    }

    public void setStereo3D(boolean z10) {
        putBoolean("Stereo3D", z10);
    }

    public void setSwapBuffers(boolean z10) {
        putBoolean("SwapBuffers", z10);
    }

    public void setTitle(String str) {
        putString("Title", str);
    }

    public void setUseInput(boolean z10) {
        putBoolean("UseInput", z10);
    }

    public void setUseJoysticks(boolean z10) {
        putBoolean("DisableJoysticks", !z10);
    }

    public void setUseRetinaFrameBuffer(boolean z10) {
        putBoolean("UseRetinaFrameBuffer", z10);
    }

    public void setVSync(boolean z10) {
        putBoolean("VSync", z10);
    }

    public void setWidth(int i10) {
        putInteger(d.f6276t1, i10);
    }

    public void setWindowSize(int i10, int i11) {
        putInteger("WindowWidth", i10);
        putInteger("WindowHeight", i11);
    }

    public void setWindowXPosition(int i10) {
        putInteger("WindowXPosition", i10);
    }

    public void setWindowYPosition(int i10) {
        putInteger("WindowYPosition", i10);
    }

    public void setX11PlatformPreferred(boolean z10) {
        putBoolean("X11PlatformPreferred", z10);
    }

    public boolean useInput() {
        return getBoolean("UseInput");
    }

    public boolean useJoysticks() {
        return !getBoolean("DisableJoysticks");
    }

    public boolean useStereo3D() {
        return getBoolean("Stereo3D");
    }

    public boolean getBoolean(String str, boolean z10) {
        Object obj = get(str);
        return obj == null ? z10 : ((Boolean) obj).booleanValue();
    }

    public float getFloat(String str, float f10) {
        Object obj = get(str);
        return obj == null ? f10 : ((Float) obj).floatValue();
    }

    public int getInteger(String str, int i10) {
        Object obj = get(str);
        return obj == null ? i10 : ((Integer) obj).intValue();
    }

    public String getString(String str, String str2) {
        Object obj = get(str);
        return obj == null ? str2 : (String) obj;
    }

    public void save(String str) throws BackingStoreException {
        Preferences node = Preferences.userRoot().node(str);
        node.clear();
        for (String str2 : o()) {
            Object obj = get(str2);
            if (obj instanceof Integer) {
                node.putInt("I_" + str2, ((Integer) obj).intValue());
            } else if (obj instanceof Float) {
                node.putFloat("F_" + str2, ((Float) obj).floatValue());
            } else if (obj instanceof String) {
                node.put("S_" + str2, (String) obj);
            } else if (obj instanceof Boolean) {
                node.putBoolean("B_" + str2, ((Boolean) obj).booleanValue());
            }
        }
        node.sync();
    }

    public void load(String str) throws BackingStoreException {
        Preferences node = Preferences.userRoot().node(str);
        String[] keys = node.keys();
        if (keys != null) {
            for (String str2 : keys) {
                if (str2.charAt(1) == '_') {
                    char charAt = str2.charAt(0);
                    if (charAt == 'B') {
                        put(str2.substring(2), Boolean.valueOf(node.getBoolean(str2, false)));
                    } else if (charAt == 'F') {
                        put(str2.substring(2), Float.valueOf(node.getFloat(str2, 0.0f)));
                    } else if (charAt == 'I') {
                        put(str2.substring(2), Integer.valueOf(node.getInt(str2, 0)));
                    } else if (charAt == 'S') {
                        put(str2.substring(2), node.get(str2, null));
                    } else {
                        throw new UnsupportedOperationException("Undefined setting type: " + str2.charAt(0));
                    }
                } else {
                    Object obj = defaults.get(str2);
                    if (obj instanceof Integer) {
                        put(str2, Integer.valueOf(node.getInt(str2, ((Integer) obj).intValue())));
                    } else if (obj instanceof String) {
                        put(str2, node.get(str2, (String) obj));
                    } else if (obj instanceof Boolean) {
                        put(str2, Boolean.valueOf(node.getBoolean(str2, ((Boolean) obj).booleanValue())));
                    }
                }
            }
        }
    }
}
