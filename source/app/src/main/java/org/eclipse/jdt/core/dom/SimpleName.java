package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SimpleName extends Name {
    public static final SimplePropertyDescriptor IDENTIFIER_PROPERTY;
    private static final String MISSING_IDENTIFIER = "MISSING";
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_10_0;
    public static final SimplePropertyDescriptor VAR_PROPERTY;
    private String identifier;
    private boolean isVarType;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(SimpleName.class, "identifier", String.class, true);
        IDENTIFIER_PROPERTY = simplePropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor2 = new SimplePropertyDescriptor(SimpleName.class, "var", Boolean.TYPE, true);
        VAR_PROPERTY = simplePropertyDescriptor2;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(SimpleName.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(SimpleName.class, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_10_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public SimpleName(AST ast) {
        super(ast);
        this.identifier = MISSING_IDENTIFIER;
        this.isVarType = false;
    }

    public static List propertyDescriptors(int i10) {
        return i10 < 10 ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_10_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        aSTVisitor.visit(this);
        aSTVisitor.endVisit(this);
    }

    @Override
    public void appendName(StringBuffer stringBuffer) {
        stringBuffer.append(getIdentifier());
    }

    @Override
    public ASTNode clone0(AST ast) {
        SimpleName simpleName = new SimpleName(ast);
        simpleName.setSourceRange(getStartPosition(), getLength());
        simpleName.setIdentifier(getIdentifier());
        AST ast2 = this.ast;
        if (ast2.apiLevel >= 10 && Long.compare(ast2.scanner.complianceLevel, 10L) >= 0) {
            simpleName.setVar(isVar());
        }
        return simpleName;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    @Override
    public final int getNodeType0() {
        return 42;
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != VAR_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isVar();
        }
        if (Long.compare(this.ast.scanner.complianceLevel, ClassFileConstants.JDK10) < 0) {
            setVar(false);
        } else {
            setVar(z11);
        }
        return false;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != IDENTIFIER_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getIdentifier();
        }
        setIdentifier((String) obj);
        return null;
    }

    public void internalSetIdentifier(String str) {
        SimplePropertyDescriptor simplePropertyDescriptor = IDENTIFIER_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.identifier = str;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isDeclaration() {
        StructuralPropertyDescriptor locationInParent = getLocationInParent();
        if (locationInParent == null) {
            return false;
        }
        ASTNode parent = getParent();
        return parent instanceof TypeDeclaration ? locationInParent == TypeDeclaration.NAME_PROPERTY : parent instanceof MethodDeclaration ? !((MethodDeclaration) parent).isConstructor() && locationInParent == MethodDeclaration.NAME_PROPERTY : parent instanceof SingleVariableDeclaration ? locationInParent == SingleVariableDeclaration.NAME_PROPERTY : parent instanceof VariableDeclarationFragment ? locationInParent == VariableDeclarationFragment.NAME_PROPERTY : parent instanceof EnumDeclaration ? locationInParent == EnumDeclaration.NAME_PROPERTY : parent instanceof EnumConstantDeclaration ? locationInParent == EnumConstantDeclaration.NAME_PROPERTY : parent instanceof TypeParameter ? locationInParent == TypeParameter.NAME_PROPERTY : parent instanceof AnnotationTypeDeclaration ? locationInParent == AnnotationTypeDeclaration.NAME_PROPERTY : (parent instanceof AnnotationTypeMemberDeclaration) && locationInParent == AnnotationTypeMemberDeclaration.NAME_PROPERTY;
    }

    public boolean isVar() {
        unsupportedBelow10();
        return this.isVarType;
    }

    @Override
    public int memSize() {
        String str = this.identifier;
        if (str != MISSING_IDENTIFIER) {
            return 56 + ASTNode.stringSize(str);
        }
        return 56;
    }

    public void setIdentifier(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        long j10 = scanner.sourceLevel;
        long j11 = scanner.complianceLevel;
        try {
            scanner.sourceLevel = ClassFileConstants.JDK1_3;
            scanner.complianceLevel = ClassFileConstants.JDK1_5;
            char[] charArray = str.toCharArray();
            scanner.setSource(charArray);
            int length = charArray.length;
            scanner.resetTo(0, length - 1);
            try {
                if (scanner.scanIdentifier() != 22) {
                    throw new IllegalArgumentException("Invalid identifier : >" + str + "<");
                }
                if (scanner.currentPosition != length) {
                    throw new IllegalArgumentException("Invalid identifier : >" + str + "<");
                }
                Scanner scanner2 = this.ast.scanner;
                scanner2.sourceLevel = j10;
                scanner2.complianceLevel = j11;
                SimplePropertyDescriptor simplePropertyDescriptor = IDENTIFIER_PROPERTY;
                preValueChange(simplePropertyDescriptor);
                this.identifier = str;
                postValueChange(simplePropertyDescriptor);
            } catch (InvalidInputException e10) {
                throw new IllegalArgumentException("Invalid identifier : >" + str + "<", e10);
            }
        } catch (Throwable th2) {
            Scanner scanner3 = this.ast.scanner;
            scanner3.sourceLevel = j10;
            scanner3.complianceLevel = j11;
            throw th2;
        }
    }

    public void setVar(boolean z10) {
        unsupportedBelow10();
        SimplePropertyDescriptor simplePropertyDescriptor = VAR_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.isVarType = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize();
    }
}
