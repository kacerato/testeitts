package com.jme3.util.struct.fields;

import com.jme3.util.struct.Struct;
import com.jme3.util.struct.StructField;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;

public class SubStructArrayField<T extends Struct> extends StructField<T[]> {
    /* JADX WARN: Multi-variable type inference failed */
    public SubStructArrayField(int i10, String str, T[] tArr) {
        super(i10, str, tArr);
        initializeToZero(tArr[0].getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero(Class<? extends T> cls) {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Struct[]) t10).length) {
                return;
            }
            if (((Struct[]) t10)[i10] == null) {
                try {
                    Constructor<? extends T> declaredConstructor = cls.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    ((Struct[]) this.value)[i10] = declaredConstructor.newInstance(null);
                } catch (Exception e10) {
                    throw new RuntimeException("Can't create new instance of " + ((Object) cls) + " default constructor is missing? ", e10);
                }
            }
            i10++;
        }
    }

    public SubStructArrayField(int i10, String str, int i11, Class<? extends T> cls) {
        super(i10, str, (Struct[]) Array.newInstance(cls, i11));
        initializeToZero(cls);
    }
}
