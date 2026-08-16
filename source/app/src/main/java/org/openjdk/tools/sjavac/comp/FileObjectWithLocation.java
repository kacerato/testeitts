package org.openjdk.tools.sjavac.comp;

import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.ForwardingFileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.tools.javac.api.ClientCodeWrapper;

@ClientCodeWrapper.Trusted
public class FileObjectWithLocation<F extends FileObject> extends ForwardingFileObject<F> {
    private final JavaFileManager.Location loc;

    public FileObjectWithLocation(F f10, JavaFileManager.Location location) {
        super(f10);
        this.loc = location;
    }

    public FileObject getDelegate() {
        return this.fileObject;
    }

    public JavaFileManager.Location getLocation() {
        return this.loc;
    }

    public String toString() {
        return "FileObjectWithLocation[" + ((Object) this.fileObject) + "]";
    }
}
