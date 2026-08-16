package org.openjdk.javax.lang.model.type;

import java.io.IOException;
import java.io.ObjectInputStream;

public class MirroredTypeException extends MirroredTypesException {
    private static final long serialVersionUID = 269;
    private transient TypeMirror type;

    public MirroredTypeException(TypeMirror typeMirror) {
        super("Attempt to access Class object for TypeMirror " + typeMirror.toString(), typeMirror);
        this.type = typeMirror;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.type = null;
        this.types = null;
    }

    public TypeMirror getTypeMirror() {
        return this.type;
    }
}
