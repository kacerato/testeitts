package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.MethodDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.ModulePattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;

public abstract class AbstractIndexer implements IIndexConstants {
    SearchDocument document;

    public AbstractIndexer(SearchDocument searchDocument) {
        this.document = searchDocument;
    }

    private char[] erasure(char[] cArr) {
        int indexOf = CharOperation.indexOf('<', cArr);
        return indexOf > -1 ? CharOperation.subarray(cArr, 0, indexOf) : cArr;
    }

    public void addAnnotationTypeDeclaration(int i10, char[] cArr, char[] cArr2, char[][] cArr3, boolean z10) {
        addTypeDeclaration(i10, cArr, cArr2, cArr3, z10);
        addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, null, IIndexConstants.ANNOTATION_TYPE_SUFFIX, CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ANNOTATION, '.'), IIndexConstants.ANNOTATION_TYPE_SUFFIX));
    }

    public void addAnnotationTypeReference(char[] cArr) {
        addIndexEntry(IIndexConstants.ANNOTATION_REF, CharOperation.lastSegment(cArr, '.'));
    }

    public void addClassDeclaration(int i10, char[] cArr, char[] cArr2, char[][] cArr3, char[] cArr4, char[][] cArr5, char[][] cArr6, boolean z10) {
        char[] cArr7;
        addTypeDeclaration(i10, cArr, cArr2, cArr3, z10);
        if (cArr4 != null) {
            char[] erasure = erasure(cArr4);
            addTypeReference(erasure);
            cArr7 = erasure;
        } else {
            cArr7 = cArr4;
        }
        addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, cArr6, 'C', cArr7, 'C'));
        if (cArr5 != null) {
            for (char[] cArr8 : cArr5) {
                char[] erasure2 = erasure(cArr8);
                addTypeReference(erasure2);
                addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, cArr6, 'C', erasure2, 'I'));
            }
        }
    }

    public void addConstructorDeclaration(char[] cArr, int i10, char[] cArr2, char[][] cArr3, char[][] cArr4, int i11, char[] cArr5, int i12, char[][] cArr6, int i13) {
        addIndexEntry(IIndexConstants.CONSTRUCTOR_DECL, ConstructorPattern.createDeclarationIndexKey(cArr, i10, cArr2, cArr3, cArr4, i11, cArr5, i12, i13));
        if (cArr3 != null) {
            for (int i14 = 0; i14 < i10; i14++) {
                addTypeReference(cArr3[i14]);
            }
        }
        if (cArr6 != null) {
            for (char[] cArr7 : cArr6) {
                addTypeReference(cArr7);
            }
        }
    }

    public void addConstructorReference(char[] cArr, int i10) {
        char[] lastSegment = CharOperation.lastSegment(cArr, '.');
        addTypeReference(lastSegment);
        char[] cArr2 = IIndexConstants.CONSTRUCTOR_REF;
        addIndexEntry(cArr2, ConstructorPattern.createIndexKey(lastSegment, i10));
        char[] lastSegment2 = CharOperation.lastSegment(lastSegment, '$');
        if (lastSegment2 != lastSegment) {
            addIndexEntry(cArr2, ConstructorPattern.createIndexKey(lastSegment2, i10));
        }
    }

    public void addDefaultConstructorDeclaration(char[] cArr, char[] cArr2, int i10, int i11) {
        addIndexEntry(IIndexConstants.CONSTRUCTOR_DECL, ConstructorPattern.createDefaultDeclarationIndexKey(CharOperation.lastSegment(cArr, '.'), cArr2, i10, i11));
    }

    public void addEnumDeclaration(int i10, char[] cArr, char[] cArr2, char[][] cArr3, char[] cArr4, char[][] cArr5, boolean z10) {
        addTypeDeclaration(i10, cArr, cArr2, cArr3, z10);
        addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, null, IIndexConstants.ENUM_SUFFIX, cArr4, 'C'));
        if (cArr5 != null) {
            for (char[] cArr6 : cArr5) {
                char[] erasure = erasure(cArr6);
                addTypeReference(erasure);
                addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, null, IIndexConstants.ENUM_SUFFIX, erasure, 'I'));
            }
        }
    }

    public void addFieldDeclaration(char[] cArr, char[] cArr2) {
        addIndexEntry(IIndexConstants.FIELD_DECL, FieldPattern.createIndexKey(cArr2));
        addTypeReference(cArr);
    }

    public void addFieldReference(char[] cArr) {
        addNameReference(cArr);
    }

    public void addIndexEntry(char[] cArr, char[] cArr2) {
        this.document.addIndexEntry(cArr, cArr2);
    }

    public void addInterfaceDeclaration(int i10, char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, char[][] cArr5, boolean z10) {
        addTypeDeclaration(i10, cArr, cArr2, cArr3, z10);
        if (cArr4 != null) {
            for (char[] cArr6 : cArr4) {
                char[] erasure = erasure(cArr6);
                addTypeReference(erasure);
                addIndexEntry(IIndexConstants.SUPER_REF, SuperTypeReferencePattern.createIndexKey(i10, cArr, cArr2, cArr3, cArr5, 'I', erasure, 'I'));
            }
        }
    }

    public void addMethodDeclaration(char[] cArr, char[] cArr2, char[] cArr3, int i10, char[] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, int i11, char[] cArr8, int i12, char[][] cArr9, int i13) {
        try {
        } catch (Exception e10) {
            e = e10;
        }
        try {
            addIndexEntry(IIndexConstants.METHOD_DECL_PLUS, MethodDeclarationPattern.createDeclarationIndexKey(cArr, cArr2, cArr3, i10, cArr4, cArr5, cArr6, cArr7, i11, cArr8, i12, i13));
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
        }
    }

    public void addMethodReference(char[] cArr, int i10) {
        addIndexEntry(IIndexConstants.METHOD_REF, MethodPattern.createIndexKey(cArr, i10));
    }

    public void addModuleDeclaration(char[] cArr) {
        addIndexEntry(IIndexConstants.MODULE_DECL, ModulePattern.createIndexKey(cArr));
    }

    public void addModuleExportedPackages(char[] cArr) {
        for (char[] cArr2 : CharOperation.splitOn('.', cArr)) {
            addNameReference(cArr2);
        }
    }

    public void addModuleReference(char[] cArr) {
        addIndexEntry(IIndexConstants.MODULE_REF, ModulePattern.createIndexKey(cArr));
    }

    public void addNameReference(char[] cArr) {
        addIndexEntry(IIndexConstants.REF, cArr);
    }

    public void addTypeDeclaration(int i10, char[] cArr, char[] cArr2, char[][] cArr3, boolean z10) {
        char[] createIndexKey = TypeDeclarationPattern.createIndexKey(i10, cArr2, cArr, cArr3, z10);
        if (z10) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            String path = this.document.getPath();
            if (cArr2 == null) {
                cArr2 = CharOperation.NO_CHAR;
            }
            if (cArr == null) {
                cArr = CharOperation.NO_CHAR;
            }
            javaModelManager.secondaryTypeAdding(path, cArr2, cArr);
        }
        addIndexEntry(IIndexConstants.TYPE_DECL, createIndexKey);
    }

    public void addTypeReference(char[] cArr) {
        addNameReference(CharOperation.lastSegment(cArr, '.'));
    }

    public abstract void indexDocument();

    public void indexResolvedDocument() {
    }

    public void addMethodDeclaration(char[] cArr, char[][] cArr2, char[] cArr3, char[][] cArr4) {
        int length = cArr2 == null ? 0 : cArr2.length;
        addIndexEntry(IIndexConstants.METHOD_DECL, MethodPattern.createIndexKey(cArr, length));
        if (cArr2 != null) {
            for (int i10 = 0; i10 < length; i10++) {
                addTypeReference(cArr2[i10]);
            }
        }
        if (cArr4 != null) {
            for (char[] cArr5 : cArr4) {
                addTypeReference(cArr5);
            }
        }
        if (cArr3 != null) {
            addTypeReference(cArr3);
        }
    }
}
