package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public final class TagElement extends ASTNode implements IDocElement {
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final String TAG_API_NOTE = "@apiNote";
    public static final String TAG_AUTHOR = "@author";
    public static final String TAG_CODE = "@code";
    public static final String TAG_DEPRECATED = "@deprecated";
    public static final String TAG_DOCROOT = "@docRoot";
    public static final String TAG_EXCEPTION = "@exception";
    public static final String TAG_HIDDEN = "@hidden";
    public static final String TAG_IMPL_NOTE = "@implNote";
    public static final String TAG_IMPL_SPEC = "@implSpec";
    public static final String TAG_INDEX = "@index";
    public static final String TAG_INHERITDOC = "@inheritDoc";
    public static final String TAG_LINK = "@link";
    public static final String TAG_LINKPLAIN = "@linkplain";
    public static final String TAG_LITERAL = "@literal";
    public static final SimplePropertyDescriptor TAG_NAME_PROPERTY;
    public static final String TAG_PARAM = "@param";
    public static final String TAG_PROVIDES = "@provides";
    public static final String TAG_RETURN = "@return";
    public static final String TAG_SEE = "@see";
    public static final String TAG_SERIAL = "@serial";
    public static final String TAG_SERIALDATA = "@serialData";
    public static final String TAG_SERIALFIELD = "@serialField";
    public static final String TAG_SINCE = "@since";
    public static final String TAG_SUMMARY = "@summary";
    public static final String TAG_THROWS = "@throws";
    public static final String TAG_USES = "@uses";
    public static final String TAG_VALUE = "@value";
    public static final String TAG_VERSION = "@version";
    private ASTNode.NodeList fragments;
    private String optionalTagName;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(TagElement.class, "tagName", String.class, false);
        TAG_NAME_PROPERTY = simplePropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(TagElement.class, "fragments", IDocElement.class, true);
        FRAGMENTS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(TagElement.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public TagElement(AST ast) {
        super(ast);
        this.optionalTagName = null;
        this.fragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.fragments);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TagElement tagElement = new TagElement(ast);
        tagElement.setSourceRange(getStartPosition(), getLength());
        tagElement.setTagName(getTagName());
        tagElement.fragments().addAll(ASTNode.copySubtrees(ast, fragments()));
        return tagElement;
    }

    public List fragments() {
        return this.fragments;
    }

    @Override
    public final int getNodeType0() {
        return 65;
    }

    public String getTagName() {
        return this.optionalTagName;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == FRAGMENTS_PROPERTY ? fragments() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != TAG_NAME_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getTagName();
        }
        setTagName((String) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    public boolean isNested() {
        return getParent() instanceof TagElement;
    }

    @Override
    public int memSize() {
        return ASTNode.stringSize(this.optionalTagName) + 48;
    }

    public void setTagName(String str) {
        SimplePropertyDescriptor simplePropertyDescriptor = TAG_NAME_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.optionalTagName = str;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.fragments.listSize();
    }
}
