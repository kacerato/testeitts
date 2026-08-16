package ff;

import com.jme3.asset.AssetManager;
import com.jme3.export.Savable;
import com.jme3.export.binary.BinaryExporter;
import com.jme3.export.binary.BinaryImporter;
import com.jme3.system.JmeSystem;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class C13216a {
    public static Savable a(String str, String str2) {
        return c(str, str2, null, JmeSystem.StorageFolderType.External);
    }

    public static Savable b(String str, String str2, AssetManager assetManager) {
        return c(str, str2, assetManager, JmeSystem.StorageFolderType.External);
    }

    public static Savable c(String str, String str2, AssetManager assetManager, JmeSystem.StorageFolderType storageFolderType) {
        Savable savable;
        if (storageFolderType == null) {
            Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Base Storage Folder Type is null, using External!");
            storageFolderType = JmeSystem.StorageFolderType.External;
        }
        GZIPInputStream gZIPInputStream = null;
        Savable savable2 = null;
        GZIPInputStream gZIPInputStream2 = null;
        try {
            try {
                File storageFolder = JmeSystem.getStorageFolder(storageFolderType);
                if (storageFolder == null) {
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error reading base storage folder!");
                    return null;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(storageFolder.getAbsolutePath());
                String str3 = File.separator;
                sb2.append(str3);
                sb2.append(str.replace('/', File.separatorChar));
                sb2.append(str3);
                sb2.append(str2);
                File file = new File(sb2.toString());
                if (!file.exists()) {
                    return null;
                }
                GZIPInputStream gZIPInputStream3 = new GZIPInputStream(new BufferedInputStream(new FileInputStream(file)));
                try {
                    BinaryImporter binaryImporter = BinaryImporter.getInstance();
                    if (assetManager != null) {
                        binaryImporter.setAssetManager(assetManager);
                    }
                    savable2 = binaryImporter.load(gZIPInputStream3);
                    Logger.getLogger(C13216a.class.getName()).log(Level.FINE, "Loading data from: {0}", file.getAbsolutePath());
                    try {
                        gZIPInputStream3.close();
                        return savable2;
                    } catch (IOException e10) {
                        Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error loading data: {0}", (Throwable) e10);
                        e10.printStackTrace();
                        return savable2;
                    }
                } catch (IOException e11) {
                    Savable savable3 = savable2;
                    gZIPInputStream2 = gZIPInputStream3;
                    e = e11;
                    savable = savable3;
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error loading data: {0}", (Throwable) e);
                    e.printStackTrace();
                    if (gZIPInputStream2 != null) {
                        try {
                            gZIPInputStream2.close();
                        } catch (IOException e12) {
                            Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error loading data: {0}", (Throwable) e12);
                            e12.printStackTrace();
                        }
                    }
                    return savable;
                } catch (Throwable th2) {
                    gZIPInputStream = gZIPInputStream3;
                    th = th2;
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (IOException e13) {
                            Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error loading data: {0}", (Throwable) e13);
                            e13.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e14) {
                e = e14;
                savable = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static Savable d(String str, String str2, JmeSystem.StorageFolderType storageFolderType) {
        return c(str, str2, null, storageFolderType);
    }

    public static void e(String str, String str2, Savable savable) {
        f(str, str2, savable, JmeSystem.StorageFolderType.External);
    }

    public static void f(String str, String str2, Savable savable, JmeSystem.StorageFolderType storageFolderType) {
        if (storageFolderType == null) {
            Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Base Storage Folder Type is null, using External!");
            storageFolderType = JmeSystem.StorageFolderType.External;
        }
        BinaryExporter binaryExporter = BinaryExporter.getInstance();
        GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                File storageFolder = JmeSystem.getStorageFolder(storageFolderType);
                if (storageFolder == null) {
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error creating save file!");
                    throw new IllegalStateException("SaveGame dataset cannot be created");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(storageFolder.getAbsolutePath());
                String str3 = File.separator;
                sb2.append(str3);
                sb2.append(str.replace('/', File.separatorChar));
                File file = new File(sb2.toString());
                if (!file.exists() && !file.mkdirs()) {
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error creating save file!");
                    throw new IllegalStateException("SaveGame dataset cannot be created");
                }
                File file2 = new File(file.getAbsolutePath() + str3 + str2);
                if (!file2.exists() && !file2.createNewFile()) {
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error creating save file!");
                    throw new IllegalStateException("SaveGame dataset cannot be created");
                }
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
                try {
                    binaryExporter.save(savable, gZIPOutputStream2);
                    Logger.getLogger(C13216a.class.getName()).log(Level.FINE, "Saving data to: {0}", file2.getAbsolutePath());
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e10) {
                        Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error saving data: {0}", (Throwable) e10);
                        e10.printStackTrace();
                        throw new IllegalStateException("SaveGame dataset cannot be saved");
                    }
                } catch (IOException e11) {
                    e = e11;
                    Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error saving data: {0}", (Throwable) e);
                    e.printStackTrace();
                    throw new IllegalStateException("SaveGame dataset cannot be saved");
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (IOException e12) {
                            Logger.getLogger(C13216a.class.getName()).log(Level.SEVERE, "Error saving data: {0}", (Throwable) e12);
                            e12.printStackTrace();
                            throw new IllegalStateException("SaveGame dataset cannot be saved");
                        }
                    }
                    throw th;
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
