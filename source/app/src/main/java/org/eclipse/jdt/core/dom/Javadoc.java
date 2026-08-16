package org.eclipse.jdt.core.dom;

import android.provider.MediaStore;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class Javadoc extends Comment {
    public static final SimplePropertyDescriptor COMMENT_PROPERTY;
    private static final String MINIMAL_DOC_COMMENT = "/** */";
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildListPropertyDescriptor TAGS_PROPERTY;
    private String comment;
    private ASTNode.NodeList tags;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(Javadoc.class, "comment", String.class, true);
        COMMENT_PROPERTY = simplePropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(Javadoc.class, MediaStore.Video.VideoColumns.TAGS, TagElement.class, true);
        TAGS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(Javadoc.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(2);
        ASTNode.createPropertyList(Javadoc.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public Javadoc(AST ast) {
        super(ast);
        this.comment = MINIMAL_DOC_COMMENT;
        this.tags = new ASTNode.NodeList(TAGS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.tags);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        Javadoc javadoc = new Javadoc(ast);
        javadoc.setSourceRange(getStartPosition(), getLength());
        if (this.ast.apiLevel == 2) {
            javadoc.setComment(getComment());
        }
        javadoc.tags().addAll(ASTNode.copySubtrees(ast, tags()));
        return javadoc;
    }

    public String getComment() {
        supportedOnlyIn2();
        return this.comment;
    }

    @Override
    public final int getNodeType0() {
        return 29;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == TAGS_PROPERTY ? tags() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != COMMENT_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getComment();
        }
        setComment((String) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        int memSize = super.memSize() + 8;
        String str = this.comment;
        return str != MINIMAL_DOC_COMMENT ? memSize + ASTNode.stringSize(str) : memSize;
    }

    public void setComment(String str) {
        supportedOnlyIn2();
        if (str == null) {
            throw new IllegalArgumentException();
        }
        char[] charArray = str.toCharArray();
        Scanner scanner = this.ast.scanner;
        scanner.resetTo(0, charArray.length);
        scanner.setSource(charArray);
        while (true) {
            boolean z10 = false;
            while (true) {
                try {
                    int nextToken = scanner.getNextToken();
                    if (nextToken == 61) {
                        if (!z10) {
                            throw new IllegalArgumentException();
                        }
                        SimplePropertyDescriptor simplePropertyDescriptor = COMMENT_PROPERTY;
                        preValueChange(simplePropertyDescriptor);
                        this.comment = str;
                        postValueChange(simplePropertyDescriptor);
                        return;
                    }
                    if (nextToken != 1003) {
                        break;
                    } else {
                        if (z10) {
                            throw new IllegalArgumentException();
                        }
                        z10 = true;
                    }
                } catch (InvalidInputException e10) {
                    throw new IllegalArgumentException(e10);
                }
            }
        }
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    public List tags() {
        return this.tags;
    }

    @Override
    public int treeSize() {
        return memSize() + this.tags.listSize();
    }
}
