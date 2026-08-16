package org.eclipse.jdt.internal.core.builder;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaModelManager;

public class State {
    static final byte BINARY_FOLDER = 2;
    static final byte EXTERNAL_JAR = 3;
    static final byte INTERNAL_JAR = 4;
    public static int MaxStructurallyChangedTypes = 100;
    static final byte SOURCE_FOLDER = 1;
    public static final byte VERSION = 34;
    ClasspathLocation[] binaryLocations;
    int buildNumber;
    String javaProjectName;
    private String[] knownPackageNames;
    long lastStructuralBuildTime;
    private long previousStructuralBuildTime;
    SimpleLookupTable references;
    public ClasspathMultiDirectory[] sourceLocations;
    SimpleLookupTable structuralBuildTimes;
    private StringSet structurallyChangedTypes;
    ClasspathLocation[] testBinaryLocations;
    public ClasspathMultiDirectory[] testSourceLocations;
    public SimpleLookupTable typeLocators;

    public State() {
    }

    public static String lambda$0(Consumer consumer) {
        return CharOperation.charToString(((IUpdatableModule.AddExports) consumer).getName());
    }

    public void lambda$1(DataOutputStream dataOutputStream, Map.Entry entry) {
        try {
            writeName(((String) entry.getKey()).toCharArray(), dataOutputStream);
            writeNames((char[][]) ((List) entry.getValue()).stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    char[][] lambda$2;
                    lambda$2 = State.lambda$2((Consumer) obj);
                    return lambda$2;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$3;
                    lambda$3 = State.lambda$3((char[][]) obj);
                    return lambda$3;
                }
            }).reduce(new BinaryOperator() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    char[][] arrayConcat;
                    arrayConcat = CharOperation.arrayConcat((char[][]) obj, (char[][]) obj2);
                    return arrayConcat;
                }
            }).orElse(null), dataOutputStream);
        } catch (IOException unused) {
        }
    }

    public static char[][] lambda$2(Consumer consumer) {
        return ((IUpdatableModule.AddExports) consumer).getTargetModules();
    }

    public static boolean lambda$3(char[][] cArr) {
        return cArr != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v90 */
    /* JADX WARN: Type inference failed for: r5v15, types: [java.util.List] */
    public static State read(IProject iProject, DataInputStream dataInputStream) throws IOException, CoreException {
        ReferenceCollection referenceCollection;
        AdditionalTypeCollection additionalTypeCollection;
        ?? r10;
        AdditionalTypeCollection additionalTypeCollection2;
        if (JavaBuilder.DEBUG) {
            System.out.println("About to read state " + iProject.getName());
        }
        AdditionalTypeCollection additionalTypeCollection3 = null;
        if (34 != dataInputStream.readByte()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Found non-compatible state version... answered null for " + iProject.getName());
            }
            return null;
        }
        State state = new State();
        state.javaProjectName = dataInputStream.readUTF();
        if (!iProject.getName().equals(state.javaProjectName)) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Project's name does not match... answered null");
            }
            return null;
        }
        state.buildNumber = dataInputStream.readInt();
        state.lastStructuralBuildTime = dataInputStream.readLong();
        int readInt = dataInputStream.readInt();
        state.sourceLocations = new ClasspathMultiDirectory[readInt];
        boolean z10 = false;
        int i10 = 0;
        while (i10 < readInt) {
            AdditionalTypeCollection additionalTypeCollection4 = additionalTypeCollection3;
            String readUTF = dataInputStream.readUTF();
            IProject folder = readUTF.length() > 0 ? iProject.getFolder(readUTF) : iProject;
            String readUTF2 = dataInputStream.readUTF();
            ClasspathMultiDirectory classpathMultiDirectory = (ClasspathMultiDirectory) ClasspathLocation.forSourceFolder(folder, readUTF2.length() > 0 ? iProject.getFolder(readUTF2) : iProject, readNames(dataInputStream), readNames(dataInputStream), dataInputStream.readBoolean());
            if (dataInputStream.readBoolean()) {
                classpathMultiDirectory.hasIndependentOutputFolder = true;
            }
            state.sourceLocations[i10] = classpathMultiDirectory;
            i10++;
            additionalTypeCollection3 = additionalTypeCollection4;
            z10 = false;
        }
        int readInt2 = dataInputStream.readInt();
        state.binaryLocations = new ClasspathLocation[readInt2];
        IWorkspaceRoot root = iProject.getWorkspace().getRoot();
        int i11 = z10 ? 1 : 0;
        boolean z11 = z10;
        while (i11 < readInt2) {
            byte readByte = dataInputStream.readByte();
            if (readByte == 1) {
                state.binaryLocations[i11] = state.sourceLocations[dataInputStream.readInt()];
            } else if (readByte == 2) {
                Path path = new Path(dataInputStream.readUTF());
                state.binaryLocations[i11] = ClasspathLocation.forBinaryFolder(path.segmentCount() == 1 ? root.getProject(path.toString()) : root.getFolder(path), dataInputStream.readBoolean(), readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readBoolean());
            } else if (readByte == 3) {
                String readUTF3 = dataInputStream.readUTF();
                if (Util.isJrt(readUTF3)) {
                    state.binaryLocations[i11] = ClasspathLocation.forJrtSystem(readUTF3, readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readUTF());
                } else {
                    state.binaryLocations[i11] = ClasspathLocation.forLibrary(readUTF3, dataInputStream.readLong(), readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readBoolean(), dataInputStream.readUTF());
                }
            } else if (readByte == 4) {
                state.binaryLocations[i11] = ClasspathLocation.forLibrary(root.getFile(new Path(dataInputStream.readUTF())), readRestriction(dataInputStream), (IPath) new Path(dataInputStream.readUTF()), dataInputStream.readBoolean(), dataInputStream.readUTF());
            }
            ClasspathLocation classpathLocation = state.binaryLocations[i11];
            char[] readName = readName(dataInputStream);
            classpathLocation.patchModuleName = readName.length > 0 ? new String(readName) : null;
            int readInt3 = dataInputStream.readInt();
            if (readInt3 != 0) {
                classpathLocation.limitModuleNames = new LinkedHashSet(readInt3);
                for (int i12 = 0; i12 < readInt3; i12++) {
                    classpathLocation.limitModuleNames.add(dataInputStream.readUTF());
                }
                additionalTypeCollection = null;
            } else {
                additionalTypeCollection = null;
                classpathLocation.limitModuleNames = null;
            }
            IUpdatableModule.UpdatesByKind updatesByKind = new IUpdatableModule.UpdatesByKind();
            int readInt4 = dataInputStream.readInt();
            if (readInt4 != 0) {
                r10 = updatesByKind.getList(IUpdatableModule.UpdateKind.PACKAGE, true);
                for (int i13 = 0; i13 < readInt4; i13++) {
                    r10.add(new IUpdatableModule.AddExports(readName(dataInputStream), readNames(dataInputStream)));
                }
            } else {
                r10 = additionalTypeCollection;
            }
            if (dataInputStream.readInt() != 0) {
                ?? list = updatesByKind.getList(IUpdatableModule.UpdateKind.MODULE, true);
                list.add(new IUpdatableModule.AddReads(readName(dataInputStream)));
                additionalTypeCollection2 = list;
            } else {
                additionalTypeCollection2 = additionalTypeCollection;
            }
            if (r10 != 0 || additionalTypeCollection2 != null) {
                classpathLocation.updates = updatesByKind;
            }
            i11++;
            additionalTypeCollection3 = additionalTypeCollection;
            z11 = false;
        }
        int readInt5 = dataInputStream.readInt();
        state.testSourceLocations = new ClasspathMultiDirectory[readInt5];
        int i14 = z11 ? 1 : 0;
        boolean z12 = z11;
        while (i14 < readInt5) {
            String readUTF4 = dataInputStream.readUTF();
            IProject folder2 = readUTF4.length() > 0 ? iProject.getFolder(readUTF4) : iProject;
            String readUTF5 = dataInputStream.readUTF();
            ClasspathMultiDirectory classpathMultiDirectory2 = (ClasspathMultiDirectory) ClasspathLocation.forSourceFolder(folder2, readUTF5.length() > 0 ? iProject.getFolder(readUTF5) : iProject, readNames(dataInputStream), readNames(dataInputStream), dataInputStream.readBoolean());
            if (dataInputStream.readBoolean()) {
                classpathMultiDirectory2.hasIndependentOutputFolder = true;
            }
            state.testSourceLocations[i14] = classpathMultiDirectory2;
            i14++;
            additionalTypeCollection3 = null;
            z12 = false;
        }
        int readInt6 = dataInputStream.readInt();
        state.testBinaryLocations = new ClasspathLocation[readInt6];
        int i15 = z12 ? 1 : 0;
        boolean z13 = z12;
        while (i15 < readInt6) {
            byte readByte2 = dataInputStream.readByte();
            if (readByte2 == 1) {
                state.testBinaryLocations[i15] = state.testSourceLocations[dataInputStream.readInt()];
            } else if (readByte2 == 2) {
                Path path2 = new Path(dataInputStream.readUTF());
                state.testBinaryLocations[i15] = ClasspathLocation.forBinaryFolder(path2.segmentCount() == 1 ? root.getProject(path2.toString()) : root.getFolder(path2), dataInputStream.readBoolean(), readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readBoolean());
            } else if (readByte2 == 3) {
                String readUTF6 = dataInputStream.readUTF();
                if (Util.isJrt(readUTF6)) {
                    state.testBinaryLocations[i15] = ClasspathLocation.forJrtSystem(readUTF6, readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readUTF());
                } else {
                    state.testBinaryLocations[i15] = ClasspathLocation.forLibrary(readUTF6, dataInputStream.readLong(), readRestriction(dataInputStream), new Path(dataInputStream.readUTF()), dataInputStream.readBoolean(), dataInputStream.readUTF());
                }
            } else if (readByte2 == 4) {
                state.testBinaryLocations[i15] = ClasspathLocation.forLibrary(root.getFile(new Path(dataInputStream.readUTF())), readRestriction(dataInputStream), (IPath) new Path(dataInputStream.readUTF()), dataInputStream.readBoolean(), dataInputStream.readUTF());
            }
            i15++;
            additionalTypeCollection3 = null;
            z13 = false;
        }
        int readInt7 = dataInputStream.readInt();
        state.structuralBuildTimes = new SimpleLookupTable(readInt7);
        int i16 = z13 ? 1 : 0;
        boolean z14 = z13;
        while (i16 < readInt7) {
            state.structuralBuildTimes.put(dataInputStream.readUTF(), Long.valueOf(dataInputStream.readLong()));
            i16++;
            additionalTypeCollection3 = null;
            z14 = false;
        }
        int readInt8 = dataInputStream.readInt();
        String[] strArr = new String[readInt8];
        int i17 = z14 ? 1 : 0;
        boolean z15 = z14;
        while (i17 < readInt8) {
            strArr[i17] = dataInputStream.readUTF();
            i17++;
            additionalTypeCollection3 = null;
            z15 = false;
        }
        int readInt9 = dataInputStream.readInt();
        state.typeLocators = new SimpleLookupTable(readInt9);
        int i18 = z15 ? 1 : 0;
        boolean z16 = z15;
        while (i18 < readInt9) {
            state.recordLocatorForType(dataInputStream.readUTF(), strArr[dataInputStream.readInt()]);
            i18++;
            additionalTypeCollection3 = null;
            z16 = false;
        }
        char[][] internSimpleNames = ReferenceCollection.internSimpleNames(readNames(dataInputStream), z16, z16);
        char[][] internSimpleNames2 = ReferenceCollection.internSimpleNames(readNames(dataInputStream), z16, z16);
        int readInt10 = dataInputStream.readInt();
        char[][][] cArr = new char[readInt10][];
        int i19 = z16 ? 1 : 0;
        ?? r42 = z16;
        while (i19 < readInt10) {
            int readInt11 = dataInputStream.readInt();
            char[][] cArr2 = new char[readInt11];
            for (int i20 = 0; i20 < readInt11; i20++) {
                cArr2[i20] = internSimpleNames2[dataInputStream.readInt()];
            }
            cArr[i19] = cArr2;
            i19++;
            additionalTypeCollection3 = null;
            r42 = 0;
        }
        char[][][] internQualifiedNames = ReferenceCollection.internQualifiedNames(cArr, r42, r42);
        int readInt12 = dataInputStream.readInt();
        state.references = new SimpleLookupTable(readInt12);
        int i21 = r42 == true ? 1 : 0;
        int i22 = r42;
        while (i21 < readInt12) {
            String str = strArr[dataInputStream.readInt()];
            byte readByte3 = dataInputStream.readByte();
            if (readByte3 == 1) {
                char[][] readNames = readNames(dataInputStream);
                int readInt13 = dataInputStream.readInt();
                char[][][] cArr3 = new char[readInt13][];
                for (int i23 = 0; i23 < readInt13; i23++) {
                    cArr3[i23] = internQualifiedNames[dataInputStream.readInt()];
                }
                int readInt14 = dataInputStream.readInt();
                char[][] cArr4 = new char[readInt14];
                for (int i24 = 0; i24 < readInt14; i24++) {
                    cArr4[i24] = internSimpleNames2[dataInputStream.readInt()];
                }
                int readInt15 = dataInputStream.readInt();
                char[][] cArr5 = new char[readInt15];
                for (int i25 = 0; i25 < readInt15; i25++) {
                    cArr5[i25] = internSimpleNames[dataInputStream.readInt()];
                }
                additionalTypeCollection3 = new AdditionalTypeCollection(readNames, cArr3, cArr4, cArr5);
            } else if (readByte3 == 2) {
                int readInt16 = dataInputStream.readInt();
                char[][][] cArr6 = new char[readInt16][];
                int i26 = i22 == true ? 1 : 0;
                int i27 = i22;
                while (i26 < readInt16) {
                    cArr6[i26] = internQualifiedNames[dataInputStream.readInt()];
                    i26++;
                    i27 = 0;
                }
                int readInt17 = dataInputStream.readInt();
                char[][] cArr7 = new char[readInt17];
                int i28 = i27 == true ? 1 : 0;
                int i29 = i27;
                while (i28 < readInt17) {
                    cArr7[i28] = internSimpleNames2[dataInputStream.readInt()];
                    i28++;
                    i29 = 0;
                }
                int readInt18 = dataInputStream.readInt();
                char[][] cArr8 = new char[readInt18];
                for (int i30 = i29; i30 < readInt18; i30++) {
                    cArr8[i30] = internSimpleNames[dataInputStream.readInt()];
                }
                referenceCollection = new ReferenceCollection(cArr6, cArr7, cArr8);
                state.references.put(str, referenceCollection);
                i21++;
                additionalTypeCollection3 = null;
                i22 = 0;
            }
            referenceCollection = additionalTypeCollection3;
            state.references.put(str, referenceCollection);
            i21++;
            additionalTypeCollection3 = null;
            i22 = 0;
        }
        if (JavaBuilder.DEBUG) {
            System.out.println("Successfully read state for " + state.javaProjectName);
        }
        return state;
    }

    private static char[] readName(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        char[] cArr = new char[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            cArr[i10] = dataInputStream.readChar();
        }
        return cArr;
    }

    private static char[][] readNames(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        char[][] cArr = new char[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            cArr[i10] = readName(dataInputStream);
        }
        return cArr;
    }

    private static AccessRuleSet readRestriction(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        if (readInt == 0) {
            return null;
        }
        AccessRule[] accessRuleArr = new AccessRule[readInt];
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        for (int i10 = 0; i10 < readInt; i10++) {
            accessRuleArr[i10] = javaModelManager.getAccessRuleForProblemId(readName(dataInputStream), dataInputStream.readInt());
        }
        return new AccessRuleSet(accessRuleArr, dataInputStream.readByte(), javaModelManager.intern(dataInputStream.readUTF()));
    }

    private void writeName(char[] cArr, DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(cArr.length);
        for (char c10 : cArr) {
            dataOutputStream.writeChar(c10);
        }
    }

    private void writeNames(char[][] cArr, DataOutputStream dataOutputStream) throws IOException {
        int length = cArr == null ? 0 : cArr.length;
        dataOutputStream.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            writeName(cArr[i10], dataOutputStream);
        }
    }

    private void writeRestriction(AccessRuleSet accessRuleSet, DataOutputStream dataOutputStream) throws IOException {
        if (accessRuleSet == null) {
            dataOutputStream.writeInt(0);
            return;
        }
        AccessRule[] accessRules = accessRuleSet.getAccessRules();
        int length = accessRules.length;
        dataOutputStream.writeInt(length);
        if (length != 0) {
            for (AccessRule accessRule : accessRules) {
                writeName(accessRule.pattern, dataOutputStream);
                dataOutputStream.writeInt(accessRule.problemId);
            }
            dataOutputStream.writeByte(accessRuleSet.classpathEntryType);
            dataOutputStream.writeUTF(accessRuleSet.classpathEntryName);
        }
    }

    public long computeStructuralBuildTime(long j10) {
        long currentTimeMillis = System.currentTimeMillis();
        return currentTimeMillis <= j10 ? 1 + j10 : currentTimeMillis;
    }

    public void copyFrom(State state) {
        this.knownPackageNames = null;
        this.previousStructuralBuildTime = state.previousStructuralBuildTime;
        this.structurallyChangedTypes = state.structurallyChangedTypes;
        this.buildNumber = state.buildNumber + 1;
        this.lastStructuralBuildTime = state.lastStructuralBuildTime;
        this.structuralBuildTimes = state.structuralBuildTimes;
        try {
            this.references = (SimpleLookupTable) state.references.clone();
            this.typeLocators = (SimpleLookupTable) state.typeLocators.clone();
        } catch (CloneNotSupportedException unused) {
            this.references = new SimpleLookupTable(state.references.elementSize);
            SimpleLookupTable simpleLookupTable = state.references;
            Object[] objArr = simpleLookupTable.keyTable;
            Object[] objArr2 = simpleLookupTable.valueTable;
            int length = objArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Object obj = objArr[i10];
                if (obj != null) {
                    this.references.put(obj, objArr2[i10]);
                }
            }
            this.typeLocators = new SimpleLookupTable(state.typeLocators.elementSize);
            SimpleLookupTable simpleLookupTable2 = state.typeLocators;
            Object[] objArr3 = simpleLookupTable2.keyTable;
            Object[] objArr4 = simpleLookupTable2.valueTable;
            int length2 = objArr3.length;
            for (int i11 = 0; i11 < length2; i11++) {
                Object obj2 = objArr3[i11];
                if (obj2 != null) {
                    this.typeLocators.put(obj2, objArr4[i11]);
                }
            }
        }
    }

    public char[][] getDefinedTypeNamesFor(String str) {
        Object obj = this.references.get(str);
        if (obj instanceof AdditionalTypeCollection) {
            return ((AdditionalTypeCollection) obj).definedTypeNames;
        }
        return null;
    }

    public SimpleLookupTable getReferences() {
        return this.references;
    }

    public StringSet getStructurallyChangedTypes(State state) {
        if (state == null) {
            return null;
        }
        if (state.previousStructuralBuildTime <= 0) {
            return null;
        }
        Object obj = this.structuralBuildTimes.get(state.javaProjectName);
        if ((obj != null ? ((Long) obj).longValue() : 0L) == state.previousStructuralBuildTime) {
            return state.structurallyChangedTypes;
        }
        return null;
    }

    public boolean isDuplicateLocator(String str, String str2) {
        String str3 = (String) this.typeLocators.get(str);
        return (str3 == null || str3.equals(str2)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b A[LOOP:1: B:11:0x0038->B:16:0x004b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0048 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isKnownPackage(String str) {
        String substring;
        int lastIndexOf;
        if (this.knownPackageNames == null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.typeLocators.elementSize);
            for (Object obj : this.typeLocators.keyTable) {
                if (obj != null) {
                    String str2 = (String) obj;
                    int lastIndexOf2 = str2.lastIndexOf(47);
                    if (lastIndexOf2 != -1) {
                        substring = str2.substring(0, lastIndexOf2);
                        while (substring != null && !linkedHashSet.contains(substring)) {
                            linkedHashSet.add(substring);
                            lastIndexOf = substring.lastIndexOf(47);
                            if (lastIndexOf == -1) {
                                substring = substring.substring(0, lastIndexOf);
                            }
                        }
                    }
                    substring = null;
                    while (substring != null) {
                        linkedHashSet.add(substring);
                        lastIndexOf = substring.lastIndexOf(47);
                        if (lastIndexOf == -1) {
                        }
                    }
                }
            }
            String[] strArr = new String[linkedHashSet.size()];
            this.knownPackageNames = strArr;
            linkedHashSet.toArray(strArr);
        }
        int length = this.knownPackageNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.knownPackageNames[i10].equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isKnownType(String str) {
        return this.typeLocators.containsKey(str);
    }

    public boolean isSourceFolderEmpty(IContainer iContainer) {
        String obj = iContainer.getProjectRelativePath().addTrailingSeparator().toString();
        for (Object obj2 : this.typeLocators.valueTable) {
            if (obj2 != null && ((String) obj2).startsWith(obj)) {
                return false;
            }
        }
        return true;
    }

    public void record(String str, char[][][] cArr, char[][] cArr2, char[][] cArr3, char[] cArr4, ArrayList arrayList) {
        if (arrayList.size() == 1 && CharOperation.equals(cArr4, (char[]) arrayList.get(0))) {
            this.references.put(str, new ReferenceCollection(cArr, cArr2, cArr3));
            return;
        }
        char[][] cArr5 = new char[arrayList.size()];
        arrayList.toArray(cArr5);
        this.references.put(str, new AdditionalTypeCollection(cArr5, cArr, cArr2, cArr3));
    }

    public void recordLocatorForType(String str, String str2) {
        this.knownPackageNames = null;
        int indexOf = str2.indexOf(str, 0);
        if (indexOf > 0) {
            str = str2.substring(indexOf, str.length() + indexOf);
        }
        this.typeLocators.put(str, str2);
    }

    public void recordStructuralDependency(IProject iProject, State state) {
        if (state == null || state.lastStructuralBuildTime <= 0) {
            return;
        }
        this.structuralBuildTimes.put(iProject.getName(), Long.valueOf(state.lastStructuralBuildTime));
    }

    public void removeLocator(String str) {
        this.knownPackageNames = null;
        this.references.removeKey(str);
        this.typeLocators.removeValue(str);
    }

    public void removePackage(IResourceDelta iResourceDelta) {
        IResource resource = iResourceDelta.getResource();
        int type = resource.getType();
        if (type == 1) {
            IPath projectRelativePath = resource.getProjectRelativePath();
            if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(projectRelativePath.lastSegment())) {
                removeLocator(projectRelativePath.toString());
                return;
            }
            return;
        }
        if (type != 2) {
            return;
        }
        for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
            removePackage(iResourceDelta2);
        }
    }

    public void removeQualifiedTypeName(String str) {
        this.knownPackageNames = null;
        this.typeLocators.removeKey(str);
    }

    public void tagAsNoopBuild() {
        this.buildNumber = -1;
    }

    public void tagAsStructurallyChanged() {
        this.previousStructuralBuildTime = this.lastStructuralBuildTime;
        this.structurallyChangedTypes = new StringSet(7);
        this.lastStructuralBuildTime = computeStructuralBuildTime(this.previousStructuralBuildTime);
    }

    public String toString() {
        return "State for " + this.javaProjectName + " (#" + this.buildNumber + " @ " + ((Object) new Date(this.lastStructuralBuildTime)) + ")";
    }

    public boolean wasNoopBuild() {
        return this.buildNumber == -1;
    }

    public boolean wasStructurallyChanged(IProject iProject, State state) {
        if (state == null) {
            return true;
        }
        Object obj = this.structuralBuildTimes.get(iProject.getName());
        return (obj == null ? 0L : ((Long) obj).longValue()) != state.lastStructuralBuildTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v88 */
    /* JADX WARN: Type inference failed for: r6v89, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v98 */
    public void write(final DataOutputStream dataOutputStream) throws IOException {
        int i10;
        int i11;
        int i12;
        char[][] cArr;
        ?? r62;
        boolean z10;
        dataOutputStream.writeByte(34);
        dataOutputStream.writeUTF(this.javaProjectName);
        dataOutputStream.writeInt(this.buildNumber);
        dataOutputStream.writeLong(this.lastStructuralBuildTime);
        int length = this.sourceLocations.length;
        dataOutputStream.writeInt(length);
        for (int i13 = 0; i13 < length; i13++) {
            ClasspathMultiDirectory classpathMultiDirectory = this.sourceLocations[i13];
            dataOutputStream.writeUTF(classpathMultiDirectory.sourceFolder.getProjectRelativePath().toString());
            dataOutputStream.writeUTF(classpathMultiDirectory.binaryFolder.getProjectRelativePath().toString());
            writeNames(classpathMultiDirectory.inclusionPatterns, dataOutputStream);
            writeNames(classpathMultiDirectory.exclusionPatterns, dataOutputStream);
            dataOutputStream.writeBoolean(classpathMultiDirectory.ignoreOptionalProblems);
            dataOutputStream.writeBoolean(classpathMultiDirectory.hasIndependentOutputFolder);
        }
        int length2 = this.binaryLocations.length;
        dataOutputStream.writeInt(length2);
        int i14 = 0;
        while (true) {
            i10 = 2;
            i11 = 1;
            if (i14 >= length2) {
                break;
            }
            ClasspathLocation classpathLocation = this.binaryLocations[i14];
            if (classpathLocation instanceof ClasspathMultiDirectory) {
                dataOutputStream.writeByte(1);
                int length3 = this.sourceLocations.length;
                for (int i15 = 0; i15 < length3; i15++) {
                    if (this.sourceLocations[i15] == classpathLocation) {
                        dataOutputStream.writeInt(i15);
                    }
                }
            } else if (classpathLocation instanceof ClasspathDirectory) {
                dataOutputStream.writeByte(2);
                ClasspathDirectory classpathDirectory = (ClasspathDirectory) classpathLocation;
                dataOutputStream.writeUTF(classpathDirectory.binaryFolder.getFullPath().toString());
                dataOutputStream.writeBoolean(classpathDirectory.isOutputFolder);
                writeRestriction(classpathDirectory.accessRuleSet, dataOutputStream);
                String str = classpathDirectory.externalAnnotationPath;
                dataOutputStream.writeUTF(str != null ? str : "");
                dataOutputStream.writeBoolean(classpathDirectory.isOnModulePath);
            } else if (classpathLocation instanceof ClasspathJar) {
                ClasspathJar classpathJar = (ClasspathJar) classpathLocation;
                if (classpathJar.resource == null) {
                    dataOutputStream.writeByte(3);
                    dataOutputStream.writeUTF(classpathJar.zipFilename);
                    dataOutputStream.writeLong(classpathJar.lastModified());
                } else {
                    dataOutputStream.writeByte(4);
                    dataOutputStream.writeUTF(classpathJar.resource.getFullPath().toString());
                }
                writeRestriction(classpathJar.accessRuleSet, dataOutputStream);
                String str2 = classpathJar.externalAnnotationPath;
                if (str2 == null) {
                    str2 = "";
                }
                dataOutputStream.writeUTF(str2);
                dataOutputStream.writeBoolean(classpathJar.isOnModulePath);
                String str3 = classpathJar.compliance;
                dataOutputStream.writeUTF(str3 != null ? str3 : "");
            } else if (classpathLocation instanceof ClasspathJrt) {
                ClasspathJrt classpathJrt = (ClasspathJrt) classpathLocation;
                dataOutputStream.writeByte(3);
                dataOutputStream.writeUTF(classpathJrt.zipFilename);
                writeRestriction(classpathJrt.accessRuleSet, dataOutputStream);
                String str4 = classpathJrt.externalAnnotationPath;
                if (str4 == null) {
                    str4 = "";
                }
                dataOutputStream.writeUTF(str4);
                dataOutputStream.writeUTF("");
            } else {
                ClasspathJrtWithReleaseOption classpathJrtWithReleaseOption = (ClasspathJrtWithReleaseOption) classpathLocation;
                dataOutputStream.writeByte(3);
                dataOutputStream.writeUTF(classpathJrtWithReleaseOption.zipFilename);
                writeRestriction(classpathJrtWithReleaseOption.accessRuleSet, dataOutputStream);
                String str5 = classpathJrtWithReleaseOption.externalAnnotationPath;
                dataOutputStream.writeUTF(str5 != null ? str5 : "");
                dataOutputStream.writeUTF(classpathJrtWithReleaseOption.release);
            }
            String str6 = classpathLocation.patchModuleName;
            writeName(str6 == null ? CharOperation.NO_CHAR : str6.toCharArray(), dataOutputStream);
            Set<String> set = classpathLocation.limitModuleNames;
            if (set != null) {
                dataOutputStream.writeInt(set.size());
                Iterator<String> it = classpathLocation.limitModuleNames.iterator();
                while (it.hasNext()) {
                    dataOutputStream.writeUTF(it.next());
                }
                r62 = 0;
            } else {
                r62 = 0;
                dataOutputStream.writeInt(0);
            }
            IUpdatableModule.UpdatesByKind updatesByKind = classpathLocation.updates;
            if (updatesByKind != 0) {
                List<Consumer<IUpdatableModule>> list = updatesByKind.getList(IUpdatableModule.UpdateKind.PACKAGE, r62);
                if (list != null) {
                    Map map = (Map) list.stream().collect(Collectors.groupingBy(new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            String lambda$0;
                            lambda$0 = State.lambda$0((Consumer) obj);
                            return lambda$0;
                        }
                    }));
                    dataOutputStream.writeInt(map.size());
                    map.entrySet().stream().forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            State.this.lambda$1(dataOutputStream, (Map.Entry) obj);
                        }
                    });
                    z10 = false;
                } else {
                    z10 = false;
                    dataOutputStream.writeInt(0);
                }
                List<Consumer<IUpdatableModule>> list2 = classpathLocation.updates.getList(IUpdatableModule.UpdateKind.MODULE, z10);
                if (list2 != null) {
                    dataOutputStream.writeInt(list2.size());
                    Iterator<Consumer<IUpdatableModule>> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        writeName(((IUpdatableModule.AddReads) it2.next()).getTarget(), dataOutputStream);
                    }
                } else {
                    dataOutputStream.writeInt(0);
                }
            } else {
                dataOutputStream.writeInt(r62);
                dataOutputStream.writeInt(r62);
            }
            i14++;
        }
        int length4 = this.testSourceLocations.length;
        dataOutputStream.writeInt(length4);
        int i16 = 0;
        while (i16 < length4) {
            ClasspathMultiDirectory classpathMultiDirectory2 = this.testSourceLocations[i16];
            dataOutputStream.writeUTF(classpathMultiDirectory2.sourceFolder.getProjectRelativePath().toString());
            dataOutputStream.writeUTF(classpathMultiDirectory2.binaryFolder.getProjectRelativePath().toString());
            writeNames(classpathMultiDirectory2.inclusionPatterns, dataOutputStream);
            writeNames(classpathMultiDirectory2.exclusionPatterns, dataOutputStream);
            dataOutputStream.writeBoolean(classpathMultiDirectory2.ignoreOptionalProblems);
            dataOutputStream.writeBoolean(classpathMultiDirectory2.hasIndependentOutputFolder);
            i16++;
            i10 = 2;
            i11 = 1;
        }
        int length5 = this.testBinaryLocations.length;
        dataOutputStream.writeInt(length5);
        int i17 = 0;
        while (i17 < length5) {
            ClasspathLocation classpathLocation2 = this.testBinaryLocations[i17];
            if (classpathLocation2 instanceof ClasspathMultiDirectory) {
                dataOutputStream.writeByte(1);
                int length6 = this.testSourceLocations.length;
                int i18 = 0;
                while (true) {
                    if (i18 < length6) {
                        if (this.testSourceLocations[i18] == classpathLocation2) {
                            dataOutputStream.writeInt(i18);
                            break;
                        }
                        i18++;
                    }
                }
            } else if (classpathLocation2 instanceof ClasspathDirectory) {
                dataOutputStream.writeByte(2);
                ClasspathDirectory classpathDirectory2 = (ClasspathDirectory) classpathLocation2;
                dataOutputStream.writeUTF(classpathDirectory2.binaryFolder.getFullPath().toString());
                dataOutputStream.writeBoolean(classpathDirectory2.isOutputFolder);
                writeRestriction(classpathDirectory2.accessRuleSet, dataOutputStream);
                String str7 = classpathDirectory2.externalAnnotationPath;
                if (str7 == null) {
                    str7 = "";
                }
                dataOutputStream.writeUTF(str7);
                dataOutputStream.writeBoolean(classpathDirectory2.isOnModulePath);
            } else if (classpathLocation2 instanceof ClasspathJar) {
                ClasspathJar classpathJar2 = (ClasspathJar) classpathLocation2;
                if (classpathJar2.resource == null) {
                    dataOutputStream.writeByte(3);
                    dataOutputStream.writeUTF(classpathJar2.zipFilename);
                    dataOutputStream.writeLong(classpathJar2.lastModified());
                } else {
                    dataOutputStream.writeByte(4);
                    dataOutputStream.writeUTF(classpathJar2.resource.getFullPath().toString());
                }
                writeRestriction(classpathJar2.accessRuleSet, dataOutputStream);
                String str8 = classpathJar2.externalAnnotationPath;
                if (str8 == null) {
                    str8 = "";
                }
                dataOutputStream.writeUTF(str8);
                dataOutputStream.writeBoolean(classpathJar2.isOnModulePath);
                String str9 = classpathJar2.compliance;
                if (str9 == null) {
                    str9 = "";
                }
                dataOutputStream.writeUTF(str9);
            } else if (classpathLocation2 instanceof ClasspathJrt) {
                ClasspathJrt classpathJrt2 = (ClasspathJrt) classpathLocation2;
                dataOutputStream.writeByte(3);
                dataOutputStream.writeUTF(classpathJrt2.zipFilename);
                writeRestriction(classpathJrt2.accessRuleSet, dataOutputStream);
                String str10 = classpathJrt2.externalAnnotationPath;
                if (str10 == null) {
                    str10 = "";
                }
                dataOutputStream.writeUTF(str10);
                dataOutputStream.writeUTF("");
            } else {
                ClasspathJrtWithReleaseOption classpathJrtWithReleaseOption2 = (ClasspathJrtWithReleaseOption) classpathLocation2;
                dataOutputStream.writeByte(3);
                dataOutputStream.writeUTF(classpathJrtWithReleaseOption2.zipFilename);
                writeRestriction(classpathJrtWithReleaseOption2.accessRuleSet, dataOutputStream);
                String str11 = classpathJrtWithReleaseOption2.externalAnnotationPath;
                if (str11 == null) {
                    str11 = "";
                }
                dataOutputStream.writeUTF(str11);
                dataOutputStream.writeUTF(classpathJrtWithReleaseOption2.release);
            }
            i17++;
            i10 = 2;
            i11 = 1;
        }
        int i19 = this.structuralBuildTimes.elementSize;
        dataOutputStream.writeInt(i19);
        if (i19 > 0) {
            SimpleLookupTable simpleLookupTable = this.structuralBuildTimes;
            Object[] objArr = simpleLookupTable.keyTable;
            Object[] objArr2 = simpleLookupTable.valueTable;
            int length7 = objArr.length;
            for (int i20 = 0; i20 < length7; i20++) {
                Object obj = objArr[i20];
                if (obj != null) {
                    i19--;
                    dataOutputStream.writeUTF((String) obj);
                    dataOutputStream.writeLong(((Long) objArr2[i20]).longValue());
                }
            }
            if (JavaBuilder.DEBUG && i19 != 0) {
                System.out.println("structuralBuildNumbers table is inconsistent");
            }
        }
        int i21 = this.references.elementSize;
        dataOutputStream.writeInt(i21);
        SimpleLookupTable simpleLookupTable2 = new SimpleLookupTable(i21);
        if (i21 > 0) {
            for (Object obj2 : this.references.keyTable) {
                if (obj2 != null) {
                    i21--;
                    String str12 = (String) obj2;
                    dataOutputStream.writeUTF(str12);
                    simpleLookupTable2.put(str12, Integer.valueOf(simpleLookupTable2.elementSize));
                }
            }
            if (JavaBuilder.DEBUG && i21 != 0) {
                System.out.println("references table is inconsistent");
            }
        }
        int i22 = this.typeLocators.elementSize;
        dataOutputStream.writeInt(i22);
        if (i22 > 0) {
            SimpleLookupTable simpleLookupTable3 = this.typeLocators;
            Object[] objArr3 = simpleLookupTable3.keyTable;
            Object[] objArr4 = simpleLookupTable3.valueTable;
            int length8 = objArr3.length;
            for (int i23 = 0; i23 < length8; i23++) {
                Object obj3 = objArr3[i23];
                if (obj3 != null) {
                    i22--;
                    dataOutputStream.writeUTF((String) obj3);
                    dataOutputStream.writeInt(((Integer) simpleLookupTable2.get(objArr4[i23])).intValue());
                }
            }
            if (JavaBuilder.DEBUG && i22 != 0) {
                System.out.println("typeLocators table is inconsistent");
            }
        }
        SimpleLookupTable simpleLookupTable4 = new SimpleLookupTable(3);
        SimpleLookupTable simpleLookupTable5 = new SimpleLookupTable(31);
        SimpleLookupTable simpleLookupTable6 = new SimpleLookupTable(31);
        Object[] objArr5 = this.references.valueTable;
        int length9 = objArr5.length;
        int i24 = 0;
        while (i24 < length9) {
            Object obj4 = objArr5[i24];
            if (obj4 != null) {
                ReferenceCollection referenceCollection = (ReferenceCollection) obj4;
                char[][] cArr2 = referenceCollection.rootReferences;
                int length10 = cArr2.length;
                int i25 = 0;
                while (i25 < length10) {
                    int i26 = length9;
                    ReferenceCollection referenceCollection2 = referenceCollection;
                    char[] cArr3 = cArr2[i25];
                    if (!simpleLookupTable4.containsKey(cArr3)) {
                        simpleLookupTable4.put(cArr3, Integer.valueOf(simpleLookupTable4.elementSize));
                    }
                    i25++;
                    length9 = i26;
                    referenceCollection = referenceCollection2;
                }
                char[][][] cArr4 = referenceCollection.qualifiedNameReferences;
                int length11 = cArr4.length;
                int i27 = 0;
                while (i27 < length11) {
                    char[][] cArr5 = cArr4[i27];
                    if (simpleLookupTable5.containsKey(cArr5)) {
                        i12 = length9;
                    } else {
                        simpleLookupTable5.put(cArr5, Integer.valueOf(simpleLookupTable5.elementSize));
                        int length12 = cArr5.length;
                        i12 = length9;
                        int i28 = 0;
                        while (i28 < length12) {
                            ReferenceCollection referenceCollection3 = referenceCollection;
                            char[] cArr6 = cArr5[i28];
                            if (simpleLookupTable6.containsKey(cArr6)) {
                                cArr = cArr5;
                            } else {
                                cArr = cArr5;
                                simpleLookupTable6.put(cArr6, Integer.valueOf(simpleLookupTable6.elementSize));
                            }
                            i28++;
                            referenceCollection = referenceCollection3;
                            cArr5 = cArr;
                        }
                    }
                    i27++;
                    length9 = i12;
                    referenceCollection = referenceCollection;
                }
                char[][] cArr7 = referenceCollection.simpleNameReferences;
                for (char[] cArr8 : cArr7) {
                    if (!simpleLookupTable6.containsKey(cArr8)) {
                        simpleLookupTable6.put(cArr8, Integer.valueOf(simpleLookupTable6.elementSize));
                    }
                }
            }
            i24++;
            length9 = length9;
            i10 = 2;
            i11 = 1;
        }
        char[][] cArr9 = new char[simpleLookupTable4.elementSize];
        Object[] objArr6 = simpleLookupTable4.keyTable;
        Object[] objArr7 = simpleLookupTable4.valueTable;
        int length13 = objArr7.length;
        while (true) {
            length13--;
            if (length13 < 0) {
                break;
            }
            Object obj5 = objArr7[length13];
            if (obj5 != null) {
                cArr9[((Integer) obj5).intValue()] = (char[]) objArr6[length13];
            }
            i10 = 2;
            i11 = 1;
        }
        writeNames(cArr9, dataOutputStream);
        char[][] cArr10 = new char[simpleLookupTable6.elementSize];
        Object[] objArr8 = simpleLookupTable6.keyTable;
        Object[] objArr9 = simpleLookupTable6.valueTable;
        int length14 = objArr9.length;
        while (true) {
            length14--;
            if (length14 < 0) {
                break;
            }
            Object obj6 = objArr9[length14];
            if (obj6 != null) {
                cArr10[((Integer) obj6).intValue()] = (char[]) objArr8[length14];
            }
            i10 = 2;
            i11 = 1;
        }
        writeNames(cArr10, dataOutputStream);
        int i29 = simpleLookupTable5.elementSize;
        char[][][] cArr11 = new char[i29][];
        Object[] objArr10 = simpleLookupTable5.keyTable;
        Object[] objArr11 = simpleLookupTable5.valueTable;
        int length15 = objArr11.length;
        while (true) {
            length15--;
            if (length15 < 0) {
                break;
            }
            Object obj7 = objArr11[length15];
            if (obj7 != null) {
                cArr11[((Integer) obj7).intValue()] = (char[][]) objArr10[length15];
            }
            i10 = 2;
            i11 = 1;
        }
        dataOutputStream.writeInt(i29);
        int i30 = 0;
        while (i30 < i29) {
            char[][] cArr12 = cArr11[i30];
            dataOutputStream.writeInt(cArr12.length);
            for (char[] cArr13 : cArr12) {
                dataOutputStream.writeInt(((Integer) simpleLookupTable6.get(cArr13)).intValue());
            }
            i30++;
            i10 = 2;
            i11 = 1;
        }
        int i31 = this.references.elementSize;
        dataOutputStream.writeInt(i31);
        if (i31 > 0) {
            Object[] objArr12 = this.references.keyTable;
            int length16 = objArr12.length;
            int i32 = 0;
            while (i32 < length16) {
                Object obj8 = objArr12[i32];
                if (obj8 != null) {
                    int i33 = i31 - 1;
                    dataOutputStream.writeInt(((Integer) simpleLookupTable2.get(obj8)).intValue());
                    ReferenceCollection referenceCollection4 = (ReferenceCollection) objArr5[i32];
                    if (referenceCollection4 instanceof AdditionalTypeCollection) {
                        dataOutputStream.writeByte(i11);
                        writeNames(((AdditionalTypeCollection) referenceCollection4).definedTypeNames, dataOutputStream);
                    } else {
                        dataOutputStream.writeByte(i10);
                    }
                    char[][][] cArr14 = referenceCollection4.qualifiedNameReferences;
                    dataOutputStream.writeInt(cArr14.length);
                    for (char[][] cArr15 : cArr14) {
                        dataOutputStream.writeInt(((Integer) simpleLookupTable5.get(cArr15)).intValue());
                    }
                    char[][] cArr16 = referenceCollection4.simpleNameReferences;
                    dataOutputStream.writeInt(cArr16.length);
                    for (char[] cArr17 : cArr16) {
                        dataOutputStream.writeInt(((Integer) simpleLookupTable6.get(cArr17)).intValue());
                    }
                    char[][] cArr18 = referenceCollection4.rootReferences;
                    dataOutputStream.writeInt(cArr18.length);
                    for (char[] cArr19 : cArr18) {
                        dataOutputStream.writeInt(((Integer) simpleLookupTable4.get(cArr19)).intValue());
                    }
                    i31 = i33;
                }
                i32++;
                i10 = 2;
                i11 = 1;
            }
            if (!JavaBuilder.DEBUG || i31 == 0) {
                return;
            }
            System.out.println("references table is inconsistent");
        }
    }

    public State(JavaBuilder javaBuilder) {
        this.knownPackageNames = null;
        this.previousStructuralBuildTime = -1L;
        this.structurallyChangedTypes = null;
        this.javaProjectName = javaBuilder.currentProject.getName();
        NameEnvironment nameEnvironment = javaBuilder.nameEnvironment;
        this.sourceLocations = nameEnvironment.sourceLocations;
        this.binaryLocations = nameEnvironment.binaryLocations;
        NameEnvironment nameEnvironment2 = javaBuilder.testNameEnvironment;
        this.testSourceLocations = nameEnvironment2.sourceLocations;
        this.testBinaryLocations = nameEnvironment2.binaryLocations;
        this.references = new SimpleLookupTable(7);
        this.typeLocators = new SimpleLookupTable(7);
        this.buildNumber = 0;
        State state = javaBuilder.lastState;
        this.lastStructuralBuildTime = computeStructuralBuildTime(state == null ? 0L : state.lastStructuralBuildTime);
        this.structuralBuildTimes = new SimpleLookupTable(3);
    }

    public void wasStructurallyChanged(String str) {
        StringSet stringSet = this.structurallyChangedTypes;
        if (stringSet != null) {
            if (stringSet.elementSize > MaxStructurallyChangedTypes) {
                this.structurallyChangedTypes = null;
            } else {
                stringSet.add(str);
            }
        }
    }
}
