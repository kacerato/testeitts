package org.eclipse.jdt.internal.compiler;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;

public class ClassFilePool {
    public static final int POOL_SIZE = 25;
    ClassFile[] classFiles = new ClassFile[25];

    private ClassFilePool() {
    }

    public static ClassFilePool newInstance() {
        return new ClassFilePool();
    }

    public synchronized ClassFile acquire(SourceTypeBinding sourceTypeBinding) {
        for (int i10 = 0; i10 < 25; i10++) {
            ClassFile classFile = this.classFiles[i10];
            if (classFile == null) {
                ClassFile classFile2 = new ClassFile(sourceTypeBinding);
                this.classFiles[i10] = classFile2;
                classFile2.isShared = true;
                return classFile2;
            }
            if (!classFile.isShared) {
                classFile.reset(sourceTypeBinding, sourceTypeBinding.scope.compilerOptions());
                classFile.isShared = true;
                return classFile;
            }
        }
        return new ClassFile(sourceTypeBinding);
    }

    public synchronized ClassFile acquireForModule(ModuleBinding moduleBinding, CompilerOptions compilerOptions) {
        for (int i10 = 0; i10 < 25; i10++) {
            ClassFile classFile = this.classFiles[i10];
            if (classFile == null) {
                ClassFile classFile2 = new ClassFile(moduleBinding, compilerOptions);
                this.classFiles[i10] = classFile2;
                classFile2.isShared = true;
                return classFile2;
            }
            if (!classFile.isShared) {
                classFile.reset(null, compilerOptions);
                classFile.isShared = true;
                return classFile;
            }
        }
        return new ClassFile(moduleBinding, compilerOptions);
    }

    public synchronized void release(ClassFile classFile) {
        classFile.isShared = false;
    }

    public void reset() {
        Arrays.fill(this.classFiles, (Object) null);
    }
}
