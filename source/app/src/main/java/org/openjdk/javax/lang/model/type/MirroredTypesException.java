package org.openjdk.javax.lang.model.type;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MirroredTypesException extends RuntimeException {
    private static final long serialVersionUID = 269;
    transient List<? extends TypeMirror> types;

    public MirroredTypesException(String str, TypeMirror typeMirror) {
        super(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(typeMirror);
        this.types = Collections.unmodifiableList(arrayList);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.types = null;
    }

    public List<? extends TypeMirror> getTypeMirrors() {
        return this.types;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MirroredTypesException(List<? extends TypeMirror> list) {
        super(r0.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Attempt to access Class objects for TypeMirrors ");
        ArrayList arrayList = new ArrayList(list);
        sb2.append(arrayList.toString());
        this.types = Collections.unmodifiableList(arrayList);
    }
}
