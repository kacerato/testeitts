package com.jme3.export.binary;

import com.jme3.asset.AssetManager;
import com.jme3.export.FormatVersion;
import com.jme3.export.JmeExporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.export.SavableClassUtil;
import com.jme3.math.FastMath;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BinaryExporter implements JmeExporter {
    private static final Logger logger = Logger.getLogger(BinaryExporter.class.getName());
    public static boolean debug = false;
    public static boolean useFastBufs = true;
    protected int aliasCount = 1;
    protected int idCount = 1;
    private final IdentityHashMap<Savable, BinaryIdContentPair> contentTable = new IdentityHashMap<>();
    protected HashMap<Integer, Integer> locationTable = new HashMap<>();
    private final HashMap<String, BinaryClassObject> classes = new HashMap<>();
    private final ArrayList<Savable> contentKeys = new ArrayList<>();

    private BinaryClassObject createClassObject(Class<? extends Savable> cls) throws IOException {
        BinaryClassObject binaryClassObject = new BinaryClassObject();
        binaryClassObject.alias = generateTag();
        binaryClassObject.nameFields = new HashMap<>();
        binaryClassObject.classHierarchyVersions = SavableClassUtil.getSavableVersions(cls);
        this.classes.put(cls.getName(), binaryClassObject);
        return binaryClassObject;
    }

    private int findPrevMatch(BinaryIdContentPair binaryIdContentPair, ArrayList<BinaryIdContentPair> arrayList) {
        BinaryIdContentPair binaryIdContentPair2;
        if (arrayList == null) {
            return -1;
        }
        int size = arrayList.size();
        do {
            size--;
            if (size < 0) {
                return -1;
            }
            binaryIdContentPair2 = arrayList.get(size);
        } while (!binaryIdContentPair2.getContent().equals(binaryIdContentPair.getContent()));
        return this.locationTable.get(Integer.valueOf(binaryIdContentPair2.getId())).intValue();
    }

    private BinaryIdContentPair generateIdContentPair(BinaryClassObject binaryClassObject) {
        int i10 = this.idCount;
        this.idCount = i10 + 1;
        return new BinaryIdContentPair(i10, new BinaryOutputCapsule(this, binaryClassObject));
    }

    private String getChunk(BinaryIdContentPair binaryIdContentPair) {
        return new String(binaryIdContentPair.getContent().bytes, 0, Math.min(64, binaryIdContentPair.getContent().bytes.length));
    }

    public static BinaryExporter getInstance() {
        return new BinaryExporter();
    }

    public static <T extends Savable> T saveAndLoad(AssetManager assetManager, T t10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new BinaryExporter().save(t10, byteArrayOutputStream);
            BinaryImporter binaryImporter = new BinaryImporter();
            binaryImporter.setAssetManager(assetManager);
            return (T) binaryImporter.load(byteArrayOutputStream.toByteArray());
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
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

    public byte[] generateTag() {
        int log = (int) FastMath.log(this.aliasCount, 256.0f);
        int i10 = this.aliasCount;
        this.aliasCount = i10 + 1;
        byte[] bArr = new byte[log + 1];
        while (log >= 0) {
            int pow = (int) FastMath.pow(256.0f, log);
            bArr[(r2 - log) - 1] = (byte) (i10 / pow);
            i10 %= pow;
            log--;
        }
        return bArr;
    }

    @Override
    public OutputCapsule getCapsule(Savable savable) {
        return this.contentTable.get(savable).getContent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int processBinarySavable(Savable savable) throws IOException {
        if (savable == null) {
            return -1;
        }
        Class<?> cls = savable.getClass();
        BinaryClassObject binaryClassObject = this.classes.get(cls.getName());
        if (binaryClassObject == null) {
            binaryClassObject = createClassObject(cls);
        }
        if (this.contentTable.get(savable) != null) {
            return this.contentTable.get(savable).getId();
        }
        BinaryIdContentPair generateIdContentPair = generateIdContentPair(binaryClassObject);
        if (this.contentTable.put(savable, generateIdContentPair) == null) {
            this.contentKeys.add(savable);
        }
        savable.write(this);
        generateIdContentPair.getContent().finish();
        return generateIdContentPair.getId();
    }

    @Override
    public void save(Savable savable, OutputStream outputStream) throws IOException {
        this.aliasCount = 1;
        this.idCount = 1;
        this.classes.clear();
        this.contentTable.clear();
        this.locationTable.clear();
        this.contentKeys.clear();
        outputStream.write(ByteUtils.convertToBytes(FormatVersion.SIGNATURE));
        outputStream.write(ByteUtils.convertToBytes(3));
        int processBinarySavable = processBinarySavable(savable);
        int size = this.classes.o().size();
        int log = ((int) FastMath.log(size, 256.0f)) + 1;
        outputStream.write(ByteUtils.convertToBytes(size));
        int i10 = 0;
        for (String str : this.classes.o()) {
            BinaryClassObject binaryClassObject = this.classes.get(str);
            outputStream.write(fixClassAlias(binaryClassObject.alias, log));
            int i11 = i10 + log;
            outputStream.write(binaryClassObject.classHierarchyVersions.length);
            for (int i12 : binaryClassObject.classHierarchyVersions) {
                outputStream.write(ByteUtils.convertToBytes(i12));
            }
            int length = i11 + (binaryClassObject.classHierarchyVersions.length * 4) + 1;
            byte[] bytes = str.getBytes();
            outputStream.write(ByteUtils.convertToBytes(bytes.length));
            outputStream.write(bytes);
            i10 = length + bytes.length + 4;
            outputStream.write(ByteUtils.convertToBytes(binaryClassObject.nameFields.size()));
            for (String str2 : binaryClassObject.nameFields.o()) {
                BinaryClassField binaryClassField = binaryClassObject.nameFields.get(str2);
                outputStream.write(binaryClassField.alias);
                outputStream.write(binaryClassField.type);
                byte[] bytes2 = str2.getBytes();
                outputStream.write(ByteUtils.convertToBytes(bytes2.length));
                outputStream.write(bytes2);
                i10 += bytes2.length + 6;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        HashMap hashMap = new HashMap(this.contentTable.size());
        Iterator<Savable> it = this.contentKeys.iterator();
        int i13 = 0;
        while (it.hasNext()) {
            Savable next = it.next();
            String name = next.getClass().getName();
            BinaryIdContentPair binaryIdContentPair = this.contentTable.get(next);
            ArrayList<BinaryIdContentPair> arrayList = (ArrayList) hashMap.get(name + getChunk(binaryIdContentPair));
            int findPrevMatch = findPrevMatch(binaryIdContentPair, arrayList);
            if (findPrevMatch != -1) {
                this.locationTable.put(Integer.valueOf(binaryIdContentPair.getId()), Integer.valueOf(findPrevMatch));
            } else {
                Iterator<Savable> it2 = it;
                this.locationTable.put(Integer.valueOf(binaryIdContentPair.getId()), Integer.valueOf(i13));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    hashMap.put(name + getChunk(binaryIdContentPair), arrayList);
                }
                arrayList.add(binaryIdContentPair);
                byteArrayOutputStream.write(fixClassAlias(this.classes.get(name).alias, log));
                BinaryOutputCapsule content = this.contentTable.get(next).getContent();
                byteArrayOutputStream.write(ByteUtils.convertToBytes(content.bytes.length));
                byteArrayOutputStream.write(content.bytes);
                i13 = i13 + log + 4 + content.bytes.length;
                it = it2;
            }
        }
        int size2 = this.locationTable.o().size();
        outputStream.write(ByteUtils.convertToBytes(size2));
        int i14 = 0;
        for (Integer num : this.locationTable.o()) {
            outputStream.write(ByteUtils.convertToBytes(num.intValue()));
            outputStream.write(ByteUtils.convertToBytes(this.locationTable.get(num).intValue()));
            i14 += 8;
        }
        outputStream.write(ByteUtils.convertToBytes(1));
        outputStream.write(ByteUtils.convertToBytes(processBinarySavable));
        byteArrayOutputStream.writeTo(outputStream);
        if (debug) {
            logger.log(Level.INFO, "BinaryExporter Stats:\n * Classes: {0}\n * Class Table: {1} bytes\n * Objects: {2}\n * Location Table: {3} bytes\n * Data: {4} bytes", new Object[]{Integer.valueOf(size), Integer.valueOf(i10), Integer.valueOf(size2), Integer.valueOf(i14), Integer.valueOf(i13)});
        }
    }

    @Override
    public void save(Savable savable, File file, boolean z10) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && z10) {
            parentFile.mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            try {
                save(savable, bufferedOutputStream);
                bufferedOutputStream.close();
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
