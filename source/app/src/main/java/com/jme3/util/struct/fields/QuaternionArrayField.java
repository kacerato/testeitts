package com.jme3.util.struct.fields;

import com.jme3.math.Quaternion;
import com.jme3.util.struct.StructField;

public class QuaternionArrayField extends StructField<Quaternion[]> {
    public QuaternionArrayField(int i10, String str, Quaternion[] quaternionArr) {
        super(i10, str, quaternionArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Quaternion[]) t10).length) {
                return;
            }
            if (((Quaternion[]) t10)[i10] == null) {
                ((Quaternion[]) t10)[i10] = new Quaternion();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Quaternion[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Quaternion[]) this.value;
    }

    public QuaternionArrayField(int i10, String str, int i11) {
        super(i10, str, new Quaternion[i11]);
        initializeToZero();
    }
}
