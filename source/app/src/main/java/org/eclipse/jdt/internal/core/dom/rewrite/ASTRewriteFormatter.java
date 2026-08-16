package org.eclipse.jdt.internal.core.dom.rewrite;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.Position;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public final class ASTRewriteFormatter {
    private final RewriteEventStore eventStore;
    private final int indentWidth;
    private final String lineDelimiter;
    private final Map options;
    private final NodeInfoStore placeholders;
    private final int tabWidth;
    public static final Prefix NONE = new ConstPrefix("");
    public static final Prefix SPACE = new ConstPrefix(" ");
    public static final Prefix ASSERT_COMMENT = new ConstPrefix(" : ");
    public final Prefix VAR_INITIALIZER = new FormattingPrefix("A a={};", "a={", 2);
    public final Prefix METHOD_BODY = new FormattingPrefix("void a() {}", ") {", 4);
    public final Prefix FINALLY_BLOCK = new FormattingPrefix("try {} finally {}", "} finally {", 2);
    public final Prefix CATCH_BLOCK = new FormattingPrefix("try {} catch(Exception e) {}", "} c", 2);
    public final Prefix ANNOT_MEMBER_DEFAULT = new FormattingPrefix("String value() default 1;", ") default 1", 4);
    public final Prefix ENUM_BODY_START = new FormattingPrefix("enum E { A(){void foo(){}} }", "){v", 8);
    public final Prefix ENUM_BODY_END = new FormattingPrefix("enum E { A(){void foo(){ }}, B}", "}},", 8);
    public final Prefix WILDCARD_EXTENDS = new FormattingPrefix("A<? extends B> a;", "? extends B", 4);
    public final Prefix WILDCARD_SUPER = new FormattingPrefix("A<? super B> a;", "? super B", 4);
    public final Prefix FIRST_ENUM_CONST = new FormattingPrefix("enum E { X;}", "{ X", 8);
    public final Prefix ANNOTATION_SEPARATION = new FormattingPrefix("@A @B class C {}", "A @", 8);
    public final Prefix PARAM_ANNOTATION_SEPARATION = new FormattingPrefix("void foo(@A @B C p) { }", "A @", 4);
    public final Prefix LOCAL_ANNOTATION_SEPARATION = new FormattingPrefix("@A @B C p;", "A @", 2);
    public final Prefix TYPE_ANNOTATION_SEPARATION = new FormattingPrefix("C<@A @B D> l;", "A @", 2);
    public final Prefix VARARGS = new FormattingPrefix("void foo(A ... a) { }", "A .", 4);
    public final Prefix TRY_RESOURCES = new FormattingPrefix("try (A a = new A(); B b = new B()) {}", "; B", 2);
    public final Prefix TRY_RESOURCES_PAREN = new FormattingPrefix("try (A a = new A(); B b = new B()) {}", "y (", 2);
    public final BlockContext IF_BLOCK_WITH_ELSE = new BlockFormattingPrefixSuffix("if (true)", "else{}", 8);
    public final BlockContext IF_BLOCK_NO_ELSE = new BlockFormattingPrefix("if (true)", 8);
    public final BlockContext ELSE_AFTER_STATEMENT = new BlockFormattingPrefix("if (true) foo();else ", 15);
    public final BlockContext ELSE_AFTER_BLOCK = new BlockFormattingPrefix("if (true) {}else ", 11);
    public final Prefix CASE_SEPARATION = new FormattingPrefix("case A, B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, 1);
    public final BlockContext FOR_BLOCK = new BlockFormattingPrefix("for (;;) ", 7);
    public final BlockContext WHILE_BLOCK = new BlockFormattingPrefix("while (true)", 11);
    public final BlockContext DO_BLOCK = new BlockFormattingPrefixSuffix("do ", "while (true);", 1);

    public interface BlockContext {
        String[] getPrefixAndSuffix(int i10, ASTNode aSTNode, RewriteEventStore rewriteEventStore);
    }

    public class BlockFormattingPrefix implements BlockContext {
        private String prefix;
        private int start;

        public BlockFormattingPrefix(String str, int i10) {
            this.start = i10;
            this.prefix = str;
        }

        @Override
        public String[] getPrefixAndSuffix(int i10, ASTNode aSTNode, RewriteEventStore rewriteEventStore) {
            String str = String.valueOf(this.prefix) + ASTRewriteFlattener.asString(aSTNode, rewriteEventStore);
            Position position = new Position(this.start, (this.prefix.length() + 1) - this.start);
            TextEdit formatString = ASTRewriteFormatter.this.formatString(2, str, 0, str.length(), i10);
            if (formatString != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, formatString, new Position[]{position});
            }
            return new String[]{str.substring(position.offset + 1, (position.offset + position.length) - 1), ""};
        }
    }

    public class BlockFormattingPrefixSuffix implements BlockContext {
        private String prefix;
        private int start;
        private String suffix;

        public BlockFormattingPrefixSuffix(String str, String str2, int i10) {
            this.start = i10;
            this.suffix = str2;
            this.prefix = str;
        }

        @Override
        public String[] getPrefixAndSuffix(int i10, ASTNode aSTNode, RewriteEventStore rewriteEventStore) {
            String asString = ASTRewriteFlattener.asString(aSTNode, rewriteEventStore);
            int length = this.prefix.length();
            int length2 = (asString.length() + length) - 1;
            String str = String.valueOf(this.prefix) + asString + this.suffix;
            int i11 = this.start;
            Position position = new Position(i11, (length + 1) - i11);
            Position position2 = new Position(length2, 2);
            TextEdit formatString = ASTRewriteFormatter.this.formatString(2, str, 0, str.length(), i10);
            if (formatString != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, formatString, new Position[]{position, position2});
            }
            return new String[]{str.substring(position.offset + 1, (position.offset + position.length) - 1), str.substring(position2.offset + 1, (position2.offset + position2.length) - 1)};
        }
    }

    public static class ConstPrefix implements Prefix {
        private String prefix;

        public ConstPrefix(String str) {
            this.prefix = str;
        }

        @Override
        public String getPrefix(int i10) {
            return this.prefix;
        }
    }

    public class ExtendedFlattener extends ASTRewriteFlattener {
        private ArrayList positions;

        public ExtendedFlattener(RewriteEventStore rewriteEventStore) {
            super(rewriteEventStore);
            this.positions = new ArrayList();
        }

        private NodeMarker addMarker(Object obj, int i10, int i11) {
            NodeMarker nodeMarker = new NodeMarker();
            nodeMarker.offset = i10;
            nodeMarker.length = i11;
            nodeMarker.data = obj;
            this.positions.add(nodeMarker);
            return nodeMarker;
        }

        private void fixupLength(Object obj, int i10) {
            for (int size = this.positions.size() - 1; size >= 0; size--) {
                NodeMarker nodeMarker = (NodeMarker) this.positions.get(size);
                if (nodeMarker.data == obj) {
                    nodeMarker.length = i10 - nodeMarker.offset;
                    return;
                }
            }
        }

        public NodeMarker[] getMarkers() {
            ArrayList arrayList = this.positions;
            return (NodeMarker[]) arrayList.toArray(new NodeMarker[arrayList.size()]);
        }

        @Override
        public void postVisit(ASTNode aSTNode) {
            Object placeholderData = ASTRewriteFormatter.this.getPlaceholders().getPlaceholderData(aSTNode);
            if (placeholderData != null) {
                fixupLength(placeholderData, this.result.length());
            }
            TextEditGroup trackedNodeData = ASTRewriteFormatter.this.getEventStore().getTrackedNodeData(aSTNode);
            if (trackedNodeData != null) {
                fixupLength(trackedNodeData, this.result.length());
            }
        }

        @Override
        public void preVisit(ASTNode aSTNode) {
            TextEditGroup trackedNodeData = ASTRewriteFormatter.this.getEventStore().getTrackedNodeData(aSTNode);
            if (trackedNodeData != null) {
                addMarker(trackedNodeData, this.result.length(), 0);
            }
            Object placeholderData = ASTRewriteFormatter.this.getPlaceholders().getPlaceholderData(aSTNode);
            if (placeholderData != null) {
                addMarker(placeholderData, this.result.length(), 0);
            }
        }

        @Override
        public boolean visit(Block block) {
            if (!ASTRewriteFormatter.this.getPlaceholders().isCollapsed(block)) {
                return super.visit(block);
            }
            visitList(block, Block.STATEMENTS_PROPERTY, null);
            return false;
        }
    }

    public class FormattingPrefix implements Prefix {
        private int kind;
        private int length;
        private int start;
        private String string;

        public FormattingPrefix(String str, String str2, int i10) {
            this.start = str.indexOf(str2);
            this.length = str2.length();
            this.string = str;
            this.kind = i10;
        }

        @Override
        public String getPrefix(int i10) {
            Position position = new Position(this.start, this.length);
            String str = this.string;
            TextEdit formatString = ASTRewriteFormatter.this.formatString(this.kind, str, 0, str.length(), i10);
            if (formatString != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, formatString, new Position[]{position});
            }
            return str.substring(position.offset + 1, (position.offset + position.length) - 1);
        }
    }

    public static class NodeMarker extends Position {
        public Object data;
    }

    public interface Prefix {
        String getPrefix(int i10);
    }

    public ASTRewriteFormatter(NodeInfoStore nodeInfoStore, RewriteEventStore rewriteEventStore, Map map, String str) {
        this.placeholders = nodeInfoStore;
        this.eventStore = rewriteEventStore;
        Map options = map == null ? JavaCore.getOptions() : new HashMap(map);
        this.options = options;
        options.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_RESOURCES_IN_TRY, DefaultCodeFormatterConstants.createAlignmentValue(true, 5, 0));
        this.lineDelimiter = str;
        this.tabWidth = IndentManipulation.getTabWidth(map);
        this.indentWidth = IndentManipulation.getIndentWidth(map);
    }

    private static Document createDocument(String str, Position[] positionArr) throws IllegalArgumentException {
        String str2 = "myCategory";
        Document document = new Document(str);
        if (positionArr != null) {
            try {
                document.addPositionCategory("myCategory");
                document.addPositionUpdater(new DefaultPositionUpdater(str2) {
                    public boolean notDeleted() {
                        int i10 = this.fOffset;
                        int i11 = this.fLength + i10;
                        if (i10 >= this.fPosition.offset || this.fPosition.offset + this.fPosition.length >= i11) {
                            return true;
                        }
                        this.fPosition.offset = i11;
                        return false;
                    }
                });
                for (int i10 = 0; i10 < positionArr.length; i10++) {
                    try {
                        document.addPosition("myCategory", positionArr[i10]);
                    } catch (BadLocationException e10) {
                        throw new IllegalArgumentException("Position outside of string. offset: " + positionArr[i10].offset + ", length: " + positionArr[i10].length + ", string size: " + str.length(), e10);
                    }
                }
            } catch (BadPositionCategoryException unused) {
            }
        }
        return document;
    }

    public static String evaluateFormatterEdit(String str, TextEdit textEdit, Position[] positionArr) {
        try {
            Document createDocument = createDocument(str, positionArr);
            textEdit.apply(createDocument, 0);
            if (positionArr != null) {
                for (Position position : positionArr) {
                    Assert.isTrue(!position.isDeleted, "Position got deleted");
                }
            }
            return createDocument.get();
        } catch (BadLocationException e10) {
            Assert.isTrue(false, "Fromatter created edits with wrong positions: " + e10.getMessage());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0045. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TextEdit formatNode(ASTNode aSTNode, String str, int i10) {
        String str2;
        int i11;
        int i12 = 2;
        String str3 = "";
        if (aSTNode instanceof Statement) {
            if (aSTNode.getNodeType() == 49) {
                str3 = "switch(1) {";
                str2 = VectorFormat.DEFAULT_SUFFIX;
                i11 = 2;
                TextEdit formatString = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                return str3.length() <= 0 ? shifEdit(formatString, str3.length()) : formatString;
            }
            i11 = i12;
        } else {
            if (!(aSTNode instanceof Expression) || aSTNode.getNodeType() == 58) {
                if (aSTNode instanceof BodyDeclaration) {
                    str2 = "";
                } else {
                    switch (aSTNode.getNodeType()) {
                        case 1:
                            str3 = "new A()";
                            i11 = 2;
                            str2 = ";";
                            TextEdit formatString2 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 5:
                        case 39:
                        case 43:
                        case 74:
                        case 75:
                            str3 = "void m(final ";
                            str2 = " x);";
                            break;
                        case 12:
                            i11 = 2;
                            str3 = "try {}";
                            str2 = "";
                            TextEdit formatString22 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 15:
                            str2 = "";
                            i11 = 8;
                            TextEdit formatString222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 26:
                        case 29:
                        case 35:
                            break;
                        case 44:
                            str3 = "void m(";
                            str2 = ");";
                            break;
                        case 58:
                            i11 = 2;
                            str2 = ";";
                            TextEdit formatString2222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 59:
                            str3 = "A ";
                            i11 = 2;
                            str2 = ";";
                            TextEdit formatString22222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 73:
                            str3 = "class X<";
                            str2 = "> {}";
                            i11 = 8;
                            TextEdit formatString222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 76:
                            str3 = "A<";
                            str2 = "> x;";
                            break;
                        case 80:
                            str3 = "@Author(";
                            str2 = ") class x {}";
                            i11 = 8;
                            TextEdit formatString2222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 83:
                            str2 = " class x {}";
                            i11 = 8;
                            TextEdit formatString22222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                            if (str3.length() <= 0) {
                            }
                            break;
                        case 93:
                        case 99:
                            i11 = 128;
                            break;
                        default:
                            return null;
                    }
                }
                i11 = 4;
                TextEdit formatString222222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
                if (str3.length() <= 0) {
                }
            } else if (!(aSTNode instanceof Annotation)) {
                i12 = 1;
                i11 = i12;
            }
            str2 = "\nclass A {}";
            i11 = 8;
            TextEdit formatString2222222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
            if (str3.length() <= 0) {
            }
        }
        str2 = "";
        TextEdit formatString22222222222 = formatString(i11, str3 + str + str2, str3.length(), str.length(), i10);
        if (str3.length() <= 0) {
        }
    }

    private static TextEdit shifEdit(TextEdit textEdit, int i10) {
        throw null;
    }

    public String changeIndent(String str, int i10, String str2) {
        return IndentManipulation.changeIndent(str, i10, this.tabWidth, this.indentWidth, str2, this.lineDelimiter);
    }

    public int computeIndentUnits(String str) {
        return IndentManipulation.measureIndentUnits(str, this.tabWidth, this.indentWidth);
    }

    public String createIndentString(int i10) {
        return ToolFactory.createCodeFormatter(this.options).createIndentationString(i10);
    }

    public TextEdit formatString(int i10, String str, int i11, int i12, int i13) {
        return ToolFactory.createCodeFormatter(this.options).format(i10, str, i11, i12, i13, this.lineDelimiter);
    }

    public RewriteEventStore getEventStore() {
        return this.eventStore;
    }

    public String getFormattedResult(ASTNode aSTNode, int i10, Collection collection) {
        ExtendedFlattener extendedFlattener = new ExtendedFlattener(this.eventStore);
        aSTNode.accept(extendedFlattener);
        NodeMarker[] markers = extendedFlattener.getMarkers();
        for (NodeMarker nodeMarker : markers) {
            collection.add(nodeMarker);
        }
        String result = extendedFlattener.getResult();
        TextEdit formatNode = formatNode(aSTNode, result, i10);
        if (formatNode == null) {
            if (i10 <= 0) {
                return result;
            }
            String createIndentString = createIndentString(i10);
            ReplaceEdit[] changeIndentEdits = IndentManipulation.getChangeIndentEdits(result, 0, this.tabWidth, this.indentWidth, createIndentString);
            TextEdit multiTextEdit = new MultiTextEdit();
            multiTextEdit.addChild(new InsertEdit(0, createIndentString));
            multiTextEdit.addChildren(changeIndentEdits);
            formatNode = multiTextEdit;
        }
        return evaluateFormatterEdit(result, formatNode, markers);
    }

    public String getIndentString(String str) {
        return IndentManipulation.extractIndentString(str, this.tabWidth, this.indentWidth);
    }

    public int getIndentWidth() {
        return this.indentWidth;
    }

    public String getLineDelimiter() {
        return this.lineDelimiter;
    }

    public NodeInfoStore getPlaceholders() {
        return this.placeholders;
    }

    public int getTabWidth() {
        return this.tabWidth;
    }
}
