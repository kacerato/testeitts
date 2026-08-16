package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.core.util.CompilationUnitSorter;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class SortElementsOperation extends JavaModelOperation {
    public static final String CONTAINS_MALFORMED_NODES = "malformed";
    int apiLevel;
    Comparator comparator;
    int[] positions;

    public SortElementsOperation(int i10, IJavaElement[] iJavaElementArr, int[] iArr, Comparator comparator) {
        super(iJavaElementArr);
        this.comparator = comparator;
        this.positions = iArr;
        this.apiLevel = i10;
    }

    private static boolean covers(TextEdit textEdit, TextEdit textEdit2) {
        if (textEdit.getLength() == 0) {
            return false;
        }
        int offset = textEdit.getOffset();
        int exclusiveEnd = textEdit.getExclusiveEnd();
        if (textEdit2.getLength() != 0) {
            return offset <= textEdit2.getOffset() && textEdit2.getExclusiveEnd() <= exclusiveEnd;
        }
        int offset2 = textEdit2.getOffset();
        return offset <= offset2 && offset2 < exclusiveEnd;
    }

    public static void insert(TextEdit textEdit, TextEdit textEdit2) {
        if (!textEdit.hasChildren()) {
            textEdit.addChild(textEdit2);
            return;
        }
        TextEdit[] children = textEdit.getChildren();
        for (TextEdit textEdit3 : children) {
            if (covers(textEdit3, textEdit2)) {
                insert(textEdit3, textEdit2);
                return;
            }
        }
        for (int length = children.length - 1; length >= 0; length--) {
            TextEdit textEdit4 = children[length];
            if (covers(textEdit2, textEdit4)) {
                textEdit.removeChild(length);
                textEdit2.addChild(textEdit4);
            }
        }
        textEdit.addChild(textEdit2);
    }

    private String processElement(ICompilationUnit iCompilationUnit, char[] cArr) {
        Document document = new Document(new String(cArr));
        CompilerOptions compilerOptions = new CompilerOptions(iCompilationUnit.getJavaProject().getOptions(true));
        ASTParser newParser = ASTParser.newParser(this.apiLevel);
        newParser.setCompilerOptions(compilerOptions.getMap());
        newParser.setSource(cArr);
        newParser.setKind(8);
        newParser.setResolveBindings(false);
        RangeMarker[] rangeMarkerArr = null;
        ASTRewrite sortCompilationUnit = sortCompilationUnit((org.eclipse.jdt.core.dom.CompilationUnit) newParser.createAST(null), null);
        if (sortCompilationUnit == null) {
            return document.get();
        }
        TextEdit rewriteAST = sortCompilationUnit.rewriteAST(document, iCompilationUnit.getJavaProject().getOptions(true));
        int[] iArr = this.positions;
        if (iArr != null) {
            RangeMarker[] rangeMarkerArr2 = new RangeMarker[iArr.length];
            int length = iArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                RangeMarker rangeMarker = new RangeMarker(this.positions[i10], 0);
                rangeMarkerArr2[i10] = rangeMarker;
                insert(rewriteAST, rangeMarker);
            }
            rangeMarkerArr = rangeMarkerArr2;
        }
        try {
            rewriteAST.apply(document, 2);
            if (this.positions != null) {
                int length2 = rangeMarkerArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.positions[i11] = rangeMarkerArr[i11].getOffset();
                }
            }
        } catch (BadLocationException unused) {
        }
        return document.get();
    }

    private ASTRewrite sortCompilationUnit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit, final TextEditGroup textEditGroup) {
        compilationUnit.accept(new ASTVisitor() {
            @Override
            public boolean visit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit2) {
                boolean z10 = false;
                for (AbstractTypeDeclaration abstractTypeDeclaration : compilationUnit2.types()) {
                    abstractTypeDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(abstractTypeDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(abstractTypeDeclaration);
                }
                compilationUnit2.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, Boolean.valueOf(z10));
                return true;
            }

            @Override
            public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
                boolean z10 = false;
                for (BodyDeclaration bodyDeclaration : annotationTypeDeclaration.bodyDeclarations()) {
                    bodyDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(bodyDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(bodyDeclaration);
                }
                annotationTypeDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, Boolean.valueOf(z10));
                return true;
            }

            @Override
            public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
                boolean z10 = false;
                for (BodyDeclaration bodyDeclaration : anonymousClassDeclaration.bodyDeclarations()) {
                    bodyDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(bodyDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(bodyDeclaration);
                }
                anonymousClassDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, Boolean.valueOf(z10));
                return true;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration) {
                boolean z10 = false;
                for (BodyDeclaration bodyDeclaration : typeDeclaration.bodyDeclarations()) {
                    bodyDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(bodyDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(bodyDeclaration);
                }
                typeDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, Boolean.valueOf(z10));
                return true;
            }

            @Override
            public boolean visit(EnumDeclaration enumDeclaration) {
                boolean z10 = false;
                for (BodyDeclaration bodyDeclaration : enumDeclaration.bodyDeclarations()) {
                    bodyDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(bodyDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(bodyDeclaration);
                }
                for (EnumConstantDeclaration enumConstantDeclaration : enumDeclaration.enumConstants()) {
                    enumConstantDeclaration.setProperty(CompilationUnitSorter.RELATIVE_ORDER, Integer.valueOf(enumConstantDeclaration.getStartPosition()));
                    z10 |= SortElementsOperation.this.isMalformed(enumConstantDeclaration);
                }
                enumDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, Boolean.valueOf(z10));
                return true;
            }
        });
        final ASTRewrite create = ASTRewrite.create(compilationUnit.getAST());
        final boolean[] zArr = new boolean[1];
        compilationUnit.accept(new ASTVisitor() {
            /* JADX WARN: Multi-variable type inference failed */
            private void sortElements(List list, ListRewrite listRewrite) {
                if (list.size() == 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(list);
                Collections.sort(arrayList, SortElementsOperation.this.comparator);
                for (int i10 = 0; i10 < list.size(); i10++) {
                    ASTNode aSTNode = (ASTNode) list.get(i10);
                    ASTNode aSTNode2 = (ASTNode) arrayList.get(i10);
                    if (aSTNode != aSTNode2) {
                        listRewrite.replace(aSTNode, create.createMoveTarget(aSTNode2), textEditGroup);
                        zArr[0] = true;
                    }
                }
            }

            @Override
            public boolean visit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit2) {
                if (SortElementsOperation.this.checkMalformedNodes(compilationUnit2)) {
                    return true;
                }
                sortElements(compilationUnit2.types(), create.getListRewrite(compilationUnit2, org.eclipse.jdt.core.dom.CompilationUnit.TYPES_PROPERTY));
                return true;
            }

            @Override
            public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(annotationTypeDeclaration)) {
                    return true;
                }
                sortElements(annotationTypeDeclaration.bodyDeclarations(), create.getListRewrite(annotationTypeDeclaration, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            @Override
            public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(anonymousClassDeclaration)) {
                    return true;
                }
                sortElements(anonymousClassDeclaration.bodyDeclarations(), create.getListRewrite(anonymousClassDeclaration, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(typeDeclaration)) {
                    return true;
                }
                sortElements(typeDeclaration.bodyDeclarations(), create.getListRewrite(typeDeclaration, TypeDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            @Override
            public boolean visit(EnumDeclaration enumDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(enumDeclaration)) {
                    return true;
                }
                sortElements(enumDeclaration.bodyDeclarations(), create.getListRewrite(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY));
                sortElements(enumDeclaration.enumConstants(), create.getListRewrite(enumDeclaration, EnumDeclaration.ENUM_CONSTANTS_PROPERTY));
                return true;
            }
        });
        if (zArr[0]) {
            return create;
        }
        return null;
    }

    public TextEdit calculateEdit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit, TextEditGroup textEditGroup) throws JavaModelException {
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        if (iJavaElementArr.length != 1) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(968));
        }
        if (!(iJavaElementArr[0] instanceof ICompilationUnit)) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, this.elementsToProcess[0]));
        }
        try {
            beginTask(Messages.operation_sortelements, getMainAmountOfWork());
            ICompilationUnit iCompilationUnit = (ICompilationUnit) this.elementsToProcess[0];
            String contents = iCompilationUnit.getBuffer().getContents();
            ASTRewrite sortCompilationUnit = sortCompilationUnit(compilationUnit, textEditGroup);
            if (sortCompilationUnit != null) {
                return sortCompilationUnit.rewriteAST(new Document(contents), iCompilationUnit.getJavaProject().getOptions(true));
            }
            done();
            return null;
        } finally {
            done();
        }
    }

    public boolean checkMalformedNodes(ASTNode aSTNode) {
        Object property = aSTNode.getProperty(CONTAINS_MALFORMED_NODES);
        if (property == null) {
            return false;
        }
        return ((Boolean) property).booleanValue();
    }

    @Override
    public void executeOperation() throws JavaModelException {
        try {
            beginTask(Messages.operation_sortelements, getMainAmountOfWork());
            CompilationUnit compilationUnit = (CompilationUnit) this.elementsToProcess[0];
            ICompilationUnit primary = compilationUnit.getPrimary();
            IBuffer buffer = compilationUnit.getBuffer();
            if (buffer == null) {
                done();
                return;
            }
            char[] characters = buffer.getCharacters();
            String processElement = processElement(primary, characters);
            if (!CharOperation.equals(processElement.toCharArray(), characters)) {
                compilationUnit.getBuffer().setContents(processElement);
            }
            worked(1);
            done();
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }

    public int getMainAmountOfWork() {
        return this.elementsToProcess.length;
    }

    public boolean isMalformed(ASTNode aSTNode) {
        return (aSTNode.getFlags() & 1) != 0;
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaElement iJavaElement;
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        if (iJavaElementArr.length == 1 && (iJavaElement = iJavaElementArr[0]) != null) {
            return ((iJavaElement instanceof ICompilationUnit) && ((ICompilationUnit) iJavaElement).isWorkingCopy()) ? JavaModelStatus.VERIFIED_OK : new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, this.elementsToProcess[0]);
        }
        return new JavaModelStatus(968);
    }
}
