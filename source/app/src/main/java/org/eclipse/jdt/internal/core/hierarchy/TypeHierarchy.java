package org.eclipse.jdt.internal.core.hierarchy;

import android.icu.text.DateFormat;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeHierarchyChangedListener;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.ResolvedSourceType;
import org.eclipse.jdt.internal.core.TypeVector;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeHierarchy implements ITypeHierarchy, IElementChangedListener {
    static final byte CLASS = 0;
    static final byte COMPUTED_FOR = 2;
    static final byte COMPUTE_SUBTYPES = 1;
    public static boolean DEBUG = false;
    static final byte INTERFACE = 1;
    static final byte[] NO_FLAGS = new byte[0];
    protected static final IType[] NO_TYPE = new IType[0];
    static final byte ROOT = 4;
    static final byte SEPARATOR1 = 10;
    static final byte SEPARATOR2 = 44;
    static final byte SEPARATOR3 = 62;
    static final byte SEPARATOR4 = 13;
    static final int SIZE = 10;
    static final byte VERSION = 0;
    protected ChangeCollector changeCollector;
    protected ArrayList<ITypeHierarchyChangedListener> changeListeners;
    protected Map<IType, IType> classToSuperclass;
    protected boolean computeSubtypes;
    public Map<IOpenable, ArrayList<IType>> files;
    protected IType focusType;
    protected ArrayList<IType> interfaces;
    public ArrayList<String> missingTypes;
    public boolean needsRefresh;
    protected Region packageRegion;
    protected SubMonitor progressMonitor;
    protected IJavaProject project;
    protected Region projectRegion;
    protected TypeVector rootClasses;
    IJavaSearchScope scope;
    protected Map<IType, Integer> typeFlags;
    protected Map<IType, TypeVector> typeToSubtypes;
    protected Map<IType, IType[]> typeToSuperInterfaces;
    protected ICompilationUnit[] workingCopies;

    public TypeHierarchy() {
        this.rootClasses = new TypeVector();
        this.interfaces = new ArrayList<>(10);
        this.missingTypes = new ArrayList<>(4);
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.changeListeners = null;
        this.files = null;
        this.packageRegion = null;
        this.projectRegion = null;
        this.needsRefresh = true;
    }

    private static Integer bytesToFlags(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        return Integer.valueOf(new String(bArr));
    }

    private static byte[] flagsToBytes(Integer num) {
        return num != null ? num.toString().getBytes() : NO_FLAGS;
    }

    private IType[] getAllSubtypesForType(IType iType) {
        ArrayList<IType> arrayList = new ArrayList<>();
        getAllSubtypesForType0(iType, arrayList);
        IType[] iTypeArr = new IType[arrayList.size()];
        arrayList.toArray(iTypeArr);
        return iTypeArr;
    }

    private void getAllSubtypesForType0(IType iType, ArrayList<IType> arrayList) {
        IType[] subtypesForType = getSubtypesForType(iType);
        if (subtypesForType.length != 0) {
            for (IType iType2 : subtypesForType) {
                if (!arrayList.contains(iType2)) {
                    arrayList.add(iType2);
                    getAllSubtypesForType0(iType2, arrayList);
                }
            }
        }
    }

    private ArrayList<IType> getAllSuperInterfaces0(IType iType, ArrayList<IType> arrayList) {
        IType[] iTypeArr = this.typeToSuperInterfaces.get(iType);
        if (iTypeArr == null) {
            return arrayList;
        }
        if (iTypeArr.length != 0) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            for (IType iType2 : iTypeArr) {
                if (!arrayList.contains(iType2)) {
                    arrayList.add(iType2);
                    arrayList = getAllSuperInterfaces0(iType2, arrayList);
                }
            }
        }
        IType iType3 = this.classToSuperclass.get(iType);
        return iType3 != null ? getAllSuperInterfaces0(iType3, arrayList) : arrayList;
    }

    private ArrayList<IType> getAllSupertypes0(IType iType, ArrayList<IType> arrayList) {
        IType[] iTypeArr = this.typeToSuperInterfaces.get(iType);
        if (iTypeArr == null) {
            return arrayList;
        }
        if (iTypeArr.length != 0) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            for (IType iType2 : iTypeArr) {
                if (!arrayList.contains(iType2)) {
                    arrayList.add(iType2);
                    arrayList = getAllSuperInterfaces0(iType2, arrayList);
                }
            }
        }
        IType iType3 = this.classToSuperclass.get(iType);
        if (iType3 == null) {
            return arrayList;
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(iType3);
        return getAllSupertypes0(iType3, arrayList);
    }

    private synchronized ArrayList<ITypeHierarchyChangedListener> getClonedChangeListeners() {
        ArrayList<ITypeHierarchyChangedListener> arrayList = this.changeListeners;
        if (arrayList == null) {
            return null;
        }
        return (ArrayList) arrayList.clone();
    }

    private IType[] getExtendingInterfaces0(IType iType) {
        IType[] value;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<IType, IType[]> entry : this.typeToSuperInterfaces.entrySet()) {
            IType key = entry.getKey();
            if (isInterface(key) && (value = entry.getValue()) != null) {
                for (IType iType2 : value) {
                    if (iType2.equals(iType)) {
                        arrayList.add(key);
                    }
                }
            }
        }
        IType[] iTypeArr = new IType[arrayList.size()];
        arrayList.toArray(iTypeArr);
        return iTypeArr;
    }

    private IType[] getImplementingClasses0(IType iType) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<IType, IType[]> entry : this.typeToSuperInterfaces.entrySet()) {
            IType key = entry.getKey();
            if (!isInterface(key)) {
                for (IType iType2 : entry.getValue()) {
                    if (iType2.equals(iType)) {
                        arrayList.add(key);
                    }
                }
            }
        }
        IType[] iTypeArr = new IType[arrayList.size()];
        arrayList.toArray(iTypeArr);
        return iTypeArr;
    }

    private IType[] getSubtypesForType(IType iType) {
        TypeVector typeVector = this.typeToSubtypes.get(iType);
        return typeVector == null ? NO_TYPE : typeVector.elements();
    }

    private boolean hasSubtypeNamed(String str) {
        int indexOf = str.indexOf(60);
        if (indexOf > -1) {
            str = str.substring(0, indexOf);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf > -1) {
            str = str.substring(lastIndexOf + 1);
        }
        IType iType = this.focusType;
        if (iType != null && iType.getElementName().equals(str)) {
            return true;
        }
        IType iType2 = this.focusType;
        for (IType iType3 : iType2 == null ? getAllTypes() : getAllSubtypes(iType2)) {
            if (iType3.getElementName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasTypeNamed(String str) {
        for (IType iType : getAllTypes()) {
            if (iType.getElementName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAffectedByChildren(IJavaElementDelta iJavaElementDelta, int i10) {
        if ((iJavaElementDelta.getFlags() & 8) > 0) {
            for (IJavaElementDelta iJavaElementDelta2 : iJavaElementDelta.getAffectedChildren()) {
                if (isAffected(iJavaElementDelta2, i10)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isAffectedByJavaModel(IJavaElementDelta iJavaElementDelta, IJavaElement iJavaElement, int i10) {
        int kind = iJavaElementDelta.getKind();
        if (kind == 1 || kind == 2) {
            return iJavaElement.equals(javaProject().getJavaModel());
        }
        if (kind != 4) {
            return false;
        }
        return isAffectedByChildren(iJavaElementDelta, i10);
    }

    private boolean isAffectedByJavaProject(IJavaElementDelta iJavaElementDelta, IJavaElement iJavaElement, int i10) {
        int kind = iJavaElementDelta.getKind();
        int flags = iJavaElementDelta.getFlags();
        if ((flags & 512) != 0) {
            kind = 1;
        }
        if ((flags & 1024) != 0) {
            kind = 2;
        }
        if (kind != 1) {
            if (kind != 2) {
                if (kind != 4) {
                    return false;
                }
                return isAffectedByChildren(iJavaElementDelta, i10);
            }
            for (IJavaElement iJavaElement2 : this.packageRegion.getElements()) {
                IJavaProject javaProject = iJavaElement2.getJavaProject();
                if (javaProject != null && javaProject.equals(iJavaElement)) {
                    return true;
                }
            }
            return false;
        }
        try {
            IClasspathEntry[] expandedClasspath = ((JavaProject) javaProject()).getExpandedClasspath();
            for (int i11 = 0; i11 < expandedClasspath.length; i11++) {
                if (expandedClasspath[i11].getEntryKind() == 2 && expandedClasspath[i11].getPath().equals(iJavaElement.getPath())) {
                    return true;
                }
            }
            if (this.focusType != null) {
                IClasspathEntry[] expandedClasspath2 = ((JavaProject) iJavaElement).getExpandedClasspath();
                IPath path = javaProject().getPath();
                for (int i12 = 0; i12 < expandedClasspath2.length; i12++) {
                    if (expandedClasspath2[i12].getEntryKind() == 2 && expandedClasspath2[i12].getPath().equals(path)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    private boolean isAffectedByPackageFragment(IJavaElementDelta iJavaElementDelta, PackageFragment packageFragment, int i10) {
        int kind = iJavaElementDelta.getKind();
        if (kind == 1) {
            return this.projectRegion.contains(packageFragment);
        }
        if (kind == 2) {
            return packageRegionContainsSamePackageFragment(packageFragment);
        }
        if (kind != 4) {
            return false;
        }
        return isAffectedByChildren(iJavaElementDelta, i10);
    }

    private boolean isAffectedByPackageFragmentRoot(IJavaElementDelta iJavaElementDelta, IJavaElement iJavaElement, int i10) {
        int kind = iJavaElementDelta.getKind();
        if (kind == 1) {
            return this.projectRegion.contains(iJavaElement);
        }
        if (kind == 2 || kind == 4) {
            int flags = iJavaElementDelta.getFlags();
            if ((flags & 64) > 0 && this.projectRegion != null) {
                IPath path = ((IPackageFragmentRoot) iJavaElement).getPath();
                for (IJavaElement iJavaElement2 : this.projectRegion.getElements()) {
                    if (((JavaProject) iJavaElement2).getClasspathEntryFor(path) != null) {
                        return true;
                    }
                }
            }
            if ((flags & 128) > 0 || (flags & 32768) > 0) {
                for (IJavaElement iJavaElement3 : this.packageRegion.getElements()) {
                    if (iJavaElement3.getParent().equals(iJavaElement)) {
                        return true;
                    }
                }
                return false;
            }
        }
        return isAffectedByChildren(iJavaElementDelta, i10);
    }

    private boolean isInterface(IType iType) {
        int cachedFlags = getCachedFlags(iType);
        if (cachedFlags != -1) {
            return Flags.isInterface(cachedFlags);
        }
        try {
            return iType.isInterface();
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public static ITypeHierarchy load(IType iType, InputStream inputStream, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        byte b10;
        byte read;
        int i10;
        int i11 = 0;
        try {
            TypeHierarchy typeHierarchy = new TypeHierarchy();
            typeHierarchy.initialize(1);
            byte b11 = 10;
            IType[] iTypeArr = new IType[10];
            if (((byte) inputStream.read()) != 0) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(4));
            }
            if ((((byte) inputStream.read()) & 1) != 0) {
                typeHierarchy.computeSubtypes = true;
            }
            byte[] readUntil = readUntil(inputStream, (byte) 10);
            if (readUntil.length > 0) {
                IJavaProject iJavaProject = (IJavaProject) JavaCore.create(new String(readUntil));
                typeHierarchy.project = iJavaProject;
                typeHierarchy.scope = SearchEngine.createJavaSearchScope(new IJavaElement[]{iJavaProject});
            } else {
                typeHierarchy.project = null;
                typeHierarchy.scope = SearchEngine.createWorkspaceScope();
            }
            byte[] readUntil2 = readUntil(inputStream, (byte) 10);
            int length = readUntil2.length;
            int i12 = 0;
            int i13 = 0;
            while (i12 < length) {
                if (readUntil2[i12] == 44) {
                    int i14 = i12 - i13;
                    byte[] bArr = new byte[i14];
                    i10 = 0;
                    System.arraycopy(readUntil2, i13, bArr, 0, i14);
                    typeHierarchy.missingTypes.add(new String(bArr));
                    i13 = i12 + 1;
                } else {
                    i10 = 0;
                }
                i12++;
                i11 = i10;
                b11 = 10;
            }
            int i15 = length - i13;
            byte[] bArr2 = new byte[i15];
            System.arraycopy(readUntil2, i13, bArr2, i11, i15);
            typeHierarchy.missingTypes.add(new String(bArr2));
            int i16 = i11;
            while (true) {
                byte read2 = (byte) inputStream.read();
                if (read2 == b11 || read2 == -1) {
                    break;
                }
                byte[] readUntil3 = readUntil(inputStream, (byte) 13, 1);
                readUntil3[i11] = read2;
                IType iType2 = (IType) JavaCore.create(new String(readUntil3), workingCopyOwner);
                if (iTypeArr.length == i16) {
                    IType[] iTypeArr2 = new IType[i16 * 2];
                    System.arraycopy(iTypeArr, i11, iTypeArr2, i11, i16);
                    iTypeArr = iTypeArr2;
                }
                int i17 = i16 + 1;
                iTypeArr[i16] = iType2;
                Integer bytesToFlags = bytesToFlags(readUntil(inputStream, (byte) 13));
                if (bytesToFlags != null) {
                    typeHierarchy.cacheFlags(iType2, bytesToFlags.intValue());
                }
                byte read3 = (byte) inputStream.read();
                if ((read3 & 1) != 0) {
                    typeHierarchy.addInterface(iType2);
                }
                if ((read3 & 2) != 0) {
                    if (!iType2.equals(iType)) {
                        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(4));
                    }
                    typeHierarchy.focusType = iType2;
                }
                if ((read3 & 4) != 0) {
                    typeHierarchy.addRootClass(iType2);
                }
                i16 = i17;
            }
            while (true) {
                byte read4 = (byte) inputStream.read();
                b10 = 62;
                if (read4 == b11 || read4 == -1) {
                    break;
                }
                byte[] readUntil4 = readUntil(inputStream, (byte) 62, 1);
                readUntil4[i11] = read4;
                typeHierarchy.cacheSuperclass(iTypeArr[Integer.parseInt(new String(readUntil4))], iTypeArr[Integer.parseInt(new String(readUntil(inputStream, b11)))]);
            }
            while (true) {
                read = (byte) inputStream.read();
                if (read == b11 || read == -1) {
                    break;
                }
                byte[] readUntil5 = readUntil(inputStream, b10, 1);
                readUntil5[i11] = read;
                int parseInt = Integer.parseInt(new String(readUntil5));
                byte[] readUntil6 = readUntil(inputStream, b11);
                IType[] iTypeArr3 = new IType[(readUntil6.length / 2) + 1];
                int i18 = i11;
                int i19 = i18;
                int i20 = i19;
                while (i18 < readUntil6.length) {
                    if (readUntil6[i18] == 44) {
                        int i21 = i18 - i19;
                        byte[] bArr3 = new byte[i21];
                        System.arraycopy(readUntil6, i19, bArr3, i11, i21);
                        i19 = i18 + 1;
                        iTypeArr3[i20] = iTypeArr[Integer.parseInt(new String(bArr3))];
                        i20++;
                    }
                    i18++;
                    i11 = 0;
                    b10 = 62;
                }
                byte[] bArr4 = new byte[readUntil6.length - i19];
                System.arraycopy(readUntil6, i19, bArr4, i11, readUntil6.length - i19);
                int i22 = i20 + 1;
                iTypeArr3[i20] = iTypeArr[Integer.parseInt(new String(bArr4))];
                IType[] iTypeArr4 = new IType[i22];
                System.arraycopy(iTypeArr3, i11, iTypeArr4, i11, i22);
                typeHierarchy.cacheSuperInterfaces(iTypeArr[parseInt], iTypeArr4);
                b11 = 10;
            }
            if (read != -1) {
                return typeHierarchy;
            }
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(4));
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    public static byte[] readUntil(InputStream inputStream, byte b10) throws JavaModelException, IOException {
        return readUntil(inputStream, b10, 0);
    }

    public void addInterface(IType iType) {
        this.interfaces.add(iType);
    }

    public void addRootClass(IType iType) {
        if (this.rootClasses.contains(iType)) {
            return;
        }
        this.rootClasses.add(iType);
    }

    public void addSubtype(IType iType, IType iType2) {
        TypeVector typeVector = this.typeToSubtypes.get(iType);
        if (typeVector == null) {
            typeVector = new TypeVector();
            this.typeToSubtypes.put(iType, typeVector);
        }
        if (typeVector.contains(iType2)) {
            return;
        }
        typeVector.add(iType2);
    }

    @Override
    public synchronized void addTypeHierarchyChangedListener(ITypeHierarchyChangedListener iTypeHierarchyChangedListener) {
        try {
            ArrayList<ITypeHierarchyChangedListener> arrayList = this.changeListeners;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.changeListeners = arrayList;
            }
            if (arrayList.size() == 0) {
                JavaCore.addElementChangedListener(this);
            }
            if (arrayList.indexOf(iTypeHierarchyChangedListener) == -1) {
                arrayList.add(iTypeHierarchyChangedListener);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void cacheFlags(IType iType, int i10) {
        this.typeFlags.put(iType, Integer.valueOf(i10));
    }

    public void cacheSuperInterfaces(IType iType, IType[] iTypeArr) {
        this.typeToSuperInterfaces.put(iType, iTypeArr);
        for (IType iType2 : iTypeArr) {
            if (iType2 != null) {
                addSubtype(iType2, iType);
            }
        }
    }

    public void cacheSuperclass(IType iType, IType iType2) {
        if (iType2 != null) {
            if (!iType2.equals(iType)) {
                this.classToSuperclass.put(iType, iType2);
                addSubtype(iType2, iType);
            } else {
                Util.log(4, "Type " + iType.getFullyQualifiedName() + " is it's own superclass");
            }
        }
    }

    public void checkCanceled() {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null && subMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void compute() throws JavaModelException, CoreException {
        if (this.focusType != null) {
            new IndexBasedHierarchyBuilder(this, this.scope).build(this.computeSubtypes);
        }
    }

    @Override
    public boolean contains(IType iType) {
        return this.classToSuperclass.get(iType) != null || this.rootClasses.contains(iType) || this.interfaces.contains(iType);
    }

    @Override
    public void elementChanged(ElementChangedEvent elementChangedEvent) {
        if (!this.needsRefresh && isAffected(elementChangedEvent.getDelta(), elementChangedEvent.getType())) {
            this.needsRefresh = true;
            fireChange();
        }
    }

    @Override
    public boolean exists() {
        if (!this.needsRefresh) {
            return true;
        }
        IType iType = this.focusType;
        return (iType == null || iType.exists()) && javaProject().exists();
    }

    public void fireChange() {
        ArrayList<ITypeHierarchyChangedListener> clonedChangeListeners = getClonedChangeListeners();
        if (clonedChangeListeners == null) {
            return;
        }
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("FIRING hierarchy change [" + ((Object) Thread.currentThread()) + "]");
            if (this.focusType != null) {
                printStream.println("    for hierarchy focused on " + ((JavaElement) this.focusType).toStringWithAncestors());
            }
        }
        for (int i10 = 0; i10 < clonedChangeListeners.size(); i10++) {
            final ITypeHierarchyChangedListener iTypeHierarchyChangedListener = clonedChangeListeners.get(i10);
            SafeRunner.run(new ISafeRunnable() {
                public void handleException(Throwable th2) {
                    Util.log(th2, "Exception occurred in listener of Type hierarchy change notification");
                }

                public void run() throws Exception {
                    iTypeHierarchyChangedListener.typeHierarchyChanged(TypeHierarchy.this);
                }
            });
        }
    }

    @Override
    public IType[] getAllClasses() {
        TypeVector copy = this.rootClasses.copy();
        Iterator<IType> it = this.classToSuperclass.o().iterator();
        while (it.hasNext()) {
            copy.add(it.next());
        }
        return copy.elements();
    }

    @Override
    public IType[] getAllInterfaces() {
        IType[] iTypeArr = new IType[this.interfaces.size()];
        this.interfaces.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public IType[] getAllSubtypes(IType iType) {
        return getAllSubtypesForType(iType);
    }

    @Override
    public IType[] getAllSuperInterfaces(IType iType) {
        ArrayList<IType> allSuperInterfaces0 = getAllSuperInterfaces0(iType, null);
        if (allSuperInterfaces0 == null) {
            return NO_TYPE;
        }
        IType[] iTypeArr = new IType[allSuperInterfaces0.size()];
        allSuperInterfaces0.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public IType[] getAllSuperclasses(IType iType) {
        IType superclass = getSuperclass(iType);
        TypeVector typeVector = new TypeVector();
        while (superclass != null) {
            typeVector.add(superclass);
            superclass = getSuperclass(superclass);
        }
        return typeVector.elements();
    }

    @Override
    public IType[] getAllSupertypes(IType iType) {
        ArrayList<IType> allSupertypes0 = getAllSupertypes0(iType, null);
        if (allSupertypes0 == null) {
            return NO_TYPE;
        }
        IType[] iTypeArr = new IType[allSupertypes0.size()];
        allSupertypes0.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public IType[] getAllTypes() {
        IType[] allClasses = getAllClasses();
        int length = allClasses.length;
        IType[] allInterfaces = getAllInterfaces();
        int length2 = allInterfaces.length;
        IType[] iTypeArr = new IType[length + length2];
        System.arraycopy(allClasses, 0, iTypeArr, 0, length);
        System.arraycopy(allInterfaces, 0, iTypeArr, length, length2);
        return iTypeArr;
    }

    @Override
    public int getCachedFlags(IType iType) {
        Integer num = this.typeFlags.get(iType);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override
    public IType[] getExtendingInterfaces(IType iType) {
        return !isInterface(iType) ? NO_TYPE : getExtendingInterfaces0(iType);
    }

    @Override
    public IType[] getImplementingClasses(IType iType) {
        return !isInterface(iType) ? NO_TYPE : getImplementingClasses0(iType);
    }

    @Override
    public IType[] getRootClasses() {
        return this.rootClasses.elements();
    }

    @Override
    public IType[] getRootInterfaces() {
        IType[] allInterfaces = getAllInterfaces();
        IType[] iTypeArr = new IType[allInterfaces.length];
        int i10 = 0;
        for (int i11 = 0; i11 < allInterfaces.length; i11++) {
            IType[] superInterfaces = getSuperInterfaces(allInterfaces[i11]);
            if (superInterfaces == null || superInterfaces.length == 0) {
                iTypeArr[i10] = allInterfaces[i11];
                i10++;
            }
        }
        IType[] iTypeArr2 = new IType[i10];
        if (i10 > 0) {
            System.arraycopy(iTypeArr, 0, iTypeArr2, 0, i10);
        }
        return iTypeArr2;
    }

    @Override
    public IType[] getSubclasses(IType iType) {
        TypeVector typeVector;
        if (!isInterface(iType) && (typeVector = this.typeToSubtypes.get(iType)) != null) {
            return typeVector.elements();
        }
        return NO_TYPE;
    }

    @Override
    public IType[] getSubtypes(IType iType) {
        return getSubtypesForType(iType);
    }

    @Override
    public IType[] getSuperInterfaces(IType iType) {
        IType[] iTypeArr = this.typeToSuperInterfaces.get(iType);
        return iTypeArr == null ? NO_TYPE : iTypeArr;
    }

    @Override
    public IType getSuperclass(IType iType) {
        if (isInterface(iType)) {
            return null;
        }
        return this.classToSuperclass.get(iType);
    }

    @Override
    public IType[] getSupertypes(IType iType) {
        IType superclass = getSuperclass(iType);
        if (superclass == null) {
            return getSuperInterfaces(iType);
        }
        TypeVector typeVector = new TypeVector(getSuperInterfaces(iType));
        typeVector.add(superclass);
        return typeVector.elements();
    }

    @Override
    public IType getType() {
        return this.focusType;
    }

    public IType[] growAndAddToArray(IType[] iTypeArr, IType[] iTypeArr2) {
        if (iTypeArr == null || iTypeArr.length == 0) {
            return iTypeArr2;
        }
        IType[] iTypeArr3 = new IType[iTypeArr.length + iTypeArr2.length];
        System.arraycopy(iTypeArr, 0, iTypeArr3, 0, iTypeArr.length);
        System.arraycopy(iTypeArr2, 0, iTypeArr3, iTypeArr.length, iTypeArr2.length);
        return iTypeArr3;
    }

    public boolean hasFineGrainChanges() {
        ChangeCollector changeCollector = this.changeCollector;
        return changeCollector != null && changeCollector.needsRefresh();
    }

    public boolean hasSupertype(String str) {
        Iterator<IType> it = this.classToSuperclass.values().iterator();
        while (it.hasNext()) {
            if (it.next().getElementName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean includesTypeOrSupertype(IType iType) {
        if (hasTypeNamed(iType.getElementName())) {
            return true;
        }
        String superclassName = iType.getSuperclassName();
        if (superclassName != null && hasTypeNamed(superclassName.substring(superclassName.lastIndexOf(46) + 1))) {
            return true;
        }
        String[] superInterfaceNames = iType.getSuperInterfaceNames();
        if (superInterfaceNames != null) {
            for (String str : superInterfaceNames) {
                if (hasTypeNamed(str.substring(str.lastIndexOf(46) + 1))) {
                    return true;
                }
            }
        }
        return false;
    }

    public void initialize(int i10) {
        if (i10 < 10) {
            i10 = 10;
        }
        int i11 = i10 / 2;
        this.classToSuperclass = new HashMap(i10);
        this.interfaces = new ArrayList<>(i11);
        this.missingTypes = new ArrayList<>(i11);
        this.rootClasses = new TypeVector();
        this.typeToSubtypes = new HashMap(i11);
        this.typeToSuperInterfaces = new HashMap(i11);
        this.typeFlags = new HashMap(i11);
        this.projectRegion = new Region();
        this.packageRegion = new Region();
        this.files = new HashMap(5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initializeRegions() {
        for (ResolvedSourceType resolvedSourceType : getAllTypes()) {
            IOpenable iOpenable = (Openable) resolvedSourceType.getOpenableParent();
            if (iOpenable != null) {
                ArrayList<IType> arrayList = this.files.get(iOpenable);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.files.put(iOpenable, arrayList);
                }
                arrayList.add(resolvedSourceType);
            }
            this.packageRegion.add(resolvedSourceType.getPackageFragment());
            IJavaProject javaProject = resolvedSourceType.getJavaProject();
            if (javaProject != null) {
                this.projectRegion.add(javaProject);
            }
            checkCanceled();
        }
    }

    public synchronized boolean isAffected(IJavaElementDelta iJavaElementDelta, int i10) {
        IJavaElement element = iJavaElementDelta.getElement();
        switch (element.getElementType()) {
            case 1:
                return isAffectedByJavaModel(iJavaElementDelta, element, i10);
            case 2:
                return isAffectedByJavaProject(iJavaElementDelta, element, i10);
            case 3:
                return isAffectedByPackageFragmentRoot(iJavaElementDelta, element, i10);
            case 4:
                return isAffectedByPackageFragment(iJavaElementDelta, (PackageFragment) element, i10);
            case 5:
            case 6:
                return isAffectedByOpenable(iJavaElementDelta, element, i10);
            default:
                return false;
        }
    }

    public boolean isAffectedByOpenable(IJavaElementDelta iJavaElementDelta, IJavaElement iJavaElement, int i10) {
        if (iJavaElement instanceof CompilationUnit) {
            CompilationUnit compilationUnit = (CompilationUnit) iJavaElement;
            IType iType = this.focusType;
            ICompilationUnit compilationUnit2 = iType != null ? iType.getCompilationUnit() : null;
            if (compilationUnit2 != null && compilationUnit2.getOwner() != compilationUnit.getOwner()) {
                return false;
            }
            if (i10 != 4 && !compilationUnit.isPrimary() && iJavaElementDelta.getKind() == 1) {
                return false;
            }
            ChangeCollector changeCollector = this.changeCollector;
            if (changeCollector == null) {
                changeCollector = new ChangeCollector(this);
            }
            try {
                changeCollector.addChange(compilationUnit, iJavaElementDelta);
            } catch (JavaModelException e10) {
                if (DEBUG) {
                    e10.printStackTrace();
                }
            }
            if (!compilationUnit.isWorkingCopy() || i10 != 4) {
                return changeCollector.needsRefresh();
            }
            this.changeCollector = changeCollector;
            return false;
        }
        if (iJavaElement instanceof ClassFile) {
            int kind = iJavaElementDelta.getKind();
            if (kind == 1) {
                IType type = ((ClassFile) iJavaElement).getType();
                String elementName = type.getElementName();
                if (hasSupertype(elementName) || subtypesIncludeSupertypeOf(type) || this.missingTypes.contains(elementName)) {
                    return true;
                }
            } else {
                if (kind == 2) {
                    return this.files.get((IOpenable) iJavaElement) != null;
                }
                if (kind == 4) {
                    for (IJavaElementDelta iJavaElementDelta2 : iJavaElementDelta.getAffectedChildren()) {
                        IJavaElement element = iJavaElementDelta2.getElement();
                        if (element instanceof IType) {
                            IType iType2 = (IType) element;
                            boolean z10 = (iJavaElementDelta.getFlags() & 2) > 0;
                            boolean z11 = (iJavaElementDelta.getFlags() & 2048) > 0;
                            if ((z10 && hasSupertype(iType2.getElementName())) || (z11 && includesTypeOrSupertype(iType2))) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public IJavaProject javaProject() {
        return this.focusType.getJavaProject();
    }

    public boolean packageRegionContainsSamePackageFragment(PackageFragment packageFragment) {
        for (IJavaElement iJavaElement : this.packageRegion.getElements()) {
            if (Util.equalArraysOrNull(((PackageFragment) iJavaElement).names, packageFragment.names)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public synchronized void refresh(IProgressMonitor iProgressMonitor) throws JavaModelException {
        long j10;
        try {
            try {
                try {
                    IType iType = this.focusType;
                    this.progressMonitor = SubMonitor.convert(iProgressMonitor, iType != null ? Messages.bind(Messages.hierarchy_creatingOnType, iType.getFullyQualifiedName()) : Messages.hierarchy_creating, 100);
                    if (DEBUG) {
                        j10 = System.currentTimeMillis();
                        if (this.computeSubtypes) {
                            System.out.println("CREATING TYPE HIERARCHY [" + ((Object) Thread.currentThread()) + "]");
                        } else {
                            System.out.println("CREATING SUPER TYPE HIERARCHY [" + ((Object) Thread.currentThread()) + "]");
                        }
                        if (this.focusType != null) {
                            System.out.println("  on type " + ((JavaElement) this.focusType).toStringWithAncestors());
                        }
                    } else {
                        j10 = -1;
                    }
                    compute();
                    initializeRegions();
                    this.needsRefresh = false;
                    this.changeCollector = null;
                    if (DEBUG) {
                        if (this.computeSubtypes) {
                            System.out.println("CREATED TYPE HIERARCHY in " + (System.currentTimeMillis() - j10) + DateFormat.MINUTE_SECOND);
                        } else {
                            System.out.println("CREATED SUPER TYPE HIERARCHY in " + (System.currentTimeMillis() - j10) + DateFormat.MINUTE_SECOND);
                        }
                        System.out.println(toString());
                    }
                    if (iProgressMonitor != null) {
                        iProgressMonitor.done();
                    }
                    this.progressMonitor = null;
                } catch (JavaModelException e10) {
                    throw e10;
                }
            } catch (CoreException e11) {
                throw new JavaModelException(e11);
            }
        } catch (Throwable th2) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            this.progressMonitor = null;
            throw th2;
        } finally {
        }
    }

    @Override
    public synchronized void removeTypeHierarchyChangedListener(ITypeHierarchyChangedListener iTypeHierarchyChangedListener) {
        ArrayList<ITypeHierarchyChangedListener> arrayList = this.changeListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(iTypeHierarchyChangedListener);
        if (arrayList.isEmpty()) {
            JavaCore.removeElementChangedListener(this);
        }
    }

    @Override
    public void store(OutputStream outputStream, IProgressMonitor iProgressMonitor) throws JavaModelException {
        int i10;
        try {
            Hashtable hashtable = new Hashtable();
            Hashtable hashtable2 = new Hashtable();
            if (this.focusType != null) {
                hashtable.put(this.focusType, 0);
                hashtable2.put(0, this.focusType);
                i10 = 1;
            } else {
                i10 = 0;
            }
            for (Object obj : this.classToSuperclass.entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                IType iType = (IType) entry.getKey();
                if (hashtable.get(iType) == null) {
                    int i11 = i10 + 1;
                    Integer valueOf = Integer.valueOf(i10);
                    hashtable.put(iType, valueOf);
                    hashtable2.put(valueOf, iType);
                    i10 = i11;
                }
                IType iType2 = (IType) entry.getValue();
                if (iType2 != null && hashtable.get(iType2) == null) {
                    int i12 = i10 + 1;
                    Integer valueOf2 = Integer.valueOf(i10);
                    hashtable.put(iType2, valueOf2);
                    hashtable2.put(valueOf2, iType2);
                    i10 = i12;
                }
            }
            for (Object obj2 : this.typeToSuperInterfaces.entrySet().toArray()) {
                Map.Entry entry2 = (Map.Entry) obj2;
                IType iType3 = (IType) entry2.getKey();
                if (hashtable.get(iType3) == null) {
                    int i13 = i10 + 1;
                    Integer valueOf3 = Integer.valueOf(i10);
                    hashtable.put(iType3, valueOf3);
                    hashtable2.put(valueOf3, iType3);
                    i10 = i13;
                }
                IType[] iTypeArr = (IType[]) entry2.getValue();
                if (iTypeArr != null) {
                    for (IType iType4 : iTypeArr) {
                        if (iType4 != null && hashtable.get(iType4) == null) {
                            int i14 = i10 + 1;
                            Integer valueOf4 = Integer.valueOf(i10);
                            hashtable.put(iType4, valueOf4);
                            hashtable2.put(valueOf4, iType4);
                            i10 = i14;
                        }
                    }
                }
            }
            outputStream.write(0);
            outputStream.write(this.computeSubtypes ? (byte) 1 : (byte) 0);
            IJavaProject iJavaProject = this.project;
            if (iJavaProject != null) {
                outputStream.write(iJavaProject.getHandleIdentifier().getBytes());
            }
            outputStream.write(10);
            for (int i15 = 0; i15 < this.missingTypes.size(); i15++) {
                if (i15 != 0) {
                    outputStream.write(44);
                }
                outputStream.write(this.missingTypes.get(i15).getBytes());
            }
            outputStream.write(10);
            for (int i16 = 0; i16 < i10; i16++) {
                IType iType5 = (IType) hashtable2.get(Integer.valueOf(i16));
                outputStream.write(iType5.getHandleIdentifier().getBytes());
                outputStream.write(13);
                outputStream.write(flagsToBytes(this.typeFlags.get(iType5)));
                outputStream.write(13);
                IType iType6 = this.focusType;
                byte b10 = (iType6 == null || !iType6.equals(iType5)) ? (byte) 0 : (byte) 2;
                if (this.interfaces.contains(iType5)) {
                    b10 = (byte) (b10 | 1);
                }
                if (this.rootClasses.contains(iType5)) {
                    b10 = (byte) (b10 | 4);
                }
                outputStream.write(b10);
            }
            outputStream.write(10);
            for (Object obj3 : this.classToSuperclass.entrySet().toArray()) {
                Map.Entry entry3 = (Map.Entry) obj3;
                IJavaElement iJavaElement = (IJavaElement) entry3.getKey();
                IJavaElement iJavaElement2 = (IJavaElement) entry3.getValue();
                outputStream.write(((Integer) hashtable.get(iJavaElement)).toString().getBytes());
                outputStream.write(62);
                outputStream.write(((Integer) hashtable.get(iJavaElement2)).toString().getBytes());
                outputStream.write(10);
            }
            outputStream.write(10);
            for (Object obj4 : this.typeToSuperInterfaces.entrySet().toArray()) {
                Map.Entry entry4 = (Map.Entry) obj4;
                IJavaElement iJavaElement3 = (IJavaElement) entry4.getKey();
                IJavaElement[] iJavaElementArr = (IJavaElement[]) entry4.getValue();
                if (iJavaElementArr.length > 0) {
                    outputStream.write(((Integer) hashtable.get(iJavaElement3)).toString().getBytes());
                    outputStream.write(62);
                    for (int i17 = 0; i17 < iJavaElementArr.length; i17++) {
                        IJavaElement iJavaElement4 = iJavaElementArr[i17];
                        if (i17 != 0) {
                            outputStream.write(44);
                        }
                        outputStream.write(((Integer) hashtable.get(iJavaElement4)).toString().getBytes());
                    }
                    outputStream.write(10);
                }
            }
            outputStream.write(10);
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    public boolean subtypesIncludeSupertypeOf(IType iType) {
        try {
            String superclassName = iType.getSuperclassName();
            if (superclassName == null) {
                superclassName = "Object";
            }
            if (hasSubtypeNamed(superclassName)) {
                return true;
            }
            try {
                for (String str : iType.getSuperInterfaceNames()) {
                    if (hasSubtypeNamed(str)) {
                        return true;
                    }
                }
                return false;
            } catch (JavaModelException e10) {
                if (DEBUG) {
                    e10.printStackTrace();
                }
                return false;
            }
        } catch (JavaModelException e11) {
            if (DEBUG) {
                e11.printStackTrace();
            }
            return false;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Focus: ");
        IType iType = this.focusType;
        if (iType == null) {
            stringBuffer.append("<NONE>\n");
        } else {
            toString(stringBuffer, iType, 0);
        }
        if (exists()) {
            if (this.focusType != null) {
                stringBuffer.append("Super types:\n");
                toString(stringBuffer, this.focusType, 0, true);
                stringBuffer.append("Sub types:\n");
                toString(stringBuffer, this.focusType, 0, false);
            } else {
                int i10 = this.rootClasses.size;
                if (i10 > 0) {
                    IJavaElement[] sortCopy = Util.sortCopy(getRootClasses());
                    stringBuffer.append("Super types of root classes:\n");
                    for (IJavaElement iJavaElement : sortCopy) {
                        toString(stringBuffer, iJavaElement, 1);
                        toString(stringBuffer, iJavaElement, 1, true);
                    }
                    stringBuffer.append("Sub types of root classes:\n");
                    for (IJavaElement iJavaElement2 : sortCopy) {
                        toString(stringBuffer, iJavaElement2, 1);
                        toString(stringBuffer, iJavaElement2, 1, false);
                    }
                } else if (i10 == 0) {
                    stringBuffer.append("No root classes");
                }
            }
        } else {
            stringBuffer.append("(Hierarchy became stale)");
        }
        return stringBuffer.toString();
    }

    public void worked(int i10) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.worked(i10);
            checkCanceled();
        }
    }

    public static byte[] readUntil(InputStream inputStream, byte b10, int i10) throws IOException, JavaModelException {
        byte read;
        byte[] bArr = new byte[10];
        int i11 = 0;
        while (true) {
            read = (byte) inputStream.read();
            if (read == b10 || read == -1) {
                break;
            }
            if (bArr.length == i11) {
                byte[] bArr2 = new byte[i11 * 2];
                System.arraycopy(bArr, 0, bArr2, 0, i11);
                bArr = bArr2;
            }
            bArr[i11] = read;
            i11++;
        }
        if (read != -1) {
            byte[] bArr3 = new byte[i11 + i10];
            System.arraycopy(bArr, 0, bArr3, i10, i11);
            return bArr3;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(4));
    }

    public IType[] growAndAddToArray(IType[] iTypeArr, IType iType) {
        if (iTypeArr != null && iTypeArr.length != 0) {
            IType[] iTypeArr2 = new IType[iTypeArr.length + 1];
            System.arraycopy(iTypeArr, 0, iTypeArr2, 0, iTypeArr.length);
            iTypeArr2[iTypeArr.length] = iType;
            return iTypeArr2;
        }
        return new IType[]{iType};
    }

    public TypeHierarchy(IType iType, ICompilationUnit[] iCompilationUnitArr, IJavaProject iJavaProject, boolean z10) {
        this(iType, iCompilationUnitArr, SearchEngine.createJavaSearchScope(new IJavaElement[]{iJavaProject}), z10);
        this.project = iJavaProject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TypeHierarchy(IType iType, ICompilationUnit[] iCompilationUnitArr, IJavaSearchScope iJavaSearchScope, boolean z10) {
        this.rootClasses = new TypeVector();
        this.interfaces = new ArrayList<>(10);
        this.missingTypes = new ArrayList<>(4);
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.changeListeners = null;
        this.files = null;
        this.packageRegion = null;
        this.projectRegion = null;
        this.needsRefresh = true;
        this.focusType = iType != 0 ? (IType) ((JavaElement) iType).unresolved() : null;
        this.workingCopies = iCompilationUnitArr;
        this.computeSubtypes = z10;
        this.scope = iJavaSearchScope;
    }

    private void toString(StringBuffer stringBuffer, IJavaElement iJavaElement, int i10, boolean z10) {
        IType iType = (IType) iJavaElement;
        IJavaElement[] sortCopy = Util.sortCopy(z10 ? getSupertypes(iType) : getSubtypes(iType));
        for (int i11 = 0; i11 < sortCopy.length; i11++) {
            int i12 = i10 + 1;
            toString(stringBuffer, sortCopy[i11], i12);
            toString(stringBuffer, sortCopy[i11], i12, z10);
        }
    }

    private void toString(StringBuffer stringBuffer, IJavaElement iJavaElement, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append(GlideException.a.f59088e);
        }
        stringBuffer.append(((JavaElement) iJavaElement).toStringWithAncestors(false));
        stringBuffer.append('\n');
    }
}
