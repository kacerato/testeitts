package com.jme3.export.binary;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeImporter;
import com.jme3.export.ReadListener;
import com.jme3.export.Savable;
import com.jme3.export.SavableClassFilter;
import com.jme3.export.SavableClassUtil;
import com.jme3.math.FastMath;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class BinaryImporter implements JmeImporter {
    private static final boolean fastRead;
    private int aliasWidth;
    private AssetManager assetManager;
    private byte[] dataArray;
    private int formatVersion;
    private static final Logger logger = Logger.getLogger(BinaryImporter.class.getName());
    public static boolean debug = false;
    private SavableClassFilter classFilter = SavableClassFilter.ACCEPT_ALL;
    private final HashMap<String, BinaryClassObject> classes = new HashMap<>();
    private final HashMap<Integer, Savable> contentTable = new HashMap<>();
    private final IdentityHashMap<Savable, BinaryInputCapsule> capsuleTable = new IdentityHashMap<>();
    private final HashMap<Integer, Integer> locationTable = new HashMap<>();

    static {
        fastRead = ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN;
    }

    public static boolean canUseFastBuffers() {
        return fastRead;
    }

    private void checkLength(int i10) throws IOException {
        if (i10 >= 0) {
            return;
        }
        throw new IOException("Invalid negative J3O length/count: " + i10);
    }

    public static BinaryImporter getInstance() {
        return new BinaryImporter();
    }

    private int readUnsignedByte(InputStream inputStream, String str) throws IOException {
        int read = inputStream.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException("Unexpected end of J3O while reading " + str);
    }

    @Override
    public AssetManager getAssetManager() {
        return this.assetManager;
    }

    @Override
    public InputCapsule getCapsule(Savable savable) {
        return this.capsuleTable.get(savable);
    }

    public SavableClassFilter getClassFilter() {
        return this.classFilter;
    }

    @Override
    public int getFormatVersion() {
        return this.formatVersion;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object load(AssetInfo assetInfo) {
        Throwable th2;
        InputStream inputStream;
        this.assetManager = assetInfo.getManager();
        try {
            inputStream = assetInfo.openStream();
            try {
                try {
                    Savable load = load(inputStream);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    return load;
                } catch (IOException e10) {
                    e = e10;
                    logger.log(Level.SEVERE, "An error occurred while loading jME binary object", (Throwable) e);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th2;
            }
        } catch (IOException e11) {
            e = e11;
            inputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            inputStream = null;
            if (inputStream != null) {
            }
            throw th2;
        }
    }

    public Savable readObject(int i10) {
        int i11;
        if (this.contentTable.get(Integer.valueOf(i10)) != null) {
            return this.contentTable.get(Integer.valueOf(i10));
        }
        try {
            Integer num = this.locationTable.get(Integer.valueOf(i10));
            if (num == null) {
                throw new IOException("Missing J3O object location for id: " + i10);
            }
            int intValue = num.intValue();
            if (intValue < 0 || intValue >= this.dataArray.length) {
                throw new IOException("J3O object location outside payload: " + intValue);
            }
            String readString = readString(this.aliasWidth, intValue);
            int i12 = intValue + this.aliasWidth;
            BinaryClassObject binaryClassObject = this.classes.get(readString);
            if (binaryClassObject == null) {
                logger.logp(Level.SEVERE, BinaryImporter.class.toString(), "readObject(int id)", "NULL class object: " + readString);
                return null;
            }
            int i13 = i12 + 4;
            byte[] bArr = this.dataArray;
            if (i13 > bArr.length) {
                throw new IOException("Truncated J3O object length at payload offset: " + i12);
            }
            int convertIntFromBytes = ByteUtils.convertIntFromBytes(bArr, i12);
            if (convertIntFromBytes < 0 || (i11 = i13 + convertIntFromBytes) < i13 || i11 > this.dataArray.length) {
                throw new IOException("Invalid J3O object data length: " + convertIntFromBytes);
            }
            Savable fromName = SavableClassUtil.fromName(binaryClassObject.className, this.classFilter);
            BinaryInputCapsule binaryInputCapsule = new BinaryInputCapsule(this, fromName, binaryClassObject);
            binaryInputCapsule.setContent(this.dataArray, i13, i11);
            this.capsuleTable.put(fromName, binaryInputCapsule);
            this.contentTable.put(Integer.valueOf(i10), fromName);
            fromName.read(this);
            this.capsuleTable.remove(fromName);
            return fromName;
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, BinaryImporter.class.toString(), "readObject(int id)", "Exception", (Throwable) e10);
            return null;
        }
    }

    public String readString(InputStream inputStream, int i10) throws IOException {
        checkLength(i10);
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) readUnsignedByte(inputStream, TypedValues.Custom.S_STRING);
        }
        return new String(bArr);
    }

    public void setAssetManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    public void setClassFilter(SavableClassFilter savableClassFilter) {
        if (savableClassFilter == null) {
            throw new NullPointerException("classFilter");
        }
        this.classFilter = savableClassFilter;
    }

    public String readString(int i10, int i11) throws IOException {
        int i12;
        checkLength(i10);
        if (i11 >= 0 && (i12 = i11 + i10) >= i11 && i12 <= this.dataArray.length) {
            byte[] bArr = new byte[i10];
            for (int i13 = 0; i13 < i10; i13++) {
                bArr[i13] = this.dataArray[i13 + i11];
            }
            return new String(bArr);
        }
        throw new IOException("String outside J3O payload: offset=" + i11 + ", length=" + i10);
    }

    public Savable load(InputStream inputStream) throws IOException {
        return load(inputStream, null, null);
    }

    public Savable load(InputStream inputStream, ReadListener readListener) throws IOException {
        return load(inputStream, readListener, null);
    }

    public Savable load(InputStream inputStream, ReadListener readListener, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream2;
        int[] iArr;
        this.contentTable.clear();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        int readInt = ByteUtils.readInt(bufferedInputStream);
        if (readInt == 1246577971) {
            this.formatVersion = ByteUtils.readInt(bufferedInputStream);
            readInt = ByteUtils.readInt(bufferedInputStream);
            int i10 = this.formatVersion;
            if (i10 < 0) {
                throw new IOException("Invalid J3O format version: " + this.formatVersion);
            }
            if (i10 > 3) {
                throw new IOException("The binary file is of newer version than expected! " + this.formatVersion + " > 3");
            }
        } else {
            this.formatVersion = 0;
        }
        if (readInt > 0) {
            int i11 = 1;
            this.aliasWidth = ((int) FastMath.log(readInt, 256.0f)) + 1;
            this.classes.clear();
            int i12 = 0;
            int i13 = 4;
            while (i12 < readInt) {
                String readString = readString(bufferedInputStream, this.aliasWidth);
                if (this.formatVersion >= i11) {
                    int readUnsignedByte = readUnsignedByte(bufferedInputStream, "class hierarchy size");
                    iArr = new int[readUnsignedByte];
                    for (int i14 = 0; i14 < readUnsignedByte; i14++) {
                        iArr[i14] = ByteUtils.readInt(bufferedInputStream);
                    }
                } else {
                    iArr = new int[i11];
                    iArr[0] = 0;
                }
                int readInt2 = ByteUtils.readInt(bufferedInputStream);
                checkLength(readInt2);
                String readString2 = readString(bufferedInputStream, readInt2);
                if (this.classFilter.isAllowed(SavableClassUtil.remapClass(readString2))) {
                    BinaryClassObject binaryClassObject = new BinaryClassObject();
                    binaryClassObject.alias = readString.getBytes();
                    binaryClassObject.className = readString2;
                    binaryClassObject.classHierarchyVersions = iArr;
                    int readInt3 = ByteUtils.readInt(bufferedInputStream);
                    checkLength(readInt3);
                    i13 += this.aliasWidth + 8 + readInt2;
                    binaryClassObject.nameFields = new HashMap<>(readInt3);
                    binaryClassObject.aliasFields = new HashMap<>(readInt3);
                    for (int i15 = 0; i15 < readInt3; i15++) {
                        byte readUnsignedByte2 = (byte) readUnsignedByte(bufferedInputStream, "field alias");
                        byte readUnsignedByte3 = (byte) readUnsignedByte(bufferedInputStream, "field type");
                        int readInt4 = ByteUtils.readInt(bufferedInputStream);
                        checkLength(readInt4);
                        String readString3 = readString(bufferedInputStream, readInt4);
                        BinaryClassField binaryClassField = new BinaryClassField(readString3, readUnsignedByte2, readUnsignedByte3);
                        binaryClassObject.nameFields.put(readString3, binaryClassField);
                        binaryClassObject.aliasFields.put(Byte.valueOf(readUnsignedByte2), binaryClassField);
                        i13 += readInt4 + 6;
                    }
                    this.classes.put(readString, binaryClassObject);
                    i12++;
                    i11 = 1;
                } else {
                    throw new IOException("J3O class rejected by filter: " + readString2);
                }
            }
            if (readListener != null) {
                readListener.readBytes(i13);
            }
            int readInt5 = ByteUtils.readInt(bufferedInputStream);
            checkLength(readInt5);
            this.capsuleTable.clear();
            this.locationTable.clear();
            int i16 = 4;
            for (int i17 = 0; i17 < readInt5; i17++) {
                int readInt6 = ByteUtils.readInt(bufferedInputStream);
                int readInt7 = ByteUtils.readInt(bufferedInputStream);
                if (readInt7 >= 0) {
                    this.locationTable.put(Integer.valueOf(readInt6), Integer.valueOf(readInt7));
                    i16 += 8;
                } else {
                    throw new IOException("Invalid negative J3O object location: " + readInt7);
                }
            }
            ByteUtils.readInt(bufferedInputStream);
            int readInt8 = ByteUtils.readInt(bufferedInputStream);
            int i18 = i16 + 8;
            if (readListener != null) {
                readListener.readBytes(i18);
            }
            if (byteArrayOutputStream == null) {
                byteArrayOutputStream2 = new ByteArrayOutputStream(i18);
            } else {
                byteArrayOutputStream.reset();
                byteArrayOutputStream2 = byteArrayOutputStream;
            }
            byte[] bArr = new byte[4096];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream2.write(bArr, 0, read);
                if (readListener != null) {
                    readListener.readBytes(read);
                }
            }
            this.dataArray = byteArrayOutputStream2.toByteArray();
            Savable readObject = readObject(readInt8);
            if (debug) {
                Logger logger2 = logger;
                logger2.fine("Importer Stats: ");
                Level level = Level.FINE;
                logger2.log(level, "Tags: {0}", Integer.valueOf(readInt));
                logger2.log(level, "Objects: {0}", Integer.valueOf(readInt5));
                logger2.log(level, "Data Size: {0}", Integer.valueOf(this.dataArray.length));
            }
            this.dataArray = null;
            return readObject;
        }
        throw new IOException("Invalid J3O class count: " + readInt);
    }

    public Savable load(URL url) throws IOException {
        return load(url, (ReadListener) null);
    }

    public Savable load(URL url, ReadListener readListener) throws IOException {
        InputStream openStream = url.openStream();
        Savable load = load(openStream, readListener);
        openStream.close();
        return load;
    }

    public Savable load(File file) throws IOException {
        return load(file, (ReadListener) null);
    }

    public Savable load(File file, ReadListener readListener) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return load(fileInputStream, readListener);
        } finally {
            fileInputStream.close();
        }
    }

    public Savable load(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Savable load = load(byteArrayInputStream);
        byteArrayInputStream.close();
        return load;
    }
}
