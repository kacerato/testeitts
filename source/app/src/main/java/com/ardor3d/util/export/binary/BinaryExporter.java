package com.ardor3d.util.export.binary;

import com.ardor3d.math.MathUtils;
import com.ardor3d.util.export.Ardor3dExporter;
import com.ardor3d.util.export.ByteUtils;
import com.ardor3d.util.export.Savable;
import com.google.common.collect.M1;
import com.google.common.collect.Q1;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;

public class BinaryExporter implements Ardor3dExporter {
    protected int _aliasCount;
    protected final Map<String, BinaryClassObject> _classes;
    protected final int _compression;
    protected final List<Savable> _contentKeys;
    protected final Map<Savable, BinaryIdContentPair> _contentTable;
    protected final boolean _debug;
    protected int _idCount;
    protected final Map<Integer, Integer> _locationTable;
    private static final Logger logger = Logger.getLogger(BinaryExporter.class.getName());
    public static int DEFAULT_COMPRESSION = 9;

    public BinaryExporter() {
        this(false, DEFAULT_COMPRESSION);
    }

    public static BinaryExporter getInstance() {
        return new BinaryExporter();
    }

    public int findPrevMatch(BinaryIdContentPair binaryIdContentPair, List<BinaryIdContentPair> list) {
        BinaryIdContentPair binaryIdContentPair2;
        if (list == null) {
            return -1;
        }
        int size = list.size();
        do {
            size--;
            if (size < 0) {
                return -1;
            }
            binaryIdContentPair2 = list.get(size);
        } while (!binaryIdContentPair2.getContent().equals(binaryIdContentPair.getContent()));
        return this._locationTable.get(Integer.valueOf(binaryIdContentPair2.getId())).intValue();
    }

    public byte[] fixClassAlias(byte[] bArr, int i10) {
        if (bArr.length == i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i10];
        for (int length = i10 - bArr.length; length < i10; length++) {
            bArr2[length] = bArr[length - bArr.length];
        }
        return bArr2;
    }

    public BinaryIdContentPair generateIdContentPair(BinaryClassObject binaryClassObject) {
        int i10 = this._idCount;
        this._idCount = i10 + 1;
        return new BinaryIdContentPair(i10, new BinaryOutputCapsule(this, binaryClassObject));
    }

    public byte[] generateTag() {
        int log = (int) MathUtils.log(this._aliasCount, 256.0d);
        int i10 = this._aliasCount;
        this._aliasCount = i10 + 1;
        byte[] bArr = new byte[log + 1];
        while (log >= 0) {
            int pow = (int) Math.pow(256.0d, log);
            bArr[(r1 - log) - 1] = (byte) (i10 / pow);
            i10 %= pow;
            log--;
        }
        return bArr;
    }

    public String getChunk(BinaryIdContentPair binaryIdContentPair) {
        return new String(binaryIdContentPair.getContent()._bytes, 0, Math.min(64, binaryIdContentPair.getContent()._bytes.length));
    }

    public int processBinarySavable(Savable savable) throws IOException {
        if (savable == null) {
            return -1;
        }
        BinaryClassObject binaryClassObject = this._classes.get(savable.getClassTag().getName());
        if (binaryClassObject == null) {
            binaryClassObject = new BinaryClassObject();
            binaryClassObject._alias = generateTag();
            binaryClassObject._nameFields = new HashMap<>();
            this._classes.put(savable.getClassTag().getName(), binaryClassObject);
        }
        if (this._contentTable.get(savable) != null) {
            return this._contentTable.get(savable).getId();
        }
        BinaryIdContentPair generateIdContentPair = generateIdContentPair(binaryClassObject);
        if (this._contentTable.put(savable, generateIdContentPair) == null) {
            this._contentKeys.add(savable);
        }
        savable.write(this._contentTable.get(savable).getContent());
        generateIdContentPair.getContent().finish();
        return generateIdContentPair.getId();
    }

    @Override
    public void save(Savable savable, OutputStream outputStream) throws IOException {
        String str = " bytes";
        int i10 = 1;
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream) {
                {
                    this.def.setLevel(BinaryExporter.this._compression);
                }
            };
            int processBinarySavable = processBinarySavable(savable);
            int size = this._classes.o().size();
            int log = ((int) MathUtils.log(size, 256.0d)) + 1;
            gZIPOutputStream.write(ByteUtils.convertToBytes(size));
            int i11 = 0;
            for (String str2 : this._classes.o()) {
                try {
                    BinaryClassObject binaryClassObject = this._classes.get(str2);
                    gZIPOutputStream.write(fixClassAlias(binaryClassObject._alias, log));
                    byte[] bytes = str2.getBytes();
                    gZIPOutputStream.write(ByteUtils.convertToBytes(bytes.length));
                    gZIPOutputStream.write(bytes);
                    i11 = i11 + log + bytes.length + 4;
                    gZIPOutputStream.write(ByteUtils.convertToBytes(binaryClassObject._nameFields.size()));
                    for (String str3 : binaryClassObject._nameFields.o()) {
                        BinaryClassField binaryClassField = binaryClassObject._nameFields.get(str3);
                        gZIPOutputStream.write(binaryClassField._alias);
                        gZIPOutputStream.write(binaryClassField._type);
                        byte[] bytes2 = str3.getBytes();
                        gZIPOutputStream.write(ByteUtils.convertToBytes(bytes2.length));
                        gZIPOutputStream.write(bytes2);
                        i11 += bytes2.length + 6;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this._aliasCount = i10;
                    this._idCount = i10;
                    this._contentTable.clear();
                    this._locationTable.clear();
                    this._classes.clear();
                    this._contentKeys.clear();
                    throw th;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            HashMap hashMap = new HashMap(this._contentTable.size());
            Iterator<Savable> it = this._contentKeys.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                Savable next = it.next();
                String name = next.getClassTag().getName();
                BinaryIdContentPair binaryIdContentPair = this._contentTable.get(next);
                List<BinaryIdContentPair> list = (List) hashMap.get(name + getChunk(binaryIdContentPair));
                int findPrevMatch = findPrevMatch(binaryIdContentPair, list);
                Iterator<Savable> it2 = it;
                if (findPrevMatch != -1) {
                    this._locationTable.put(Integer.valueOf(binaryIdContentPair.getId()), Integer.valueOf(findPrevMatch));
                    it = it2;
                } else {
                    String str4 = str;
                    this._locationTable.put(Integer.valueOf(binaryIdContentPair.getId()), Integer.valueOf(i12));
                    if (list == null) {
                        list = new ArrayList<>();
                        hashMap.put(name + getChunk(binaryIdContentPair), list);
                    }
                    list.add(binaryIdContentPair);
                    byteArrayOutputStream.write(fixClassAlias(this._classes.get(name)._alias, log));
                    BinaryOutputCapsule content = this._contentTable.get(next).getContent();
                    byteArrayOutputStream.write(ByteUtils.convertToBytes(content._bytes.length));
                    byteArrayOutputStream.write(content._bytes);
                    i12 = i12 + log + 4 + content._bytes.length;
                    it = it2;
                    str = str4;
                }
            }
            String str5 = str;
            int size2 = this._locationTable.o().size();
            gZIPOutputStream.write(ByteUtils.convertToBytes(size2));
            int i13 = 0;
            for (Integer num : this._locationTable.o()) {
                gZIPOutputStream.write(ByteUtils.convertToBytes(num.intValue()));
                gZIPOutputStream.write(ByteUtils.convertToBytes(this._locationTable.get(num).intValue()));
                i13 += 8;
            }
            gZIPOutputStream.write(ByteUtils.convertToBytes(1));
            gZIPOutputStream.write(ByteUtils.convertToBytes(processBinarySavable));
            byteArrayOutputStream.writeTo(gZIPOutputStream);
            gZIPOutputStream.finish();
            if (this._debug) {
                Logger logger2 = logger;
                logger2.info("Stats:");
                logger2.info("classes: " + size);
                logger2.info("class table: " + i11 + str5);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("objects: ");
                sb2.append(size2);
                logger2.info(sb2.toString());
                logger2.info("location table: " + i13 + str5);
                logger2.info("data: " + i12 + str5);
            }
            this._aliasCount = 1;
            this._idCount = 1;
            this._contentTable.clear();
            this._locationTable.clear();
            this._classes.clear();
            this._contentKeys.clear();
        } catch (Throwable th3) {
            th = th3;
            i10 = 1;
        }
    }

    public BinaryExporter(boolean z10, int i10) {
        this._aliasCount = 1;
        this._idCount = 1;
        this._contentTable = Q1.b0();
        this._locationTable = Q1.Y();
        this._classes = Q1.Y();
        this._contentKeys = M1.q();
        this._debug = z10;
        this._compression = i10;
    }

    public static BinaryExporter getInstance(boolean z10, int i10) {
        return new BinaryExporter(z10, i10);
    }

    @Override
    public void save(Savable savable, File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        save(savable, fileOutputStream);
        fileOutputStream.close();
    }
}
