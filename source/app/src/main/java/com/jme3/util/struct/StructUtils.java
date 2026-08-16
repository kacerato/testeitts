package com.jme3.util.struct;

import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.shader.bufferobject.BufferRegion;
import com.jme3.shader.bufferobject.layout.BufferLayout;
import com.jme3.shader.bufferobject.layout.Std140Layout;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StructUtils {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(StructUtils.class.getName());
    private static final Comparator<StructField<?>> fieldComparator = new Comparator<StructField<?>>() {
        @Override
        public int compare(StructField<?> structField, StructField<?> structField2) {
            return structField.getPosition() - structField2.getPosition();
        }
    };

    public static List<StructField<?>> getFields(Struct struct) {
        return getFields(struct, 0, null);
    }

    public static BufferObject setStd140BufferLayout(List<StructField<?>> list, Std140Layout std140Layout, BufferObject bufferObject) {
        ArrayList arrayList = new ArrayList();
        int i10 = -1;
        int i11 = 0;
        while (i11 < list.size()) {
            StructField<?> structField = list.get(i11);
            Object value = structField.getValue();
            int basicAlignment = std140Layout.getBasicAlignment(value);
            int estimateSize = std140Layout.estimateSize(value);
            int align = std140Layout.align(i10 + 1, basicAlignment);
            int align2 = (i11 == list.size() + (-1) || structField.getGroup() != list.get(i11 + 1).getGroup()) ? std140Layout.align(r4, 16) - 1 : (estimateSize + align) - 1;
            arrayList.add(new BufferRegion(align, align2));
            i11++;
            i10 = align2;
        }
        bufferObject.setRegions(arrayList);
        return bufferObject;
    }

    public static List<StructField<?>> sortFields(List<StructField<?>> list) {
        list.sort(fieldComparator);
        return list;
    }

    public static void updateBufferData(List<StructField<?>> list, boolean z10, BufferLayout bufferLayout, BufferObject bufferObject) {
        boolean z11 = false;
        for (StructField<?> structField : list) {
            if (z10 || structField.isUpdateNeeded()) {
                BufferRegion region = bufferObject.getRegion(structField.getPosition());
                Logger logger2 = logger;
                Level level = Level.FINER;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "Serialize {0} in {1} ", new Object[]{structField, region});
                }
                bufferLayout.write(region.getData(), structField.getValue());
                region.markDirty();
                structField.clearUpdateNeeded();
                z11 = true;
            } else {
                Logger logger3 = logger;
                Level level2 = Level.FINER;
                if (logger3.isLoggable(level2)) {
                    logger3.log(level2, "Already up to date. Skip {0}  ", new Object[]{structField});
                }
            }
        }
        if (z11) {
            bufferObject.setUpdateNeeded(false);
        }
    }

    public static List<StructField<?>> getFields(Struct struct, ArrayList<Field> arrayList) {
        return getFields(struct, 0, arrayList);
    }

    private static List<StructField<?>> getFields(Struct struct, int i10, ArrayList<Field> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        try {
            int i11 = 0;
            for (Field field : struct.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(struct);
                if (obj instanceof StructField) {
                    if (arrayList != null) {
                        arrayList.add(field);
                    }
                    arrayList2.add((StructField) obj);
                }
            }
            sortFields(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                StructField structField = (StructField) arrayList2.get(i12);
                if (structField.getValue() instanceof Struct) {
                    arrayList3.addAll(getFields((Struct) structField.getValue(), i10 + 1, arrayList));
                } else if (structField.getValue().getClass().isArray() && Struct.class.isAssignableFrom(structField.getValue().getClass().getComponentType())) {
                    for (Struct struct2 : (Struct[]) structField.getValue()) {
                        arrayList3.addAll(getFields(struct2, i10 + 1, arrayList));
                    }
                } else {
                    structField.setDepth(i10);
                    structField.setGroup(struct.hashCode());
                    arrayList3.add(structField);
                }
            }
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                ((StructField) it.next()).setPosition(i11);
                i11++;
            }
            return arrayList3;
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
