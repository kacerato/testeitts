package org.eclipse.jdt.internal.core.hierarchy;

import ei.C13155a;
import java.io.IOException;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IGenericType;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeFactory;
import org.eclipse.jdt.internal.core.util.ResourceCompilationUnit;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class HierarchyBuilder {
    protected String focusQualifiedName;
    protected TypeHierarchy hierarchy;
    protected HierarchyResolver hierarchyResolver;
    protected Map infoToHandle;
    protected NameLookup nameLookup;

    public HierarchyBuilder(TypeHierarchy typeHierarchy) throws JavaModelException {
        this.hierarchy = typeHierarchy;
        JavaProject javaProject = (JavaProject) typeHierarchy.javaProject();
        IType type = typeHierarchy.getType();
        ICompilationUnit compilationUnit = type == null ? null : type.getCompilationUnit();
        ICompilationUnit[] iCompilationUnitArr = this.hierarchy.workingCopies;
        if (compilationUnit != null) {
            int length = iCompilationUnitArr == null ? 0 : iCompilationUnitArr.length;
            if (length == 0) {
                iCompilationUnitArr = new ICompilationUnit[]{compilationUnit};
            } else {
                ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[length + 1];
                iCompilationUnitArr2[0] = compilationUnit;
                System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 1, length);
                iCompilationUnitArr = iCompilationUnitArr2;
            }
        }
        if (javaProject != null) {
            SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(iCompilationUnitArr);
            this.nameLookup = newSearchableNameEnvironment.nameLookup;
            this.hierarchyResolver = new HierarchyResolver(newSearchableNameEnvironment, javaProject.getOptions(true), this, new DefaultProblemFactory());
        }
        this.infoToHandle = new HashMap(5);
        this.focusQualifiedName = type != null ? type.getFullyQualifiedName() : null;
    }

    public abstract void build(boolean z10) throws JavaModelException, CoreException;

    /* JADX WARN: Multi-variable type inference failed */
    public void buildSupertypes() {
        IType type = getType();
        if (type == 0) {
            return;
        }
        try {
            this.hierarchyResolver.resolve((IGenericType) ((JavaElement) type).getElementInfo());
            if (this.hierarchy.contains(type)) {
                return;
            }
            this.hierarchy.addRootClass(type);
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008b, code lost:
    
        if (r0 != 4) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connect(IGenericType iGenericType, IType iType, IType iType2, IType[] iTypeArr) {
        if (iType == 0) {
            return;
        }
        if (TypeHierarchy.DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("Connecting: " + ((JavaElement) iType).toStringWithAncestors());
            StringBuilder sb2 = new StringBuilder("  to superclass: ");
            sb2.append(iType2 == 0 ? "<None>" : ((JavaElement) iType2).toStringWithAncestors());
            printStream.println(sb2.toString());
            printStream.print("  and superinterfaces:");
            if (iTypeArr == 0 || iTypeArr.length == 0) {
                printStream.println(" <None>");
            } else {
                printStream.println();
                int length = iTypeArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (iTypeArr[i10] != 0) {
                        System.out.println(C13155a.f85806a + ((JavaElement) iTypeArr[i10]).toStringWithAncestors());
                    }
                }
            }
        }
        int kind = TypeDeclaration.kind(iGenericType.getModifiers());
        if (kind != 1) {
            if (kind != 2) {
                if (kind != 3) {
                }
            }
            if (this.hierarchy.typeToSuperInterfaces.get(iType) == null) {
                this.hierarchy.addInterface(iType);
            }
            if (iTypeArr == 0) {
                iTypeArr = TypeHierarchy.NO_TYPE;
            }
            this.hierarchy.cacheSuperInterfaces(iType, iTypeArr);
            this.hierarchy.cacheFlags(iType, iGenericType.getModifiers());
        }
        if (iType2 == 0) {
            this.hierarchy.addRootClass(iType);
        } else {
            this.hierarchy.cacheSuperclass(iType, iType2);
        }
        if (iTypeArr == 0) {
        }
        this.hierarchy.cacheSuperInterfaces(iType, iTypeArr);
        this.hierarchy.cacheFlags(iType, iGenericType.getModifiers());
    }

    public org.eclipse.jdt.internal.compiler.env.ICompilationUnit createCompilationUnitFromPath(Openable openable, IFile iFile, char[] cArr) {
        final char[] charArray = openable.getElementName().toCharArray();
        return new ResourceCompilationUnit(iFile, cArr) {
            @Override
            public char[] getFileName() {
                return charArray;
            }
        };
    }

    public IBinaryType createInfoFromClassFile(Openable openable, IResource iResource) {
        try {
            ClassFileReader newClassFileReader = Util.newClassFileReader(iResource);
            this.infoToHandle.put(newClassFileReader, openable);
            return newClassFileReader;
        } catch (ClassFormatException e10) {
            if (TypeHierarchy.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        } catch (CoreException e11) {
            if (TypeHierarchy.DEBUG) {
                e11.printStackTrace();
            }
            return null;
        } catch (IOException e12) {
            if (TypeHierarchy.DEBUG) {
                e12.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IBinaryType createInfoFromClassFileInJar(Openable openable) {
        try {
            IBinaryType create = BinaryTypeFactory.create((IOrdinaryClassFile) openable, null);
            this.infoToHandle.put(create, openable);
            return create;
        } catch (JavaModelException | ClassFormatException e10) {
            if (TypeHierarchy.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        }
    }

    public IType getHandle(IGenericType iGenericType, ReferenceBinding referenceBinding) {
        if (iGenericType == null) {
            return null;
        }
        if (iGenericType instanceof HierarchyType) {
            IType iType = (IType) this.infoToHandle.get(iGenericType);
            if (iType != null) {
                return iType;
            }
            IType iType2 = (IType) ((JavaElement) ((HierarchyType) iGenericType).typeHandle).resolved(referenceBinding);
            this.infoToHandle.put(iGenericType, iType2);
            return iType2;
        }
        if (!iGenericType.isBinaryType()) {
            if (iGenericType instanceof SourceTypeElementInfo) {
                return (IType) ((JavaElement) ((SourceTypeElementInfo) iGenericType).getHandle()).resolved(referenceBinding);
            }
            return null;
        }
        ClassFile classFile = (ClassFile) this.infoToHandle.get(iGenericType);
        if (classFile == null) {
            IType lookupBinaryHandle = lookupBinaryHandle((IBinaryType) iGenericType);
            if (lookupBinaryHandle == null) {
                return null;
            }
            classFile = (ClassFile) lookupBinaryHandle.getParent();
            this.infoToHandle.put(iGenericType, classFile);
        }
        return new ResolvedBinaryType(classFile, classFile.getTypeName(), new String(referenceBinding.computeUniqueKey()));
    }

    public IType getType() {
        return this.hierarchy.getType();
    }

    public IType lookupBinaryHandle(IBinaryType iBinaryType) {
        IType iType;
        int kind = TypeDeclaration.kind(iBinaryType.getModifiers());
        int i10 = kind != 1 ? kind != 2 ? kind != 3 ? 16 : 8 : 4 : 2;
        String str = new String(ClassFile.translatedName(iBinaryType.getName()));
        if (str.equals(this.focusQualifiedName)) {
            return getType();
        }
        NameLookup.Answer findType = this.nameLookup.findType(str, false, i10, true, false, false, null);
        if (findType == null || (iType = findType.type) == null || !iType.isBinary()) {
            return null;
        }
        return findType.type;
    }

    public void worked(IProgressMonitor iProgressMonitor, int i10) {
        if (iProgressMonitor != null) {
            if (iProgressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            iProgressMonitor.worked(i10);
        }
    }
}
