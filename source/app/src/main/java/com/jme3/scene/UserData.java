package com.jme3.scene;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class UserData implements Savable {
    static final boolean $assertionsDisabled = false;
    public static final String JME_PHYSICSIGNORE = "JmePhysicsIgnore";
    public static final String JME_SHAREDMESH = "JmeSharedMesh";
    private static final int TYPE_ARRAY = 8;
    private static final int TYPE_BOOLEAN = 2;
    private static final int TYPE_BYTE = 11;
    private static final int TYPE_DOUBLE = 9;
    private static final int TYPE_FLOAT = 1;
    private static final int TYPE_INTEGER = 0;
    private static final int TYPE_LIST = 6;
    private static final int TYPE_LONG = 4;
    private static final int TYPE_MAP = 7;
    private static final int TYPE_SAVABLE = 5;
    private static final int TYPE_SHORT = 10;
    private static final int TYPE_STRING = 3;
    protected byte type;
    protected Object value;

    public UserData() {
    }

    public static byte getObjectType(Object obj) {
        if (obj instanceof Integer) {
            return (byte) 0;
        }
        if (obj instanceof Float) {
            return (byte) 1;
        }
        if (obj instanceof Boolean) {
            return (byte) 2;
        }
        if (obj instanceof String) {
            return (byte) 3;
        }
        if (obj instanceof Long) {
            return (byte) 4;
        }
        if (obj instanceof Savable) {
            return (byte) 5;
        }
        if (obj instanceof List) {
            return (byte) 6;
        }
        if (obj instanceof Map) {
            return (byte) 7;
        }
        if (obj instanceof Object[]) {
            return (byte) 8;
        }
        if (obj instanceof Double) {
            return (byte) 9;
        }
        if (obj instanceof Short) {
            return (byte) 10;
        }
        if (obj instanceof Byte) {
            return (byte) 11;
        }
        throw new IllegalArgumentException("Unsupported type: " + obj.getClass().getName());
    }

    private List<?> readList(InputCapsule inputCapsule, String str) throws IOException {
        int readInt = inputCapsule.readInt(str + XMLExporter.ATTRIBUTE_SIZE, 0);
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = inputCapsule.readInt(str + "t" + i10, 0);
            switch (readInt2) {
                case 0:
                    arrayList.add(Integer.valueOf(inputCapsule.readInt(str + "v" + i10, 0)));
                    break;
                case 1:
                    arrayList.add(Float.valueOf(inputCapsule.readFloat(str + "v" + i10, 0.0f)));
                    break;
                case 2:
                    arrayList.add(Boolean.valueOf(inputCapsule.readBoolean(str + "v" + i10, false)));
                    break;
                case 3:
                    arrayList.add(inputCapsule.readString(str + "v" + i10, null));
                    break;
                case 4:
                    arrayList.add(Long.valueOf(inputCapsule.readLong(str + "v" + i10, 0L)));
                    break;
                case 5:
                    arrayList.add(inputCapsule.readSavable(str + "v" + i10, null));
                    break;
                case 6:
                    arrayList.add(readList(inputCapsule, str + "v" + i10));
                    break;
                case 7:
                    HashMap hashMap = new HashMap();
                    List<?> readList = readList(inputCapsule, str + "v(keys)" + i10);
                    List<?> readList2 = readList(inputCapsule, str + "v(vals)" + i10);
                    for (int i11 = 0; i11 < readList.size(); i11++) {
                        hashMap.put(readList.get(i11), readList2.get(i11));
                    }
                    arrayList.add(hashMap);
                    break;
                case 8:
                    arrayList.add(readList(inputCapsule, str + "v" + i10).toArray());
                    break;
                default:
                    throw new UnsupportedOperationException("Unknown type of stored data in a list: " + readInt2);
            }
        }
        return arrayList;
    }

    private void writeList(OutputCapsule outputCapsule, Collection<?> collection, String str) throws IOException {
        if (collection == null) {
            outputCapsule.write(0, XMLExporter.ATTRIBUTE_SIZE, 0);
            return;
        }
        outputCapsule.write(collection.size(), str + XMLExporter.ATTRIBUTE_SIZE, 0);
        int i10 = 0;
        for (Object obj : collection) {
            if (obj instanceof Integer) {
                outputCapsule.write(0, str + "t" + i10, 0);
                outputCapsule.write(((Integer) obj).intValue(), str + "v" + i10, 0);
            } else if (obj instanceof Float) {
                outputCapsule.write(1, str + "t" + i10, 0);
                outputCapsule.write(((Float) obj).floatValue(), str + "v" + i10, 0.0f);
            } else if (obj instanceof Boolean) {
                outputCapsule.write(2, str + "t" + i10, 0);
                outputCapsule.write(((Boolean) obj).booleanValue(), str + "v" + i10, false);
            } else if ((obj instanceof String) || obj == null) {
                outputCapsule.write(3, str + "t" + i10, 0);
                outputCapsule.write((String) obj, str + "v" + i10, (String) null);
            } else if (obj instanceof Long) {
                outputCapsule.write(4, str + "t" + i10, 0);
                outputCapsule.write(((Long) obj).longValue(), str + "v" + i10, 0L);
            } else if (obj instanceof Savable) {
                outputCapsule.write(5, str + "t" + i10, 0);
                outputCapsule.write((Savable) obj, str + "v" + i10, (Savable) null);
            } else if (obj instanceof Object[]) {
                outputCapsule.write(8, str + "t" + i10, 0);
                writeList(outputCapsule, Arrays.asList((Object[]) obj), str + "v" + i10);
            } else if (obj instanceof List) {
                outputCapsule.write(6, str + "t" + i10, 0);
                writeList(outputCapsule, (List) obj, str + "v" + i10);
            } else if (obj instanceof Map) {
                outputCapsule.write(7, str + "t" + i10, 0);
                Map map = (Map) obj;
                writeList(outputCapsule, map.o(), str + "v(keys)" + i10);
                writeList(outputCapsule, map.values(), str + "v(vals)" + i10);
            } else if (obj instanceof Double) {
                outputCapsule.write(9, str + "t" + i10, 0);
                outputCapsule.write(((Double) obj).doubleValue(), str + "v" + i10, 0.0d);
            } else if (obj instanceof Short) {
                outputCapsule.write(10, str + "t" + i10, 0);
                outputCapsule.write(((Short) obj).shortValue(), str + "v" + i10, (short) 0);
            } else {
                if (!(obj instanceof Byte)) {
                    throw new UnsupportedOperationException("Unsupported type stored in the list: " + ((Object) obj.getClass()));
                }
                outputCapsule.write(11, str + "t" + i10, 0);
                outputCapsule.write(((Byte) obj).byteValue(), str + "v" + i10, (byte) 0);
            }
            i10++;
        }
    }

    public Object getValue() {
        return this.value;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        byte readByte = capsule.readByte("type", (byte) 0);
        this.type = readByte;
        switch (readByte) {
            case 0:
                this.value = Integer.valueOf(capsule.readInt("intVal", 0));
                return;
            case 1:
                this.value = Float.valueOf(capsule.readFloat("floatVal", 0.0f));
                return;
            case 2:
                this.value = Boolean.valueOf(capsule.readBoolean("boolVal", false));
                return;
            case 3:
                this.value = capsule.readString("strVal", null);
                return;
            case 4:
                this.value = Long.valueOf(capsule.readLong("longVal", 0L));
                return;
            case 5:
                this.value = capsule.readSavable("savableVal", null);
                return;
            case 6:
                this.value = readList(capsule, "0");
                return;
            case 7:
                HashMap hashMap = new HashMap();
                List<?> readList = readList(capsule, "0");
                List<?> readList2 = readList(capsule, "1");
                for (int i10 = 0; i10 < readList.size(); i10++) {
                    hashMap.put(readList.get(i10), readList2.get(i10));
                }
                this.value = hashMap;
                return;
            case 8:
                this.value = readList(capsule, "0").toArray();
                return;
            case 9:
                this.value = Double.valueOf(capsule.readDouble("doubleVal", 0.0d));
                return;
            case 10:
                this.value = Short.valueOf(capsule.readShort("shortVal", (short) 0));
                return;
            case 11:
                this.value = Byte.valueOf(capsule.readByte("byteVal", (byte) 0));
                return;
            default:
                throw new UnsupportedOperationException("Unknown type of stored data: " + ((int) this.type));
        }
    }

    public String toString() {
        return this.value.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.type, "type", (byte) 0);
        switch (this.type) {
            case 0:
                capsule.write(((Integer) this.value).intValue(), "intVal", 0);
                return;
            case 1:
                capsule.write(((Float) this.value).floatValue(), "floatVal", 0.0f);
                return;
            case 2:
                capsule.write(((Boolean) this.value).booleanValue(), "boolVal", false);
                return;
            case 3:
                capsule.write((String) this.value, "strVal", (String) null);
                return;
            case 4:
                capsule.write(((Long) this.value).longValue(), "longVal", 0L);
                return;
            case 5:
                capsule.write((Savable) this.value, "savableVal", (Savable) null);
                return;
            case 6:
                writeList(capsule, (List) this.value, "0");
                return;
            case 7:
                Map map = (Map) this.value;
                writeList(capsule, map.o(), "0");
                writeList(capsule, map.values(), "1");
                return;
            case 8:
                writeList(capsule, Arrays.asList((Object[]) this.value), "0");
                return;
            case 9:
                capsule.write(((Double) this.value).doubleValue(), "doubleVal", 0.0d);
                return;
            case 10:
                capsule.write(((Short) this.value).shortValue(), "shortVal", (short) 0);
                return;
            case 11:
                capsule.write(((Byte) this.value).byteValue(), "byteVal", (byte) 0);
                return;
            default:
                throw new UnsupportedOperationException("Unsupported value type: " + ((Object) this.value.getClass()));
        }
    }

    public UserData(byte b10, Object obj) {
        this.type = b10;
        this.value = obj;
    }
}
