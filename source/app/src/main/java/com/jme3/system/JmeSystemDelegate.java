package com.jme3.system;

import com.jme3.asset.AssetManager;
import com.jme3.asset.DesktopAssetManager;
import com.jme3.audio.AudioRenderer;
import com.jme3.input.SoftTextDialogInput;
import com.jme3.system.JmeContext;
import com.jme3.system.JmeSystem;
import com.jme3.util.res.Resources;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.EnumMap;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class JmeSystemDelegate {
    protected final Logger logger = Logger.getLogger(JmeSystem.class.getName());
    protected boolean initialized = false;
    protected boolean lowPermissions = false;
    protected Map<JmeSystem.StorageFolderType, File> storageFolders = new EnumMap(JmeSystem.StorageFolderType.class);
    protected SoftTextDialogInput softTextDialogInput = null;
    protected Consumer<String> errorMessageHandler = new Consumer() {
        @Override
        public final void accept(Object obj) {
            JmeSystemDelegate.this.lambda$new$0((String) obj);
        }
    };
    protected BiFunction<AppSettings, Boolean, Boolean> settingsHandler = new BiFunction() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            Boolean lambda$new$1;
            lambda$new$1 = JmeSystemDelegate.this.lambda$new$1((AppSettings) obj, (Boolean) obj2);
            return lambda$new$1;
        }
    };

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$system$JmeSystem$StorageFolderType;

        static {
            int[] iArr = new int[JmeSystem.StorageFolderType.values().length];
            $SwitchMap$com$jme3$system$JmeSystem$StorageFolderType = iArr;
            try {
                iArr[JmeSystem.StorageFolderType.Internal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$system$JmeSystem$StorageFolderType[JmeSystem.StorageFolderType.External.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private Platform getLinuxPlatform(String str, boolean z10) {
        if (!z10) {
            throw unsupported32Bit("Linux");
        }
        if (isArmArchitecture(str)) {
            return Platform.Linux_ARM64;
        }
        if (isX86Architecture(str)) {
            return Platform.Linux64;
        }
        throw new UnsupportedOperationException("Unsupported architecture: " + str);
    }

    private Platform getMacPlatform(String str, boolean z10) {
        if (!z10) {
            throw unsupported32Bit("macOS");
        }
        if (isArmArchitecture(str)) {
            return Platform.MacOSX_ARM64;
        }
        if (isX86Architecture(str)) {
            return Platform.MacOSX64;
        }
        throw new UnsupportedOperationException("Unsupported architecture: " + str);
    }

    private Platform getWindowsPlatform(String str, boolean z10) {
        if (!z10) {
            throw unsupported32Bit("Windows");
        }
        if (isArmArchitecture(str)) {
            return Platform.Windows_ARM64;
        }
        if (isX86Architecture(str)) {
            return Platform.Windows64;
        }
        throw new UnsupportedOperationException("Unsupported architecture: " + str);
    }

    private boolean is64Bit(String str) {
        str.hashCode();
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1409295825:
                if (str.equals("armv7l")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1221096234:
                if (str.equals("aarch32")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1221096139:
                if (str.equals("aarch64")) {
                    c10 = 2;
                    break;
                }
                break;
            case -806050265:
                if (str.equals("x86_64")) {
                    c10 = 3;
                    break;
                }
                break;
            case -409534901:
                if (str.equals("universal")) {
                    c10 = 4;
                    break;
                }
                break;
            case 96860:
                if (str.equals("arm")) {
                    c10 = 5;
                    break;
                }
                break;
            case 117110:
                if (str.equals("x86")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3178856:
                if (str.equals("i386")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3181739:
                if (str.equals("i686")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 92926582:
                if (str.equals("amd64")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 93084186:
                if (str.equals("arm64")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 93086173:
                if (str.equals("armv7")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case 106867809:
                if (str.equals("ppc64")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 5:
            case 6:
            case 7:
            case '\b':
            case 11:
                return false;
            case 2:
            case 3:
            case 4:
            case '\t':
            case '\n':
            case '\f':
                return true;
            default:
                throw new UnsupportedOperationException("Unsupported architecture: " + str);
        }
    }

    private boolean isArmArchitecture(String str) {
        return str.startsWith("arm") || str.startsWith("aarch");
    }

    private boolean isX86Architecture(String str) {
        return str.equals("x86") || str.equals("amd64") || str.equals("x86_64") || str.equals("i386") || str.equals("i686") || str.equals("universal");
    }

    public void lambda$new$0(String str) {
        JmeDialogsFactory jmeDialogsFactory = null;
        try {
            jmeDialogsFactory = (JmeDialogsFactory) Class.forName("com.jme3.system.JmeDialogsFactoryImpl").getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused) {
            this.logger.warning("JmeDialogsFactory implementation not found.");
        } catch (IllegalAccessException e10) {
            e = e10;
            e.printStackTrace();
        } catch (IllegalArgumentException e11) {
            e = e11;
            e.printStackTrace();
        } catch (InstantiationException e12) {
            e = e12;
            e.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e = e13;
            e.printStackTrace();
        } catch (SecurityException e14) {
            e = e14;
            e.printStackTrace();
        } catch (InvocationTargetException e15) {
            e = e15;
            e.printStackTrace();
        }
        if (jmeDialogsFactory != null) {
            jmeDialogsFactory.showErrorDialog(str);
        } else {
            System.err.println(str);
        }
    }

    public Boolean lambda$new$1(AppSettings appSettings, Boolean bool) {
        JmeDialogsFactory jmeDialogsFactory = null;
        try {
            jmeDialogsFactory = (JmeDialogsFactory) Class.forName("com.jme3.system.JmeDialogsFactoryImpl").getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused) {
            this.logger.warning("JmeDialogsFactory implementation not found.");
        } catch (IllegalAccessException e10) {
            e = e10;
            e.printStackTrace();
        } catch (IllegalArgumentException e11) {
            e = e11;
            e.printStackTrace();
        } catch (InstantiationException e12) {
            e = e12;
            e.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e = e13;
            e.printStackTrace();
        } catch (SecurityException e14) {
            e = e14;
            e.printStackTrace();
        } catch (InvocationTargetException e15) {
            e = e15;
            e.printStackTrace();
        }
        return jmeDialogsFactory != null ? Boolean.valueOf(jmeDialogsFactory.showSettingsDialog(appSettings, bool.booleanValue())) : Boolean.TRUE;
    }

    private UnsupportedOperationException unsupported32Bit(String str) {
        return new UnsupportedOperationException("32-bit " + str + " is not supported.");
    }

    public String getBuildInfo() {
        return "Running on " + getFullName() + "\n * Branch: " + JmeVersion.BRANCH_NAME + "\n * Git Hash: " + JmeVersion.GIT_SHORT_HASH + "\n * Build Date: " + JmeVersion.BUILD_DATE;
    }

    public String getFullName() {
        return JmeVersion.FULL_NAME;
    }

    public Platform getPlatform() {
        String lowerCase = System.getProperty("os.name").toLowerCase();
        String lowerCase2 = System.getProperty("os.arch").toLowerCase();
        boolean is64Bit = is64Bit(lowerCase2);
        if (lowerCase.contains(com.eclipsesource.v8.Platform.WINDOWS)) {
            return getWindowsPlatform(lowerCase2, is64Bit);
        }
        if (lowerCase.contains(com.eclipsesource.v8.Platform.LINUX) || lowerCase.contains("freebsd") || lowerCase.contains("sunos") || lowerCase.contains("unix")) {
            return getLinuxPlatform(lowerCase2, is64Bit);
        }
        if (lowerCase.contains("mac os x") || lowerCase.contains("darwin")) {
            return getMacPlatform(lowerCase2, is64Bit);
        }
        throw new UnsupportedOperationException("The specified platform: " + lowerCase + " is not supported.");
    }

    public abstract URL getPlatformAssetConfigURL();

    public URL getResource(String str) {
        return Resources.getResource(str, getClass());
    }

    public InputStream getResourceAsStream(String str) {
        return Resources.getResourceAsStream(str, getClass());
    }

    public SoftTextDialogInput getSoftTextDialogInput() {
        return this.softTextDialogInput;
    }

    public synchronized File getStorageFolder(JmeSystem.StorageFolderType storageFolderType) {
        File file;
        try {
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$system$JmeSystem$StorageFolderType[storageFolderType.ordinal()];
            if (i10 != 1 && i10 != 2) {
                file = null;
            } else {
                if (this.lowPermissions) {
                    throw new UnsupportedOperationException("File system access restricted");
                }
                File file2 = this.storageFolders.get(storageFolderType);
                if (file2 == null) {
                    file2 = new File(System.getProperty("user.home"), ".jme3");
                    if (!file2.exists()) {
                        file2.mkdir();
                    }
                    this.storageFolders.put(storageFolderType, file2);
                }
                file = file2;
            }
            if (file != null) {
                Logger logger = this.logger;
                Level level = Level.FINE;
                if (logger.isLoggable(level)) {
                    this.logger.log(level, "Storage Folder Path: {0}", file.getAbsolutePath());
                }
            } else {
                this.logger.log(Level.FINE, "Storage Folder not found!");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return file;
    }

    public void handleErrorMessage(String str) {
        Consumer<String> consumer = this.errorMessageHandler;
        if (consumer != null) {
            consumer.accept(str);
        }
    }

    public boolean handleSettings(AppSettings appSettings, boolean z10) {
        BiFunction<AppSettings, Boolean, Boolean> biFunction = this.settingsHandler;
        if (biFunction != null) {
            return biFunction.apply(appSettings, Boolean.valueOf(z10)).booleanValue();
        }
        return true;
    }

    public abstract void initialize(AppSettings appSettings);

    public boolean isLowPermissions() {
        return this.lowPermissions;
    }

    public final AssetManager newAssetManager(URL url) {
        return new DesktopAssetManager(url);
    }

    public abstract AudioRenderer newAudioRenderer(AppSettings appSettings);

    public abstract JmeContext newContext(AppSettings appSettings, JmeContext.Type type);

    public void setErrorMessageHandler(Consumer<String> consumer) {
        this.errorMessageHandler = consumer;
    }

    public void setLowPermissions(boolean z10) {
        this.lowPermissions = z10;
    }

    public void setSettingsHandler(BiFunction<AppSettings, Boolean, Boolean> biFunction) {
        this.settingsHandler = biFunction;
    }

    public void setSoftTextDialogInput(SoftTextDialogInput softTextDialogInput) {
        this.softTextDialogInput = softTextDialogInput;
    }

    @Deprecated
    public void showErrorDialog(String str) {
        handleErrorMessage(str);
    }

    @Deprecated
    public boolean showSettingsDialog(AppSettings appSettings, boolean z10) {
        return handleSettings(appSettings, z10);
    }

    public abstract void showSoftKeyboard(boolean z10);

    public boolean trackDirectMemory() {
        return false;
    }

    public abstract void writeImageFile(OutputStream outputStream, String str, ByteBuffer byteBuffer, int i10, int i11) throws IOException;

    public final AssetManager newAssetManager() {
        return new DesktopAssetManager((URL) null);
    }
}
