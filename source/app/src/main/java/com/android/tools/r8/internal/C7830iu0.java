package com.android.tools.r8.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.security.PrivilegedAction;
import java.util.ArrayList;

public final class C7830iu0 implements PrivilegedAction {

    public final Class f49109a;

    public C7830iu0(Class cls) {
        this.f49109a = cls;
    }

    @Override
    public final Object run() {
        Field[] declaredFields = this.f49109a.getDeclaredFields();
        ArrayList arrayList = new ArrayList(declaredFields.length);
        for (Field field : declaredFields) {
            if (field.isEnumConstant()) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr = (Field[]) arrayList.toArray(new Field[0]);
        AccessibleObject.setAccessible(fieldArr, true);
        return fieldArr;
    }
}
