package org.eclipse.jdt.core.dom;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.dom.NaiveASTFlattener;

public abstract class ASTNode {
    public static final int ANNOTATION_TYPE_DECLARATION = 81;
    public static final int ANNOTATION_TYPE_MEMBER_DECLARATION = 82;
    public static final int ANONYMOUS_CLASS_DECLARATION = 1;
    public static final int ARRAY_ACCESS = 2;
    public static final int ARRAY_CREATION = 3;
    public static final int ARRAY_INITIALIZER = 4;
    public static final int ARRAY_TYPE = 5;
    public static final int ASSERT_STATEMENT = 6;
    public static final int ASSIGNMENT = 7;
    static final int BASE_NODE_SIZE = 40;
    public static final int BLOCK = 8;
    public static final int BLOCK_COMMENT = 64;
    public static final int BOOLEAN_LITERAL = 9;
    public static final int BREAK_STATEMENT = 10;
    public static final int CAST_EXPRESSION = 11;
    public static final int CATCH_CLAUSE = 12;
    public static final int CHARACTER_LITERAL = 13;
    public static final int CLASS_INSTANCE_CREATION = 14;
    public static final int COMPILATION_UNIT = 15;
    public static final int CONDITIONAL_EXPRESSION = 16;
    public static final int CONSTRUCTOR_INVOCATION = 17;
    public static final int CONTINUE_STATEMENT = 18;
    public static final int CREATION_REFERENCE = 89;
    static final boolean CYCLE_RISK = true;
    public static final int DIMENSION = 85;
    public static final int DO_STATEMENT = 19;
    public static final int EMPTY_STATEMENT = 20;
    public static final int ENHANCED_FOR_STATEMENT = 70;
    public static final int ENUM_CONSTANT_DECLARATION = 72;
    public static final int ENUM_DECLARATION = 71;
    public static final int EXPORTS_DIRECTIVE = 95;
    public static final int EXPRESSION_METHOD_REFERENCE = 90;
    public static final int EXPRESSION_STATEMENT = 21;
    public static final int FIELD_ACCESS = 22;
    public static final int FIELD_DECLARATION = 23;
    public static final int FOR_STATEMENT = 24;
    static final int HEADERS = 12;
    public static final int IF_STATEMENT = 25;
    public static final int IMPORT_DECLARATION = 26;
    public static final int INFIX_EXPRESSION = 27;
    public static final int INITIALIZER = 28;
    public static final int INSTANCEOF_EXPRESSION = 62;
    public static final int INTERSECTION_TYPE = 87;
    public static final int JAVADOC = 29;
    public static final int LABELED_STATEMENT = 30;
    public static final int LAMBDA_EXPRESSION = 86;
    public static final int LINE_COMMENT = 63;
    public static final int MALFORMED = 1;
    static final boolean MANDATORY = true;
    public static final int MARKER_ANNOTATION = 78;
    public static final int MEMBER_REF = 67;
    public static final int MEMBER_VALUE_PAIR = 80;
    public static final int METHOD_DECLARATION = 31;
    public static final int METHOD_INVOCATION = 32;
    public static final int METHOD_REF = 68;
    public static final int METHOD_REF_PARAMETER = 69;
    public static final int MODIFIER = 83;
    public static final int MODULE_DECLARATION = 93;
    public static final int MODULE_MODIFIER = 99;
    public static final int NAME_QUALIFIED_TYPE = 88;
    public static final int NORMAL_ANNOTATION = 77;
    static final boolean NO_CYCLE_RISK = false;
    public static final int NULL_LITERAL = 33;
    public static final int NUMBER_LITERAL = 34;
    public static final int OPENS_DIRECTIVE = 96;
    static final boolean OPTIONAL = false;
    public static final int ORIGINAL = 2;
    public static final int PACKAGE_DECLARATION = 35;
    public static final int PARAMETERIZED_TYPE = 74;
    public static final int PARENTHESIZED_EXPRESSION = 36;
    public static final int POSTFIX_EXPRESSION = 37;
    public static final int PREFIX_EXPRESSION = 38;
    public static final int PRIMITIVE_TYPE = 39;
    public static final int PROTECT = 4;
    public static final int PROVIDES_DIRECTIVE = 98;
    public static final int QUALIFIED_NAME = 40;
    public static final int QUALIFIED_TYPE = 75;
    public static final int RECOVERED = 8;
    public static final int REQUIRES_DIRECTIVE = 94;
    public static final int RETURN_STATEMENT = 41;
    public static final int SIMPLE_NAME = 42;
    public static final int SIMPLE_TYPE = 43;
    public static final int SINGLE_MEMBER_ANNOTATION = 79;
    public static final int SINGLE_VARIABLE_DECLARATION = 44;
    public static final int STRING_LITERAL = 45;
    public static final int SUPER_CONSTRUCTOR_INVOCATION = 46;
    public static final int SUPER_FIELD_ACCESS = 47;
    public static final int SUPER_METHOD_INVOCATION = 48;
    public static final int SUPER_METHOD_REFERENCE = 91;
    public static final int SWITCH_CASE = 49;
    public static final int SWITCH_EXPRESSION = 100;
    public static final int SWITCH_STATEMENT = 50;
    public static final int SYNCHRONIZED_STATEMENT = 51;
    public static final int TAG_ELEMENT = 65;
    public static final int TEXT_ELEMENT = 66;
    public static final int THIS_EXPRESSION = 52;
    public static final int THROW_STATEMENT = 53;
    public static final int TRY_STATEMENT = 54;
    public static final int TYPE_DECLARATION = 55;
    public static final int TYPE_DECLARATION_STATEMENT = 56;
    public static final int TYPE_LITERAL = 57;
    public static final int TYPE_METHOD_REFERENCE = 92;
    public static final int TYPE_PARAMETER = 73;
    public static final int UNION_TYPE = 84;
    private static final Map UNMODIFIABLE_EMPTY_MAP = Collections.unmodifiableMap(new HashMap(1));
    public static final int USES_DIRECTIVE = 97;
    public static final int VARIABLE_DECLARATION_EXPRESSION = 58;
    public static final int VARIABLE_DECLARATION_FRAGMENT = 59;
    public static final int VARIABLE_DECLARATION_STATEMENT = 60;
    public static final int WHILE_STATEMENT = 61;
    public static final int WILDCARD_TYPE = 76;
    final AST ast;
    private ASTNode parent = null;
    private Object property1 = null;
    private Object property2 = null;
    private int startPosition = -1;
    private int length = 0;
    int typeAndFlags = 0;
    private StructuralPropertyDescriptor location = null;

    public class NodeList extends AbstractList {
        ChildListPropertyDescriptor propertyDescriptor;
        ArrayList store = new ArrayList(0);
        private List cursors = null;

        public class Cursor implements Iterator {
            private int position = 0;

            public Cursor() {
            }

            @Override
            public boolean hasNext() {
                return this.position < NodeList.this.store.size();
            }

            @Override
            public Object next() {
                Object obj = NodeList.this.store.get(this.position);
                this.position++;
                return obj;
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }

            public void update(int i10, int i11) {
                int i12 = this.position;
                if (i12 > i10) {
                    this.position = i12 + i11;
                }
            }
        }

        public NodeList(ChildListPropertyDescriptor childListPropertyDescriptor) {
            this.propertyDescriptor = childListPropertyDescriptor;
        }

        private synchronized void updateCursors(int i10, int i11) {
            List list = this.cursors;
            if (list == null) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Cursor) it.next()).update(i10, i11);
            }
        }

        @Override
        public void add(int i10, Object obj) {
            if (obj == null) {
                throw new IllegalArgumentException();
            }
            ASTNode aSTNode = ASTNode.this;
            if ((aSTNode.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode aSTNode2 = (ASTNode) obj;
            ChildListPropertyDescriptor childListPropertyDescriptor = this.propertyDescriptor;
            ASTNode.checkNewChild(aSTNode, aSTNode2, childListPropertyDescriptor.cycleRisk, childListPropertyDescriptor.elementType);
            ASTNode aSTNode3 = ASTNode.this;
            aSTNode3.ast.preAddChildEvent(aSTNode3, aSTNode2, this.propertyDescriptor);
            this.store.add(i10, obj);
            updateCursors(i10, 1);
            aSTNode2.setParent(ASTNode.this, this.propertyDescriptor);
            ASTNode aSTNode4 = ASTNode.this;
            aSTNode4.ast.postAddChildEvent(aSTNode4, aSTNode2, this.propertyDescriptor);
        }

        @Override
        public Object get(int i10) {
            return this.store.get(i10);
        }

        public int listSize() {
            int memSize = memSize();
            Iterator<E> it = iterator();
            while (it.hasNext()) {
                memSize += ((ASTNode) it.next()).treeSize();
            }
            return memSize;
        }

        public int memSize() {
            return (size() * 4) + 64;
        }

        public Cursor newCursor() {
            Cursor cursor;
            synchronized (this) {
                try {
                    if (this.cursors == null) {
                        this.cursors = new ArrayList(1);
                    }
                    cursor = new Cursor();
                    this.cursors.add(cursor);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return cursor;
        }

        public void releaseCursor(Cursor cursor) {
            synchronized (this) {
                try {
                    this.cursors.remove(cursor);
                    if (this.cursors.isEmpty()) {
                        this.cursors = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public Object remove(int i10) {
            if ((ASTNode.this.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode aSTNode = (ASTNode) this.store.get(i10);
            if ((aSTNode.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode aSTNode2 = ASTNode.this;
            aSTNode2.ast.preRemoveChildEvent(aSTNode2, aSTNode, this.propertyDescriptor);
            aSTNode.setParent(null, null);
            Object remove = this.store.remove(i10);
            updateCursors(i10, -1);
            ASTNode aSTNode3 = ASTNode.this;
            aSTNode3.ast.postRemoveChildEvent(aSTNode3, aSTNode, this.propertyDescriptor);
            return remove;
        }

        @Override
        public Object set(int i10, Object obj) {
            if (obj == null) {
                throw new IllegalArgumentException();
            }
            if ((ASTNode.this.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode aSTNode = (ASTNode) obj;
            ASTNode aSTNode2 = (ASTNode) this.store.get(i10);
            if (aSTNode2 == aSTNode) {
                return aSTNode2;
            }
            if ((aSTNode2.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            ASTNode aSTNode3 = ASTNode.this;
            ChildListPropertyDescriptor childListPropertyDescriptor = this.propertyDescriptor;
            ASTNode.checkNewChild(aSTNode3, aSTNode, childListPropertyDescriptor.cycleRisk, childListPropertyDescriptor.elementType);
            ASTNode aSTNode4 = ASTNode.this;
            aSTNode4.ast.preReplaceChildEvent(aSTNode4, aSTNode2, aSTNode, this.propertyDescriptor);
            Object obj2 = this.store.set(i10, aSTNode);
            aSTNode2.setParent(null, null);
            aSTNode.setParent(ASTNode.this, this.propertyDescriptor);
            ASTNode aSTNode5 = ASTNode.this;
            aSTNode5.ast.postReplaceChildEvent(aSTNode5, aSTNode2, aSTNode, this.propertyDescriptor);
            return obj2;
        }

        @Override
        public int size() {
            return this.store.size();
        }
    }

    public ASTNode(AST ast) {
        if (ast == null) {
            throw new IllegalArgumentException();
        }
        this.ast = ast;
        setNodeType(getNodeType0());
        setFlags(ast.getDefaultNodeFlag());
    }

    public static void addProperty(StructuralPropertyDescriptor structuralPropertyDescriptor, List list) {
        if (structuralPropertyDescriptor.getNodeClass() != ((Class) list.get(0))) {
            throw new RuntimeException("Structural property descriptor has wrong node class!");
        }
        list.add(structuralPropertyDescriptor);
    }

    public static void checkNewChild(ASTNode aSTNode, ASTNode aSTNode2, boolean z10, Class cls) {
        if (aSTNode2.ast != aSTNode.ast) {
            throw new IllegalArgumentException();
        }
        if (aSTNode2.getParent() != null) {
            throw new IllegalArgumentException();
        }
        if (z10 && aSTNode2 == aSTNode.getRoot()) {
            throw new IllegalArgumentException();
        }
        Class<?> cls2 = aSTNode2.getClass();
        if (cls == null || cls.isAssignableFrom(cls2)) {
            if ((aSTNode2.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
        } else {
            throw new ClassCastException(((Object) cls2) + " is not an instance of " + ((Object) cls));
        }
    }

    public static ASTNode copySubtree(AST ast, ASTNode aSTNode) {
        if (aSTNode == null) {
            return null;
        }
        if (ast == null) {
            throw new IllegalArgumentException();
        }
        if (ast.apiLevel() == aSTNode.getAST().apiLevel()) {
            return aSTNode.clone(ast);
        }
        throw new UnsupportedOperationException();
    }

    public static List copySubtrees(AST ast, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ASTNode) it.next()).clone(ast));
        }
        return arrayList;
    }

    public static void createPropertyList(Class cls, List list) {
        list.add(cls);
    }

    public static Class nodeClassForType(int i10) {
        switch (i10) {
            case 1:
                return AnonymousClassDeclaration.class;
            case 2:
                return ArrayAccess.class;
            case 3:
                return ArrayCreation.class;
            case 4:
                return ArrayInitializer.class;
            case 5:
                return ArrayType.class;
            case 6:
                return AssertStatement.class;
            case 7:
                return Assignment.class;
            case 8:
                return Block.class;
            case 9:
                return BooleanLiteral.class;
            case 10:
                return BreakStatement.class;
            case 11:
                return CastExpression.class;
            case 12:
                return CatchClause.class;
            case 13:
                return CharacterLiteral.class;
            case 14:
                return ClassInstanceCreation.class;
            case 15:
                return CompilationUnit.class;
            case 16:
                return ConditionalExpression.class;
            case 17:
                return ConstructorInvocation.class;
            case 18:
                return ContinueStatement.class;
            case 19:
                return DoStatement.class;
            case 20:
                return EmptyStatement.class;
            case 21:
                return ExpressionStatement.class;
            case 22:
                return FieldAccess.class;
            case 23:
                return FieldDeclaration.class;
            case 24:
                return ForStatement.class;
            case 25:
                return IfStatement.class;
            case 26:
                return ImportDeclaration.class;
            case 27:
                return InfixExpression.class;
            case 28:
                return Initializer.class;
            case 29:
                return Javadoc.class;
            case 30:
                return LabeledStatement.class;
            case 31:
                return MethodDeclaration.class;
            case 32:
                return MethodInvocation.class;
            case 33:
                return NullLiteral.class;
            case 34:
                return NumberLiteral.class;
            case 35:
                return PackageDeclaration.class;
            case 36:
                return ParenthesizedExpression.class;
            case 37:
                return PostfixExpression.class;
            case 38:
                return PrefixExpression.class;
            case 39:
                return PrimitiveType.class;
            case 40:
                return QualifiedName.class;
            case 41:
                return ReturnStatement.class;
            case 42:
                return SimpleName.class;
            case 43:
                return SimpleType.class;
            case 44:
                return SingleVariableDeclaration.class;
            case 45:
                return StringLiteral.class;
            case 46:
                return SuperConstructorInvocation.class;
            case 47:
                return SuperFieldAccess.class;
            case 48:
                return SuperMethodInvocation.class;
            case 49:
                return SwitchCase.class;
            case 50:
                return SwitchStatement.class;
            case 51:
                return SynchronizedStatement.class;
            case 52:
                return ThisExpression.class;
            case 53:
                return ThrowStatement.class;
            case 54:
                return TryStatement.class;
            case 55:
                return TypeDeclaration.class;
            case 56:
                return TypeDeclarationStatement.class;
            case 57:
                return TypeLiteral.class;
            case 58:
                return VariableDeclarationExpression.class;
            case 59:
                return VariableDeclarationFragment.class;
            case 60:
                return VariableDeclarationStatement.class;
            case 61:
                return WhileStatement.class;
            case 62:
                return InstanceofExpression.class;
            case 63:
                return LineComment.class;
            case 64:
                return BlockComment.class;
            case 65:
                return TagElement.class;
            case 66:
                return TextElement.class;
            case 67:
                return MemberRef.class;
            case 68:
                return MethodRef.class;
            case 69:
                return MethodRefParameter.class;
            case 70:
                return EnhancedForStatement.class;
            case 71:
                return EnumDeclaration.class;
            case 72:
                return EnumConstantDeclaration.class;
            case 73:
                return TypeParameter.class;
            case 74:
                return ParameterizedType.class;
            case 75:
                return QualifiedType.class;
            case 76:
                return WildcardType.class;
            case 77:
                return NormalAnnotation.class;
            case 78:
                return MarkerAnnotation.class;
            case 79:
                return SingleMemberAnnotation.class;
            case 80:
                return MemberValuePair.class;
            case 81:
                return AnnotationTypeDeclaration.class;
            case 82:
                return AnnotationTypeMemberDeclaration.class;
            case 83:
                return Modifier.class;
            case 84:
                return UnionType.class;
            case 85:
                return Dimension.class;
            case 86:
                return LambdaExpression.class;
            case 87:
                return IntersectionType.class;
            case 88:
                return NameQualifiedType.class;
            case 89:
                return CreationReference.class;
            case 90:
                return ExpressionMethodReference.class;
            case 91:
                return SuperMethodReference.class;
            case 92:
                return TypeMethodReference.class;
            case 93:
                return ModuleDeclaration.class;
            case 94:
                return RequiresDirective.class;
            case 95:
                return ExportsDirective.class;
            case 96:
                return OpensDirective.class;
            case 97:
                return UsesDirective.class;
            case 98:
                return ProvidesDirective.class;
            case 99:
                return ModuleModifier.class;
            case 100:
                return SwitchExpression.class;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static List reapPropertyList(List list) {
        list.remove(0);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        return Collections.unmodifiableList(arrayList);
    }

    private void setNodeType(int i10) {
        this.typeAndFlags = (i10 << 16) | (this.typeAndFlags & (-65536));
    }

    public static int stringSize(String str) {
        if (str != null) {
            return (str.length() * 2) + 40;
        }
        return 0;
    }

    public final void accept(ASTVisitor aSTVisitor) {
        if (aSTVisitor == null) {
            throw new IllegalArgumentException();
        }
        if (aSTVisitor.preVisit2(this)) {
            accept0(aSTVisitor);
        }
        aSTVisitor.postVisit(this);
    }

    public abstract void accept0(ASTVisitor aSTVisitor);

    public final void acceptChild(ASTVisitor aSTVisitor, ASTNode aSTNode) {
        if (aSTNode == null) {
            return;
        }
        aSTNode.accept(aSTVisitor);
    }

    public final void acceptChildren(ASTVisitor aSTVisitor, NodeList nodeList) {
        NodeList.Cursor newCursor = nodeList.newCursor();
        while (newCursor.hasNext()) {
            try {
                ((ASTNode) newCursor.next()).accept(aSTVisitor);
            } finally {
                nodeList.releaseCursor(newCursor);
            }
        }
    }

    public void appendDebugString(StringBuffer stringBuffer) {
        appendPrintString(stringBuffer);
    }

    public final void appendPrintString(StringBuffer stringBuffer) {
        NaiveASTFlattener naiveASTFlattener = new NaiveASTFlattener();
        accept(naiveASTFlattener);
        stringBuffer.append(naiveASTFlattener.getResult());
    }

    public final void checkModifiable() {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        this.ast.modifying();
    }

    public final ASTNode clone(AST ast) {
        this.ast.preCloneNodeEvent(this);
        ASTNode clone0 = clone0(ast);
        this.ast.postCloneNodeEvent(this, clone0);
        return clone0;
    }

    public abstract ASTNode clone0(AST ast);

    public final void delete() {
        StructuralPropertyDescriptor locationInParent = getLocationInParent();
        if (locationInParent == null) {
            return;
        }
        if (locationInParent.isChildProperty()) {
            getParent().setStructuralProperty(this.location, null);
        } else if (locationInParent.isChildListProperty()) {
            ((List) getParent().getStructuralProperty(this.location)).remove(this);
        }
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final AST getAST() {
        return this.ast;
    }

    public final int getFlags() {
        return this.typeAndFlags & 65535;
    }

    public final int getLength() {
        return this.length;
    }

    public final StructuralPropertyDescriptor getLocationInParent() {
        return this.location;
    }

    public final int getNodeType() {
        return this.typeAndFlags >>> 16;
    }

    public abstract int getNodeType0();

    public final ASTNode getParent() {
        return this.parent;
    }

    public final Object getProperty(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Object obj = this.property1;
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof String)) {
            return ((Map) obj).get(str);
        }
        if (str.equals(obj)) {
            return this.property2;
        }
        return null;
    }

    public final ASTNode getRoot() {
        ASTNode aSTNode = this;
        while (true) {
            ASTNode parent = aSTNode.getParent();
            if (parent == null) {
                return aSTNode;
            }
            aSTNode = parent;
        }
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final Object getStructuralProperty(StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor instanceof SimplePropertyDescriptor) {
            SimplePropertyDescriptor simplePropertyDescriptor = (SimplePropertyDescriptor) structuralPropertyDescriptor;
            return simplePropertyDescriptor.getValueType() == Integer.TYPE ? Integer.valueOf(internalGetSetIntProperty(simplePropertyDescriptor, true, 0)) : simplePropertyDescriptor.getValueType() == Boolean.TYPE ? Boolean.valueOf(internalGetSetBooleanProperty(simplePropertyDescriptor, true, false)) : internalGetSetObjectProperty(simplePropertyDescriptor, true, null);
        }
        if (structuralPropertyDescriptor instanceof ChildPropertyDescriptor) {
            return internalGetSetChildProperty((ChildPropertyDescriptor) structuralPropertyDescriptor, true, null);
        }
        if (structuralPropertyDescriptor instanceof ChildListPropertyDescriptor) {
            return internalGetChildListProperty((ChildListPropertyDescriptor) structuralPropertyDescriptor);
        }
        throw new IllegalArgumentException();
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        throw new RuntimeException("Node does not have this property");
    }

    public boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        throw new RuntimeException("Node does not have this property");
    }

    public ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        throw new RuntimeException("Node does not have this property");
    }

    public int internalGetSetIntProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, int i10) {
        throw new RuntimeException("Node does not have this property");
    }

    public Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        throw new RuntimeException("Node does not have this property");
    }

    public abstract List internalStructuralPropertiesForType(int i10);

    public abstract int memSize();

    public final void postLazyInit(ASTNode aSTNode, ChildPropertyDescriptor childPropertyDescriptor) {
        aSTNode.setParent(this, childPropertyDescriptor);
        this.ast.reenableEvents();
    }

    public final void postReplaceChild(ASTNode aSTNode, ASTNode aSTNode2, ChildPropertyDescriptor childPropertyDescriptor) {
        if (aSTNode2 == null) {
            this.ast.postRemoveChildEvent(this, aSTNode, childPropertyDescriptor);
        } else if (aSTNode != null) {
            this.ast.postReplaceChildEvent(this, aSTNode, aSTNode2, childPropertyDescriptor);
        } else {
            this.ast.postAddChildEvent(this, aSTNode2, childPropertyDescriptor);
        }
    }

    public final void postValueChange(SimplePropertyDescriptor simplePropertyDescriptor) {
        this.ast.postValueChangeEvent(this, simplePropertyDescriptor);
    }

    public final void preLazyInit() {
        this.ast.disableEvents();
    }

    public final void preReplaceChild(ASTNode aSTNode, ASTNode aSTNode2, ChildPropertyDescriptor childPropertyDescriptor) {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        if (aSTNode2 != null) {
            checkNewChild(this, aSTNode2, childPropertyDescriptor.cycleRisk, null);
        }
        if (aSTNode != null) {
            if ((aSTNode.typeAndFlags & 4) != 0) {
                throw new IllegalArgumentException("AST node cannot be modified");
            }
            if (aSTNode2 != null) {
                this.ast.preReplaceChildEvent(this, aSTNode, aSTNode2, childPropertyDescriptor);
            } else {
                this.ast.preRemoveChildEvent(this, aSTNode, childPropertyDescriptor);
            }
            aSTNode.setParent(null, null);
        } else if (aSTNode2 != null) {
            this.ast.preAddChildEvent(this, aSTNode2, childPropertyDescriptor);
        }
        if (aSTNode2 != null) {
            aSTNode2.setParent(this, childPropertyDescriptor);
        }
    }

    public final void preValueChange(SimplePropertyDescriptor simplePropertyDescriptor) {
        if ((this.typeAndFlags & 4) != 0) {
            throw new IllegalArgumentException("AST node cannot be modified");
        }
        this.ast.preValueChangeEvent(this, simplePropertyDescriptor);
        this.ast.modifying();
    }

    public final Map properties() {
        Object obj = this.property1;
        if (obj == null) {
            return UNMODIFIABLE_EMPTY_MAP;
        }
        if (obj instanceof String) {
            return Collections.singletonMap(obj, this.property2);
        }
        if (this.property2 == null) {
            this.property2 = Collections.unmodifiableMap((Map) obj);
        }
        return (Map) this.property2;
    }

    public final void setFlags(int i10) {
        this.ast.modifying();
        this.typeAndFlags = (i10 & 65535) | (this.typeAndFlags & (-65536));
    }

    public final void setParent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        this.ast.modifying();
        this.parent = aSTNode;
        this.location = structuralPropertyDescriptor;
    }

    public final void setProperty(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Object obj2 = this.property1;
        if (obj2 == null) {
            if (obj == null) {
                return;
            }
            this.property1 = str;
            this.property2 = obj;
            return;
        }
        if (!(obj2 instanceof String)) {
            Map map = (Map) obj2;
            if (obj != null) {
                map.put(str, obj);
                return;
            }
            map.remove(str);
            if (map.size() == 1) {
                Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[1]);
                this.property1 = entryArr[0].getKey();
                this.property2 = entryArr[0].getValue();
                return;
            }
            return;
        }
        if (str.equals(obj2)) {
            if (obj != null) {
                this.property2 = obj;
                return;
            } else {
                this.property1 = null;
                this.property2 = null;
                return;
            }
        }
        if (obj == null) {
            return;
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put(this.property1, this.property2);
        hashMap.put(str, obj);
        this.property1 = hashMap;
        this.property2 = null;
    }

    public final void setSourceRange(int i10, int i11) {
        if (i10 >= 0 && i11 < 0) {
            throw new IllegalArgumentException();
        }
        if (i10 < 0 && i11 != 0) {
            throw new IllegalArgumentException();
        }
        checkModifiable();
        this.startPosition = i10;
        this.length = i11;
    }

    public final void setStructuralProperty(StructuralPropertyDescriptor structuralPropertyDescriptor, Object obj) {
        if (!(structuralPropertyDescriptor instanceof SimplePropertyDescriptor)) {
            if (!(structuralPropertyDescriptor instanceof ChildPropertyDescriptor)) {
                if (structuralPropertyDescriptor instanceof ChildListPropertyDescriptor) {
                    throw new IllegalArgumentException("Cannot set the list of child list property");
                }
                return;
            }
            ChildPropertyDescriptor childPropertyDescriptor = (ChildPropertyDescriptor) structuralPropertyDescriptor;
            ASTNode aSTNode = (ASTNode) obj;
            if (aSTNode == null && childPropertyDescriptor.isMandatory()) {
                throw new IllegalArgumentException();
            }
            internalGetSetChildProperty(childPropertyDescriptor, false, aSTNode);
            return;
        }
        SimplePropertyDescriptor simplePropertyDescriptor = (SimplePropertyDescriptor) structuralPropertyDescriptor;
        if (simplePropertyDescriptor.getValueType() == Integer.TYPE) {
            internalGetSetIntProperty(simplePropertyDescriptor, false, ((Integer) obj).intValue());
            return;
        }
        if (simplePropertyDescriptor.getValueType() == Boolean.TYPE) {
            internalGetSetBooleanProperty(simplePropertyDescriptor, false, ((Boolean) obj).booleanValue());
        } else {
            if (obj == null && simplePropertyDescriptor.isMandatory()) {
                throw new IllegalArgumentException();
            }
            internalGetSetObjectProperty(simplePropertyDescriptor, false, obj);
        }
    }

    public final String standardToString() {
        return super.toString();
    }

    public final List structuralPropertiesForType() {
        return internalStructuralPropertiesForType(this.ast.apiLevel);
    }

    public final int subtreeBytes() {
        return treeSize();
    }

    public final boolean subtreeMatch(ASTMatcher aSTMatcher, Object obj) {
        return subtreeMatch0(aSTMatcher, obj);
    }

    public abstract boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj);

    public final void supportedOnlyIn2() {
        if (this.ast.apiLevel != 2) {
            throw new UnsupportedOperationException("Operation only supported in JLS2 AST");
        }
    }

    public final void supportedOnlyIn2_3_4() {
        if (this.ast.apiLevel >= 8) {
            throw new UnsupportedOperationException("Operation only supported in JLS2, JLS3 and JLS4 ASTs");
        }
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int length = stringBuffer.length();
        try {
            appendDebugString(stringBuffer);
        } catch (RuntimeException unused) {
            stringBuffer.setLength(length);
            stringBuffer.append("!");
            stringBuffer.append(standardToString());
        }
        return stringBuffer.toString();
    }

    public abstract int treeSize();

    public final void unsupportedBelow10() {
        if (this.ast.apiLevel < 10) {
            throw new UnsupportedOperationException("Operation only supported in ASTs with level JLS10 and above");
        }
    }

    public final void unsupportedBelow11() {
        if (this.ast.apiLevel < 11) {
            throw new UnsupportedOperationException("Operation only supported in ASTs with level JLS11 and above");
        }
    }

    public final void unsupportedBelow12() {
        if (this.ast.apiLevel < 12) {
            throw new UnsupportedOperationException("Operation only supported in ASTs with level JLS12 and above");
        }
    }

    public final void unsupportedBelow9() {
        if (this.ast.apiLevel < 9) {
            throw new UnsupportedOperationException("Operation only supported in JLS9 and later AST");
        }
    }

    public final void unsupportedIn2() {
        if (this.ast.apiLevel == 2) {
            throw new UnsupportedOperationException("Operation not supported in JLS2 AST");
        }
    }

    public final void unsupportedIn2_3() {
        if (this.ast.apiLevel <= 3) {
            throw new UnsupportedOperationException("Operation only supported in JLS4 and later AST");
        }
    }

    public final void unsupportedIn2_3_4() {
        if (this.ast.apiLevel < 8) {
            throw new UnsupportedOperationException("Operation only supported in JLS8 and later AST");
        }
    }
}
