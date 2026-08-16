package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public class CompilationUnit extends ASTNode {
    private static final Message[] EMPTY_MESSAGES = new Message[0];
    private static final IProblem[] EMPTY_PROBLEMS = new IProblem[0];
    public static final ChildListPropertyDescriptor IMPORTS_PROPERTY;
    public static final ChildPropertyDescriptor MODULE_PROPERTY;
    public static final ChildPropertyDescriptor PACKAGE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_9_0;
    public static final ChildListPropertyDescriptor TYPES_PROPERTY;
    private DefaultCommentMapper commentMapper;
    private ASTNode.NodeList imports;
    private int[] lineEndTable;
    private Message[] messages;
    private ModuleDeclaration module;
    private List optionalCommentList;
    Comment[] optionalCommentTable;
    private PackageDeclaration optionalPackageDeclaration;
    private IProblem[] problems;
    private Object statementsRecoveryData;
    private ITypeRoot typeRoot;
    private ASTNode.NodeList types;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(CompilationUnit.class, "imports", ImportDeclaration.class, false);
        IMPORTS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(CompilationUnit.class, Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, PackageDeclaration.class, false, false);
        PACKAGE_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(CompilationUnit.class, IClasspathAttribute.MODULE, ModuleDeclaration.class, false, false);
        MODULE_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(CompilationUnit.class, "types", AbstractTypeDeclaration.class, true);
        TYPES_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(CompilationUnit.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(5);
        ASTNode.createPropertyList(CompilationUnit.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_9_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public CompilationUnit(AST ast) {
        super(ast);
        this.commentMapper = null;
        this.typeRoot = null;
        this.imports = new ASTNode.NodeList(IMPORTS_PROPERTY);
        this.lineEndTable = Util.EMPTY_INT_ARRAY;
        this.optionalCommentList = null;
        this.optionalCommentTable = null;
        this.optionalPackageDeclaration = null;
        this.module = null;
        this.problems = EMPTY_PROBLEMS;
        this.types = new ASTNode.NodeList(TYPES_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return i10 < 9 ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_9_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 9) {
                acceptChild(aSTVisitor, getModule());
            }
            acceptChild(aSTVisitor, getPackage());
            acceptChildren(aSTVisitor, this.imports);
            acceptChildren(aSTVisitor, this.types);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        CompilationUnit compilationUnit = new CompilationUnit(ast);
        compilationUnit.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 9) {
            compilationUnit.setModule((ModuleDeclaration) ASTNode.copySubtree(ast, getModule()));
        }
        compilationUnit.setPackage((PackageDeclaration) ASTNode.copySubtree(ast, getPackage()));
        compilationUnit.imports().addAll(ASTNode.copySubtrees(ast, imports()));
        compilationUnit.types().addAll(ASTNode.copySubtrees(ast, types()));
        return compilationUnit;
    }

    public ASTNode findDeclaringNode(IBinding iBinding) {
        return this.ast.getBindingResolver().findDeclaringNode(iBinding);
    }

    public int firstLeadingCommentIndex(ASTNode aSTNode) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || aSTNode.getAST() != getAST()) {
            return -1;
        }
        return this.commentMapper.firstLeadingCommentIndex(aSTNode);
    }

    public int getColumnNumber(int i10) {
        if (this.lineEndTable == null) {
            return -2;
        }
        int lineNumber = getLineNumber(i10);
        if (lineNumber == -1) {
            return -1;
        }
        if (lineNumber == 1) {
            if (i10 >= getStartPosition() + getLength()) {
                return -1;
            }
            return i10;
        }
        int[] iArr = this.lineEndTable;
        int length = iArr.length;
        int i11 = iArr[lineNumber - 2] + 1;
        if (i11 > (lineNumber == length + 1 ? (getStartPosition() + getLength()) - 1 : iArr[lineNumber - 1])) {
            return -1;
        }
        return i10 - i11;
    }

    public List getCommentList() {
        return this.optionalCommentList;
    }

    public DefaultCommentMapper getCommentMapper() {
        return this.commentMapper;
    }

    public int getExtendedLength(ASTNode aSTNode) {
        if (aSTNode != null) {
            return (this.commentMapper == null || aSTNode.getAST() != getAST()) ? aSTNode.getLength() : this.commentMapper.getExtendedLength(aSTNode);
        }
        throw new IllegalArgumentException();
    }

    public int getExtendedStartPosition(ASTNode aSTNode) {
        if (aSTNode != null) {
            return (this.commentMapper == null || aSTNode.getAST() != getAST()) ? aSTNode.getStartPosition() : this.commentMapper.getExtendedStartPosition(aSTNode);
        }
        throw new IllegalArgumentException();
    }

    public IJavaElement getJavaElement() {
        return this.typeRoot;
    }

    public int getLineNumber(int i10) {
        int[] iArr = this.lineEndTable;
        if (iArr == null) {
            return -2;
        }
        int length = iArr.length;
        if (length == 0) {
            return i10 >= getStartPosition() + getLength() ? -1 : 1;
        }
        if (i10 < 0) {
            return -1;
        }
        int i11 = 0;
        if (i10 <= iArr[0]) {
            return 1;
        }
        int i12 = length - 1;
        if (i10 > iArr[i12]) {
            if (i10 >= getStartPosition() + getLength()) {
                return -1;
            }
            return length + 1;
        }
        while (i11 + 1 != i12) {
            int i13 = ((i12 - i11) / 2) + i11;
            if (i10 <= this.lineEndTable[i13]) {
                i12 = i13;
            } else {
                i11 = i13;
            }
        }
        return i11 + 2;
    }

    public Message[] getMessages() {
        if (this.messages == null) {
            int length = this.problems.length;
            if (length == 0) {
                this.messages = EMPTY_MESSAGES;
            } else {
                this.messages = new Message[length];
                for (int i10 = 0; i10 < length; i10++) {
                    IProblem iProblem = this.problems[i10];
                    int sourceStart = iProblem.getSourceStart();
                    this.messages[i10] = new Message(iProblem.getMessage(), sourceStart, (iProblem.getSourceEnd() - sourceStart) + 1);
                }
            }
        }
        return this.messages;
    }

    public ModuleDeclaration getModule() {
        unsupportedBelow9();
        return this.module;
    }

    @Override
    public final int getNodeType0() {
        return 15;
    }

    public PackageDeclaration getPackage() {
        return this.optionalPackageDeclaration;
    }

    public int getPosition(int i10, int i11) {
        int[] iArr = this.lineEndTable;
        if (iArr == null) {
            return -2;
        }
        if (i10 < 1 || i11 < 0) {
            return -1;
        }
        int length = iArr.length;
        if (length == 0) {
            if (i10 == 1 && i11 < getStartPosition() + getLength()) {
                return i11;
            }
            return -1;
        }
        if (i10 == 1) {
            if (i11 > iArr[0]) {
                return -1;
            }
            return i11;
        }
        int i12 = length + 1;
        if (i10 > i12) {
            return -1;
        }
        int i13 = iArr[i10 - 2] + 1 + i11;
        if (i13 > (i10 == i12 ? (getStartPosition() + getLength()) - 1 : iArr[i10 - 1])) {
            return -1;
        }
        return i13;
    }

    public IProblem[] getProblems() {
        return this.problems;
    }

    public Object getStatementsRecoveryData() {
        return this.statementsRecoveryData;
    }

    public ITypeRoot getTypeRoot() {
        return this.typeRoot;
    }

    public List imports() {
        return this.imports;
    }

    public void initCommentMapper(Scanner scanner) {
        DefaultCommentMapper defaultCommentMapper = new DefaultCommentMapper(this.optionalCommentTable);
        this.commentMapper = defaultCommentMapper;
        defaultCommentMapper.initialize(this, scanner);
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == IMPORTS_PROPERTY ? imports() : childListPropertyDescriptor == TYPES_PROPERTY ? types() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == MODULE_PROPERTY) {
            if (z10) {
                return getModule();
            }
            setModule((ModuleDeclaration) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != PACKAGE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getPackage();
        }
        setPackage((PackageDeclaration) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public int lastTrailingCommentIndex(ASTNode aSTNode) {
        if (aSTNode == null) {
            throw new IllegalArgumentException();
        }
        if (this.commentMapper == null || aSTNode.getAST() != getAST()) {
            return -1;
        }
        return this.commentMapper.lastTrailingCommentIndex(aSTNode);
    }

    public int lineNumber(int i10) {
        int lineNumber = getLineNumber(i10);
        if (lineNumber < 1) {
            return 1;
        }
        return lineNumber;
    }

    @Override
    public int memSize() {
        int[] iArr = this.lineEndTable;
        int length = iArr != null ? (iArr.length * 4) + 84 : 72;
        Comment[] commentArr = this.optionalCommentTable;
        return commentArr != null ? length + (commentArr.length * 4) + 12 : length;
    }

    public void recordModifications() {
        getAST().recordModifications(this);
    }

    public TextEdit rewrite(IDocument iDocument, Map map) {
        return getAST().rewrite(iDocument, map);
    }

    public void setCommentTable(Comment[] commentArr) {
        if (commentArr == null) {
            this.optionalCommentList = null;
            this.optionalCommentTable = null;
            return;
        }
        int i10 = 0;
        for (Comment comment : commentArr) {
            if (comment == null) {
                throw new IllegalArgumentException();
            }
            int startPosition = comment.getStartPosition();
            int length = comment.getLength();
            if (startPosition < 0 || length < 0 || startPosition < i10) {
                throw new IllegalArgumentException();
            }
            i10 = comment.getStartPosition() + comment.getLength();
        }
        this.optionalCommentTable = commentArr;
        this.optionalCommentList = Collections.unmodifiableList(Arrays.asList(commentArr));
    }

    public void setLineEndTable(int[] iArr) {
        iArr.getClass();
        checkModifiable();
        this.lineEndTable = iArr;
    }

    public void setModule(ModuleDeclaration moduleDeclaration) {
        unsupportedBelow9();
        ModuleDeclaration moduleDeclaration2 = this.module;
        ChildPropertyDescriptor childPropertyDescriptor = MODULE_PROPERTY;
        preReplaceChild(moduleDeclaration2, moduleDeclaration, childPropertyDescriptor);
        this.module = moduleDeclaration;
        postReplaceChild(moduleDeclaration2, moduleDeclaration, childPropertyDescriptor);
    }

    public void setPackage(PackageDeclaration packageDeclaration) {
        PackageDeclaration packageDeclaration2 = this.optionalPackageDeclaration;
        ChildPropertyDescriptor childPropertyDescriptor = PACKAGE_PROPERTY;
        preReplaceChild(packageDeclaration2, packageDeclaration, childPropertyDescriptor);
        this.optionalPackageDeclaration = packageDeclaration;
        postReplaceChild(packageDeclaration2, packageDeclaration, childPropertyDescriptor);
    }

    public void setProblems(IProblem[] iProblemArr) {
        if (iProblemArr == null) {
            throw new IllegalArgumentException();
        }
        this.problems = iProblemArr;
    }

    public void setStatementsRecoveryData(Object obj) {
        this.statementsRecoveryData = obj;
    }

    public void setTypeRoot(ITypeRoot iTypeRoot) {
        this.typeRoot = iTypeRoot;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        if (this.module != null) {
            memSize += getModule().treeSize();
        }
        if (this.optionalPackageDeclaration != null) {
            memSize += getPackage().treeSize();
        }
        int listSize = memSize + this.imports.listSize() + this.types.listSize();
        if (this.optionalCommentList != null) {
            for (int i10 = 0; i10 < this.optionalCommentList.size(); i10++) {
                Comment comment = (Comment) this.optionalCommentList.get(i10);
                if (comment != null && comment.getParent() == null) {
                    listSize += comment.treeSize();
                }
            }
        }
        return listSize;
    }

    public List types() {
        return this.types;
    }

    public ASTNode findDeclaringNode(String str) {
        return this.ast.getBindingResolver().findDeclaringNode(str);
    }
}
