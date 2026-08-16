package com.jme3.system;

import com.jme3.asset.AssetManager;
import com.jme3.audio.AudioRenderer;
import com.jme3.input.SoftTextDialogInput;
import com.jme3.system.JmeContext;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JmeSystem {
    private static JmeSystemDelegate systemDelegate;
    private static final Logger logger = Logger.getLogger(JmeSystem.class.getName());
    private static final String[] delegateClassNames = {"com.jme3.system.JmeDesktopSystem", "com.jme3.system.android.JmeAndroidSystem", "com.jme3.system.ios.JmeIosSystem"};

    public enum StorageFolderType {
        Internal,
        External
    }

    private JmeSystem() {
    }

    private static void checkDelegate() {
        if (systemDelegate == null) {
            try {
                for (String str : delegateClassNames) {
                    JmeSystemDelegate tryLoadDelegate = tryLoadDelegate(str);
                    systemDelegate = tryLoadDelegate;
                    if (tryLoadDelegate != null) {
                        return;
                    }
                }
                logger.log(Level.SEVERE, "Failed to find a JmeSystem delegate!\nEnsure either desktop or android jME3 jar is in the classpath.");
            } catch (IllegalArgumentException e10) {
                e = e10;
                logger.log(Level.SEVERE, "Failed to create JmeSystem delegate:\n{0}", e);
            } catch (ReflectiveOperationException e11) {
                e = e11;
                logger.log(Level.SEVERE, "Failed to create JmeSystem delegate:\n{0}", e);
            }
        }
    }

    public static String getFullName() {
        checkDelegate();
        return systemDelegate.getFullName();
    }

    public static Platform getPlatform() {
        checkDelegate();
        return systemDelegate.getPlatform();
    }

    public static URL getPlatformAssetConfigURL() {
        checkDelegate();
        return systemDelegate.getPlatformAssetConfigURL();
    }

    public static URL getResource(String str) {
        checkDelegate();
        return systemDelegate.getResource(str);
    }

    public static InputStream getResourceAsStream(String str) {
        checkDelegate();
        return systemDelegate.getResourceAsStream(str);
    }

    public static SoftTextDialogInput getSoftTextDialogInput() {
        checkDelegate();
        return systemDelegate.getSoftTextDialogInput();
    }

    public static synchronized File getStorageFolder() {
        File storageFolder;
        synchronized (JmeSystem.class) {
            storageFolder = getStorageFolder(StorageFolderType.External);
        }
        return storageFolder;
    }

    public static void handleErrorMessage(String str) {
        checkDelegate();
        systemDelegate.handleErrorMessage(str);
    }

    public static void handleSettings(AppSettings appSettings, boolean z10) {
        checkDelegate();
        systemDelegate.handleSettings(appSettings, z10);
    }

    public static void initialize(AppSettings appSettings) {
        checkDelegate();
        systemDelegate.initialize(appSettings);
    }

    public static boolean isLowPermissions() {
        checkDelegate();
        return systemDelegate.isLowPermissions();
    }

    public static AssetManager newAssetManager(URL url) {
        checkDelegate();
        return systemDelegate.newAssetManager(url);
    }

    public static AudioRenderer newAudioRenderer(AppSettings appSettings) {
        checkDelegate();
        return systemDelegate.newAudioRenderer(appSettings);
    }

    public static JmeContext newContext(AppSettings appSettings, JmeContext.Type type) {
        checkDelegate();
        return systemDelegate.newContext(appSettings, type);
    }

    public static void setErrorMessageHandler(Consumer<String> consumer) {
        checkDelegate();
        systemDelegate.setErrorMessageHandler(consumer);
    }

    public static void setLowPermissions(boolean z10) {
        checkDelegate();
        systemDelegate.setLowPermissions(z10);
    }

    public static void setSettingsHandler(BiFunction<AppSettings, Boolean, Boolean> biFunction) {
        checkDelegate();
        systemDelegate.setSettingsHandler(biFunction);
    }

    public static void setSoftTextDialogInput(SoftTextDialogInput softTextDialogInput) {
        checkDelegate();
        systemDelegate.setSoftTextDialogInput(softTextDialogInput);
    }

    public static void setSystemDelegate(JmeSystemDelegate jmeSystemDelegate) {
        systemDelegate = jmeSystemDelegate;
    }

    @Deprecated
    public static void showErrorDialog(String str) {
        handleErrorMessage(str);
    }

    @Deprecated
    public static boolean showSettingsDialog(AppSettings appSettings, boolean z10) {
        checkDelegate();
        return systemDelegate.showSettingsDialog(appSettings, z10);
    }

    public static void showSoftKeyboard(boolean z10) {
        checkDelegate();
        systemDelegate.showSoftKeyboard(z10);
    }

    public static boolean trackDirectMemory() {
        checkDelegate();
        return systemDelegate.trackDirectMemory();
    }

    private static JmeSystemDelegate tryLoadDelegate(String str) throws ReflectiveOperationException, IllegalArgumentException {
        try {
            return (JmeSystemDelegate) Class.forName(str).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static void writeImageFile(OutputStream outputStream, String str, ByteBuffer byteBuffer, int i10, int i11) throws IOException {
        checkDelegate();
        systemDelegate.writeImageFile(outputStream, str, byteBuffer, i10, i11);
    }

    public static synchronized File getStorageFolder(StorageFolderType storageFolderType) {
        File storageFolder;
        synchronized (JmeSystem.class) {
            checkDelegate();
            storageFolder = systemDelegate.getStorageFolder(storageFolderType);
        }
        return storageFolder;
    }

    public static AssetManager newAssetManager() {
        checkDelegate();
        return systemDelegate.newAssetManager();
    }
}
