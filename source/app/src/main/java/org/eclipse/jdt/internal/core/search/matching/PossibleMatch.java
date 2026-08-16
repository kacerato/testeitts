package org.eclipse.jdt.internal.core.search.matching;

import com.tonyodev.fetch2.util.FetchDefaults;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.AbstractClassFile;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.ModularClassFile;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.util.Util;

public class PossibleMatch implements ICompilationUnit {
    public static final char[] NO_SOURCE_FILE = new char[0];
    public static final String NO_SOURCE_FILE_NAME = "NO SOURCE FILE NAME";
    public String autoModuleName;
    public char[][] compoundName;
    public SearchDocument document;
    public MatchingNodeSet nodeSet;
    public Openable openable;
    CompilationUnitDeclaration parsedUnit;
    public IResource resource;
    private PossibleMatch similarMatch;
    private char[] source;
    private String sourceFileName;

    public PossibleMatch(MatchLocator matchLocator, IResource iResource, Openable openable, SearchDocument searchDocument, boolean z10) {
        this.resource = iResource;
        this.openable = openable;
        this.document = searchDocument;
        this.nodeSet = new MatchingNodeSet(z10);
        char[] qualifiedName = getQualifiedName();
        if (qualifiedName != null) {
            this.compoundName = CharOperation.splitOn('.', qualifiedName);
        }
    }

    private char[] getQualifiedName() {
        Openable openable = this.openable;
        if (openable instanceof CompilationUnit) {
            return ((CompilationUnit) this.openable).getType(new String(Util.getNameWithoutJavaLikeExtension(openable.getElementName()).toCharArray())).getFullyQualifiedName().toCharArray();
        }
        if (!(openable instanceof ClassFile)) {
            if (openable instanceof ModularClassFile) {
                return Util.concatWith(((PackageFragment) openable.getParent()).names, "module-info", '.').toCharArray();
            }
            return null;
        }
        String sourceFileName = getSourceFileName();
        if (sourceFileName == NO_SOURCE_FILE_NAME) {
            return ((ClassFile) this.openable).getType().getFullyQualifiedName('.').toCharArray();
        }
        int indexOfJavaLikeExtension = Util.indexOfJavaLikeExtension(sourceFileName);
        if (indexOfJavaLikeExtension != -1) {
            sourceFileName = sourceFileName.substring(0, indexOfJavaLikeExtension);
        }
        return Util.concatWith(((PackageFragment) this.openable.getParent()).names, sourceFileName, '.').toCharArray();
    }

    private String getSourceFileName() {
        String str = this.sourceFileName;
        if (str != null) {
            return str;
        }
        String str2 = NO_SOURCE_FILE_NAME;
        this.sourceFileName = NO_SOURCE_FILE_NAME;
        if (this.openable.getSourceMapper() != null) {
            Openable openable = this.openable;
            if (openable instanceof ClassFile) {
                BinaryType binaryType = (BinaryType) ((ClassFile) openable).getType();
                IBinaryType classFileReader = MatchLocator.classFileReader(binaryType);
                if (classFileReader != null) {
                    String sourceFileName = binaryType.sourceFileName(classFileReader);
                    if (sourceFileName != null) {
                        str2 = sourceFileName;
                    }
                    this.sourceFileName = str2;
                }
            } else if (openable instanceof ModularClassFile) {
                this.sourceFileName = "module-info.java";
            }
        }
        return this.sourceFileName;
    }

    private boolean isModuleInfo(PossibleMatch possibleMatch) {
        return CharOperation.equals(getMainTypeName(), TypeConstants.MODULE_INFO_NAME);
    }

    public void cleanUp() {
        this.source = null;
        CompilationUnitDeclaration compilationUnitDeclaration = this.parsedUnit;
        if (compilationUnitDeclaration != null) {
            compilationUnitDeclaration.cleanUp();
            this.parsedUnit = null;
        }
        this.nodeSet = null;
    }

    public boolean equals(Object obj) {
        char[][] cArr = this.compoundName;
        if (cArr == null) {
            return super.equals(obj);
        }
        if (obj instanceof PossibleMatch) {
            return CharOperation.equals(cArr, ((PossibleMatch) obj).compoundName);
        }
        return false;
    }

    @Override
    public char[] getContents() {
        char[] cArr = this.source;
        char[] cArr2 = NO_SOURCE_FILE;
        char[] cArr3 = cArr == cArr2 ? null : cArr;
        if (cArr == null) {
            if (this.openable instanceof AbstractClassFile) {
                String sourceFileName = getSourceFileName();
                if (sourceFileName == NO_SOURCE_FILE_NAME) {
                    return CharOperation.NO_CHAR;
                }
                SourceMapper sourceMapper = this.openable.getSourceMapper();
                if (sourceMapper != null) {
                    Openable openable = this.openable;
                    if (openable instanceof ClassFile) {
                        cArr3 = sourceMapper.findSource(((ClassFile) openable).getType(), sourceFileName);
                    } else if (openable instanceof ModularClassFile) {
                        try {
                            IModuleDescription module = ((ModularClassFile) openable).getModule();
                            cArr3 = module != null ? sourceMapper.findSource(module) : CharOperation.NO_CHAR;
                        } catch (JavaModelException unused) {
                            return CharOperation.NO_CHAR;
                        }
                    }
                }
            } else if (this.autoModuleName != null) {
                cArr3 = ("module " + this.autoModuleName + FetchDefaults.EMPTY_JSON_OBJECT_STRING).toCharArray();
                this.sourceFileName = "module-info.java";
                this.compoundName = new char[][]{"module-info".toCharArray()};
            } else {
                cArr3 = this.document.getCharContents();
            }
            if (cArr3 != null) {
                cArr2 = cArr3;
            }
            this.source = cArr2;
        }
        return cArr3;
    }

    @Override
    public char[] getFileName() {
        return this.openable.getElementName().toCharArray();
    }

    @Override
    public char[] getMainTypeName() {
        return this.compoundName[r0.length - 1];
    }

    @Override
    public char[] getModuleName() {
        IModuleDescription moduleDescription;
        Openable openable = this.openable;
        if (openable instanceof CompilationUnit) {
            return ((CompilationUnit) openable).getModuleName();
        }
        if (!(openable instanceof ClassFile) || (moduleDescription = openable.getPackageFragmentRoot().getModuleDescription()) == null) {
            return null;
        }
        return moduleDescription.getElementName().toCharArray();
    }

    @Override
    public char[][] getPackageName() {
        char[][] cArr = this.compoundName;
        int length = cArr.length;
        return length <= 1 ? CharOperation.NO_CHAR_CHAR : CharOperation.subarray(cArr, 0, length - 1);
    }

    public PossibleMatch getSimilarMatch() {
        return this.similarMatch;
    }

    public boolean hasSimilarMatch() {
        if (this.similarMatch != null) {
            return this.source == NO_SOURCE_FILE || isModuleInfo(this);
        }
        return false;
    }

    public int hashCode() {
        char[][] cArr = this.compoundName;
        if (cArr == null) {
            return super.hashCode();
        }
        int length = cArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += CharOperation.hashCode(this.compoundName[i11]);
        }
        return i10;
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return false;
    }

    public void setSimilarMatch(PossibleMatch possibleMatch) {
        possibleMatch.source = isModuleInfo(possibleMatch) ? null : NO_SOURCE_FILE;
        this.similarMatch = possibleMatch;
    }

    public String toString() {
        Openable openable = this.openable;
        return openable == null ? "Fake PossibleMatch" : openable.toString();
    }
}
