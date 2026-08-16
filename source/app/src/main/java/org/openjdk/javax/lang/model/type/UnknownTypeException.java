package org.openjdk.javax.lang.model.type;

import org.openjdk.javax.lang.model.UnknownEntityException;

public class UnknownTypeException extends UnknownEntityException {
    private static final long serialVersionUID = 269;
    private transient Object parameter;
    private transient TypeMirror type;

    public UnknownTypeException(TypeMirror typeMirror, Object obj) {
        super("Unknown type: " + ((Object) typeMirror));
        this.type = typeMirror;
        this.parameter = obj;
    }

    public Object getArgument() {
        return this.parameter;
    }

    public TypeMirror getUnknownType() {
        return this.type;
    }
}
