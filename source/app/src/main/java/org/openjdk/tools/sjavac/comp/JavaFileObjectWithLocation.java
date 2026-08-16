package org.openjdk.tools.sjavac.comp;

import org.openjdk.javax.tools.ForwardingJavaFileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.api.ClientCodeWrapper;

@ClientCodeWrapper.Trusted
public class JavaFileObjectWithLocation<F extends JavaFileObject> extends ForwardingJavaFileObject<F> {
    private final JavaFileManager.Location loc;

    public JavaFileObjectWithLocation(F f10, JavaFileManager.Location location) {
        super(f10);
        this.loc = location;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JavaFileObjectWithLocation)) {
            return false;
        }
        JavaFileObjectWithLocation javaFileObjectWithLocation = (JavaFileObjectWithLocation) obj;
        return this.loc.equals(javaFileObjectWithLocation.loc) && ((JavaFileObject) this.fileObject).equals(javaFileObjectWithLocation.fileObject);
    }

    public F getDelegate() {
        return (F) this.fileObject;
    }

    public JavaFileManager.Location getLocation() {
        return this.loc;
    }

    public int hashCode() {
        return this.loc.hashCode() ^ ((JavaFileObject) this.fileObject).hashCode();
    }

    public String toString() {
        return "JavaFileObjectWithLocation[loc: " + ((Object) this.loc) + ", " + this.fileObject + "]";
    }
}
