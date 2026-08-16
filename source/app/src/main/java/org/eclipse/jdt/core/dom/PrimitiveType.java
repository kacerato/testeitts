package org.eclipse.jdt.core.dom;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.dom.ASTNode;

public class PrimitiveType extends AnnotatableType {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    public static final Code BOOLEAN;
    public static final Code BYTE;
    public static final Code CHAR;
    private static final Map CODES;
    public static final Code DOUBLE;
    public static final Code FLOAT;
    public static final Code INT;
    public static final Code LONG;
    public static final SimplePropertyDescriptor PRIMITIVE_TYPE_CODE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final Code SHORT;
    public static final Code VOID;
    private Code typeCode;

    public static class Code {
        private String name;

        public Code(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    static {
        Code code = new Code("int");
        INT = code;
        Code code2 = new Code("char");
        CHAR = code2;
        Code code3 = new Code(TypedValues.Custom.S_BOOLEAN);
        BOOLEAN = code3;
        Code code4 = new Code("short");
        SHORT = code4;
        Code code5 = new Code("long");
        LONG = code5;
        Code code6 = new Code(TypedValues.Custom.S_FLOAT);
        FLOAT = code6;
        Code code7 = new Code("double");
        DOUBLE = code7;
        Code code8 = new Code("byte");
        BYTE = code8;
        Code code9 = new Code("void");
        VOID = code9;
        CODES = new HashMap(20);
        Code[] codeArr = {code, code8, code2, code3, code4, code5, code6, code7, code9};
        for (int i10 = 0; i10 < 9; i10++) {
            CODES.put(codeArr[i10].toString(), codeArr[i10]);
        }
        ChildListPropertyDescriptor internalAnnotationsPropertyFactory = AnnotatableType.internalAnnotationsPropertyFactory(PrimitiveType.class);
        ANNOTATIONS_PROPERTY = internalAnnotationsPropertyFactory;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(PrimitiveType.class, "primitiveTypeCode", Code.class, true);
        PRIMITIVE_TYPE_CODE_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(PrimitiveType.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(PrimitiveType.class, arrayList2);
        ASTNode.addProperty(internalAnnotationsPropertyFactory, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public PrimitiveType(AST ast) {
        super(ast);
        this.typeCode = INT;
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3 || i10 == 4) ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_8_0;
    }

    public static Code toCode(String str) {
        return (Code) CODES.get(str);
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this) && this.ast.apiLevel >= 8) {
            acceptChildren(aSTVisitor, this.annotations);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        PrimitiveType primitiveType = new PrimitiveType(ast);
        primitiveType.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel >= 8) {
            primitiveType.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        }
        primitiveType.setPrimitiveTypeCode(getPrimitiveTypeCode());
        return primitiveType;
    }

    @Override
    public final int getNodeType0() {
        return 39;
    }

    public Code getPrimitiveTypeCode() {
        return this.typeCode;
    }

    @Override
    public final ChildListPropertyDescriptor internalAnnotationsProperty() {
        return ANNOTATIONS_PROPERTY;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ANNOTATIONS_PROPERTY ? annotations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != PRIMITIVE_TYPE_CODE_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getPrimitiveTypeCode();
        }
        setPrimitiveTypeCode((Code) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 48;
    }

    public void setPrimitiveTypeCode(Code code) {
        if (code == null) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = PRIMITIVE_TYPE_CODE_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.typeCode = code;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.annotations;
        return memSize + (nodeList == null ? 0 : nodeList.listSize());
    }
}
