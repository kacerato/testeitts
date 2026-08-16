package com.ardor3d.util.export.binary;

import com.ardor3d.annotation.SavableFactory;
import com.ardor3d.math.MathUtils;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.export.Ardor3dImporter;
import com.ardor3d.util.export.ByteUtils;
import com.ardor3d.util.export.ReadListener;
import com.ardor3d.util.export.Savable;
import com.google.common.collect.Q1;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;

public class BinaryImporter implements Ardor3dImporter {
    private static final Logger logger = Logger.getLogger(BinaryImporter.class.getName());
    protected int _aliasWidth;
    protected final Map<Savable, BinaryInputCapsule> _capsuleTable;
    protected final Map<String, BinaryClassObject> _classes;
    protected final Map<Integer, Savable> _contentTable;
    protected byte[] _dataArray;
    protected final boolean _debug;
    protected final Map<Integer, Integer> _locationTable;

    public BinaryImporter() {
        this(false);
    }

    public static BinaryImporter getInstance() {
        return new BinaryImporter();
    }

    @Override
    public Savable load(InputStream inputStream) throws IOException {
        return load(inputStream, null, null);
    }

    public Savable readObject(int i10) {
        if (this._contentTable.get(Integer.valueOf(i10)) != null) {
            return this._contentTable.get(Integer.valueOf(i10));
        }
        try {
            int intValue = this._locationTable.get(Integer.valueOf(i10)).intValue();
            String readString = readString(this._aliasWidth, intValue);
            int i11 = intValue + this._aliasWidth;
            BinaryClassObject binaryClassObject = this._classes.get(readString);
            if (binaryClassObject == null) {
                logger.logp(Level.SEVERE, getClass().toString(), "readObject(int id)", "NULL class object: " + readString);
                return null;
            }
            int convertIntFromBytes = ByteUtils.convertIntFromBytes(this._dataArray, i11);
            int i12 = i11 + 4;
            BinaryInputCapsule binaryInputCapsule = new BinaryInputCapsule(this, binaryClassObject);
            binaryInputCapsule.setContent(this._dataArray, i12, convertIntFromBytes + i12);
            try {
                try {
                    Class<?> cls = Class.forName(binaryClassObject._className);
                    SavableFactory savableFactory = (SavableFactory) cls.getAnnotation(SavableFactory.class);
                    Savable savable = savableFactory == null ? (Savable) cls.newInstance() : (Savable) cls.getMethod(savableFactory.factoryMethod(), null).invoke(null, null);
                    this._capsuleTable.put(savable, binaryInputCapsule);
                    this._contentTable.put(Integer.valueOf(i10), savable);
                    savable.read(this._capsuleTable.get(savable));
                    this._capsuleTable.remove(savable);
                    return savable;
                } catch (InstantiationException e10) {
                    logger.logp(Level.SEVERE, getClass().toString(), "readObject(int)", "Could not access constructor of class '" + binaryClassObject._className + "'! \nSome types may require the annotation SavableFactory.  Please double check.", (Throwable) e10);
                    throw new Ardor3dException(e10);
                }
            } catch (NoSuchMethodException e11) {
                logger.logp(Level.SEVERE, getClass().toString(), "readObject(int)", e11.getMessage() + " \nMethod specified in annotation does not appear to exist or has an invalid method signature.", (Throwable) e11);
                throw new Ardor3dException(e11);
            }
        } catch (Exception e12) {
            logger.logp(Level.SEVERE, getClass().toString(), "readObject(int)", "Exception", (Throwable) e12);
            return null;
        }
    }

    public String readString(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        inputStream.read(bArr, 0, i10);
        return new String(bArr);
    }

    public BinaryImporter(boolean z10) {
        this._classes = Q1.Y();
        this._contentTable = Q1.Y();
        this._capsuleTable = Q1.b0();
        this._locationTable = Q1.Y();
        this._dataArray = null;
        this._aliasWidth = 0;
        this._debug = z10;
    }

    public static BinaryImporter getInstance(boolean z10) {
        return new BinaryImporter(z10);
    }

    public Savable load(InputStream inputStream, ReadListener readListener) throws IOException {
        return load(inputStream, readListener, null);
    }

    public Savable load(InputStream inputStream, ReadListener readListener, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream2;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new GZIPInputStream(inputStream));
            int readInt = ByteUtils.readInt(bufferedInputStream);
            this._aliasWidth = ((int) MathUtils.log(readInt, 256.0d)) + 1;
            int i10 = 4;
            for (int i11 = 0; i11 < readInt; i11++) {
                String readString = readString(bufferedInputStream, this._aliasWidth);
                int readInt2 = ByteUtils.readInt(bufferedInputStream);
                String readString2 = readString(bufferedInputStream, readInt2);
                BinaryClassObject binaryClassObject = new BinaryClassObject();
                binaryClassObject._alias = readString.getBytes();
                binaryClassObject._className = readString2;
                int readInt3 = ByteUtils.readInt(bufferedInputStream);
                i10 += this._aliasWidth + 8 + readInt2;
                binaryClassObject._nameFields = new HashMap<>(readInt3);
                binaryClassObject._aliasFields = new HashMap<>(readInt3);
                for (int i12 = 0; i12 < readInt3; i12++) {
                    byte read = (byte) bufferedInputStream.read();
                    byte read2 = (byte) bufferedInputStream.read();
                    int readInt4 = ByteUtils.readInt(bufferedInputStream);
                    String readString3 = readString(bufferedInputStream, readInt4);
                    BinaryClassField binaryClassField = new BinaryClassField(readString3, read, read2);
                    binaryClassObject._nameFields.put(readString3, binaryClassField);
                    binaryClassObject._aliasFields.put(Byte.valueOf(read), binaryClassField);
                    i10 += readInt4 + 6;
                }
                this._classes.put(readString, binaryClassObject);
            }
            if (readListener != null) {
                readListener.readBytes(i10);
            }
            int readInt5 = ByteUtils.readInt(bufferedInputStream);
            int i13 = 4;
            for (int i14 = 0; i14 < readInt5; i14++) {
                this._locationTable.put(Integer.valueOf(ByteUtils.readInt(bufferedInputStream)), Integer.valueOf(ByteUtils.readInt(bufferedInputStream)));
                i13 += 8;
            }
            ByteUtils.readInt(bufferedInputStream);
            int readInt6 = ByteUtils.readInt(bufferedInputStream);
            int i15 = i13 + 8;
            if (readListener != null) {
                readListener.readBytes(i15);
            }
            if (byteArrayOutputStream == null) {
                byteArrayOutputStream2 = new ByteArrayOutputStream(i15);
            } else {
                byteArrayOutputStream.reset();
                byteArrayOutputStream2 = byteArrayOutputStream;
            }
            byte[] bArr = new byte[4096];
            while (true) {
                int read3 = bufferedInputStream.read(bArr);
                if (read3 == -1) {
                    break;
                }
                byteArrayOutputStream2.write(bArr, 0, read3);
                if (readListener != null) {
                    readListener.readBytes(read3);
                }
            }
            this._dataArray = byteArrayOutputStream2.toByteArray();
            Savable readObject = readObject(readInt6);
            if (this._debug) {
                Logger logger2 = logger;
                logger2.info("Importer Stats: ");
                logger2.info("Tags: " + readInt);
                logger2.info("Objects: " + readInt5);
                logger2.info("Data Size: " + this._dataArray.length);
            }
            this._aliasWidth = 0;
            this._contentTable.clear();
            this._classes.clear();
            this._capsuleTable.clear();
            this._locationTable.clear();
            this._dataArray = null;
            return readObject;
        } catch (Throwable th2) {
            this._aliasWidth = 0;
            this._contentTable.clear();
            this._classes.clear();
            this._capsuleTable.clear();
            this._locationTable.clear();
            this._dataArray = null;
            throw th2;
        }
    }

    public String readString(int i10, int i11) throws IOException {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = this._dataArray[i12 + i11];
        }
        return new String(bArr);
    }

    @Override
    public Savable load(URL url) throws IOException {
        return load(url, (ReadListener) null);
    }

    public Savable load(URL url, ReadListener readListener) throws IOException {
        InputStream openStream = url.openStream();
        Savable load = load(openStream, readListener);
        openStream.close();
        return load;
    }

    @Override
    public Savable load(File file) throws IOException {
        return load(file, (ReadListener) null);
    }

    public Savable load(File file, ReadListener readListener) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        Savable load = load(fileInputStream, readListener);
        fileInputStream.close();
        return load;
    }

    @Override
    public Savable load(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Savable load = load(byteArrayInputStream);
        byteArrayInputStream.close();
        return load;
    }
}
