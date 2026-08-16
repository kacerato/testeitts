package org.openjdk.javax.tools;

import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.JavaFileObject;

public class ForwardingJavaFileObject<F extends JavaFileObject> extends ForwardingFileObject<F> implements JavaFileObject {
    public ForwardingJavaFileObject(F f10) {
        super(f10);
    }

    @Override
    public Modifier getAccessLevel() {
        return ((JavaFileObject) this.fileObject).getAccessLevel();
    }

    @Override
    public JavaFileObject.Kind getKind() {
        return ((JavaFileObject) this.fileObject).getKind();
    }

    @Override
    public NestingKind getNestingKind() {
        return ((JavaFileObject) this.fileObject).getNestingKind();
    }

    @Override
    public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
        return ((JavaFileObject) this.fileObject).isNameCompatible(str, kind);
    }
}
