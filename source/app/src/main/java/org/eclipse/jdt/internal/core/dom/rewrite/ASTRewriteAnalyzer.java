package org.eclipse.jdt.internal.core.dom.rewrite;

import b3.s;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import okhttp3.v;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotatableType;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.CreationReference;
import org.eclipse.jdt.core.dom.Dimension;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExportsDirective;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionMethodReference;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.IntersectionType;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.NameQualifiedType;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.ProvidesDirective;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.RequiresDirective;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SuperMethodReference;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchExpression;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeMethodReference;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.UsesDirective;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFormatter;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;
import w2.C15883c;

public final class ASTRewriteAnalyzer extends ASTVisitor {
    private static final int JLS12_INTERNAL = 12;
    private static final int JLS2_INTERNAL = 2;
    private static final int JLS3_INTERNAL = 3;
    private static final int JLS4_INTERNAL = 4;
    private static final int JLS8_INTERNAL = 8;
    private static final int JLS9_INTERNAL = 9;
    private final char[] content;
    TextEdit currentEdit;
    final RewriteEventStore eventStore;
    private final TargetSourceRangeComputer extendedSourceRangeComputer;
    private final ASTRewriteFormatter formatter;
    private final LineCommentEndOffsets lineCommentEndOffsets;
    private final LineInformation lineInfo;
    private final NodeInfoStore nodeInfos;
    Map options;
    private RecoveryScannerData recoveryScannerData;
    private static final ChildPropertyDescriptor INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY = ArrayType.COMPONENT_TYPE_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_FIELD_MODIFIERS_PROPERTY = FieldDeclaration.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_INITIALIZER_MODIFIERS_PROPERTY3 = Initializer.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_METHOD_MODIFIERS_PROPERTY2 = MethodDeclaration.MODIFIERS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_METHOD_RETURN_TYPE_PROPERTY = MethodDeclaration.RETURN_TYPE_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY = MethodDeclaration.EXTRA_DIMENSIONS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY = MethodDeclaration.THROWN_EXCEPTIONS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_TYPE_MODIFIERS_PROPERTY = TypeDeclaration.MODIFIERS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_TYPE_SUPERCLASS_PROPERTY = TypeDeclaration.SUPERCLASS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY = TypeDeclaration.SUPER_INTERFACES_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_CIC_NAME_PROPERTY = ClassInstanceCreation.NAME_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY = VariableDeclarationFragment.EXTRA_DIMENSIONS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_TDS_TYPE_DECLARATION_PROPERTY = TypeDeclarationStatement.TYPE_DECLARATION_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VARIABLE_MODIFIERS_PROPERTY = SingleVariableDeclaration.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY = SingleVariableDeclaration.EXTRA_DIMENSIONS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VDE_MODIFIERS_PROPERTY = VariableDeclarationExpression.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VDS_MODIFIERS_PROPERTY = VariableDeclarationStatement.MODIFIERS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY = TryStatement.RESOURCES_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_SWITCH_EXPRESSION_PROPERTY = SwitchCase.EXPRESSION_PROPERTY;
    private int beforeRequiredSpaceIndex = -1;
    private TokenScanner tokenScanner = null;
    private final Map sourceCopyInfoToEdit = new IdentityHashMap();
    private final Stack sourceCopyEndNodes = new Stack();

    public class ModifierRewriter extends ListRewriter {
        private final ASTRewriteFormatter.Prefix annotationSeparation;

        public ModifierRewriter(ASTRewriteFormatter.Prefix prefix) {
            super();
            this.annotationSeparation = prefix;
        }

        @Override
        public String getSeparatorString(int i10) {
            return getNewNode(i10) instanceof Annotation ? this.annotationSeparation.getPrefix(getNodeIndent(i10 + 1)) : super.getSeparatorString(i10);
        }
    }

    public class ParagraphListRewriter extends ListRewriter {
        public static final int DEFAULT_SPACING = 1;
        private int initialIndent;
        private int separatorLines;

        public ParagraphListRewriter(int i10, int i11) {
            super();
            this.initialIndent = i10;
            this.separatorLines = i11;
        }

        private int countEmptyLines(ASTNode aSTNode) {
            int i10;
            int lineOffset;
            int lineOfOffset;
            LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
            int lineOfOffset2 = lineInformation.getLineOfOffset(ASTRewriteAnalyzer.this.getExtendedEnd(aSTNode));
            if (lineOfOffset2 < 0 || (lineOffset = lineInformation.getLineOffset((i10 = lineOfOffset2 + 1))) < 0) {
                return 0;
            }
            char[] content = ASTRewriteAnalyzer.this.getContent();
            int i11 = lineOffset;
            while (i11 < content.length && ScannerHelper.isWhitespace(content[i11])) {
                i11++;
            }
            if (i11 > lineOffset && (lineOfOffset = lineInformation.getLineOfOffset(i11)) > i10) {
                return lineOfOffset - i10;
            }
            return 0;
        }

        private int getNewLines(int i10) {
            ASTNode node = getNode(i10);
            ASTNode node2 = getNode(i10 + 1);
            int nodeType = node.getNodeType();
            int nodeType2 = node2.getNodeType();
            ASTNode aSTNode = null;
            ASTNode aSTNode2 = null;
            int i11 = 0;
            while (true) {
                RewriteEvent[] rewriteEventArr = this.list;
                if (i11 >= rewriteEventArr.length) {
                    if (nodeType == 23 && nodeType2 == 23) {
                        return 0;
                    }
                    if (aSTNode2 != null) {
                        return countEmptyLines(aSTNode2);
                    }
                    return 1;
                }
                ASTNode aSTNode3 = (ASTNode) rewriteEventArr[i11].getOriginalValue();
                if (aSTNode3 != null) {
                    if (aSTNode == null) {
                        aSTNode = aSTNode2;
                    } else if (aSTNode3.getNodeType() == nodeType2 && aSTNode.getNodeType() == nodeType) {
                        return countEmptyLines(aSTNode);
                    }
                    aSTNode2 = aSTNode;
                    aSTNode = aSTNode3;
                }
                i11++;
            }
        }

        @Override
        public int getInitialIndent() {
            return this.initialIndent;
        }

        public ASTNode getNode(int i10) {
            ASTNode aSTNode = (ASTNode) this.list[i10].getOriginalValue();
            return aSTNode == null ? (ASTNode) this.list[i10].getNewValue() : aSTNode;
        }

        @Override
        public String getSeparatorString(int i10) {
            return getSeparatorString(i10, i10 + 1);
        }

        @Override
        public boolean mustRemoveSeparator(int i10, int i11) {
            int i12 = i11 - 1;
            while (i12 >= 0 && this.list[i12].getChangeKind() == 2) {
                i12--;
            }
            if (i12 > -1) {
                LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
                int changeKind = this.list[i12].getChangeKind();
                if (changeKind == 0 || changeKind == 4) {
                    ASTNode aSTNode = (ASTNode) this.list[i12].getOriginalValue();
                    int lineOfOffset = lineInformation.getLineOfOffset(aSTNode.getStartPosition() + aSTNode.getLength());
                    int lineOfOffset2 = lineInformation.getLineOfOffset(i10);
                    if (lineOfOffset == lineOfOffset2) {
                        int i13 = i11 + 1;
                        RewriteEvent[] rewriteEventArr = this.list;
                        if (i13 < rewriteEventArr.length) {
                            RewriteEvent rewriteEvent = rewriteEventArr[i13];
                            return (rewriteEvent.getChangeKind() == 0 || changeKind == 4) && lineInformation.getLineOfOffset(((ASTNode) rewriteEvent.getOriginalValue()).getStartPosition()) == lineOfOffset2;
                        }
                    }
                }
            }
            return true;
        }

        public String getSeparatorString(int i10, int i11) {
            int i12 = this.separatorLines;
            if (i12 == -1) {
                i12 = getNewLines(i10);
            }
            String lineDelimiter = ASTRewriteAnalyzer.this.getLineDelimiter();
            StringBuffer stringBuffer = new StringBuffer(lineDelimiter);
            for (int i13 = 0; i13 < i12; i13++) {
                stringBuffer.append(lineDelimiter);
            }
            stringBuffer.append(ASTRewriteAnalyzer.this.createIndentString(getNodeIndent(i11)));
            return stringBuffer.toString();
        }
    }

    public class SwitchListLabeledRuleRewriter extends SwitchListRewriter {
        public SwitchListLabeledRuleRewriter(int i10) {
            super(i10);
        }

        private boolean isSwitchLabeledRule(int i10, int i11) {
            ASTNode node = getNode(i10);
            return node.getNodeType() == 49 && (getNode(i10 + 1) instanceof Statement) && ((SwitchCase) node).isSwitchLabeledRule();
        }

        @Override
        public int getNodeIndent(int i10) {
            int initialIndent = getInitialIndent();
            if (!this.indentSwitchStatementsCompareToCases) {
                return initialIndent;
            }
            RewriteEvent rewriteEvent = this.list[i10];
            int changeKind = rewriteEvent.getChangeKind();
            if (((changeKind == 1 || changeKind == 4) ? (ASTNode) rewriteEvent.getNewValue() : (ASTNode) rewriteEvent.getOriginalValue()).getNodeType() == 49) {
                return initialIndent;
            }
            ASTNode node = getNode(i10 - 1);
            if (node.getNodeType() == 49 && ((SwitchCase) node).isSwitchLabeledRule()) {
                return 0;
            }
            return initialIndent + 1;
        }

        @Override
        public String getSeparatorString(int i10, int i11) {
            boolean isSwitchLabeledRule = isSwitchLabeledRule(i10, i11);
            String str = JavaCore.INSERT.equals(ASTRewriteAnalyzer.this.options.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_CASE)) ? " " : "";
            if (!isSwitchLabeledRule) {
                str = ASTRewriteAnalyzer.this.getLineDelimiter();
            }
            StringBuffer stringBuffer = new StringBuffer(str);
            stringBuffer.append(ASTRewriteAnalyzer.this.createIndentString(getNodeIndent(i11)));
            return stringBuffer.toString();
        }
    }

    public class SwitchListRewriter extends ParagraphListRewriter {
        protected boolean indentSwitchStatementsCompareToCases;

        public SwitchListRewriter(int i10) {
            super(i10, 0);
            this.indentSwitchStatementsCompareToCases = "true".equals(ASTRewriteAnalyzer.this.options.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_CASES));
        }

        @Override
        public int getNodeIndent(int i10) {
            int initialIndent = getInitialIndent();
            if (!this.indentSwitchStatementsCompareToCases) {
                return initialIndent;
            }
            RewriteEvent rewriteEvent = this.list[i10];
            int changeKind = rewriteEvent.getChangeKind();
            return ((changeKind == 1 || changeKind == 4) ? (ASTNode) rewriteEvent.getNewValue() : (ASTNode) rewriteEvent.getOriginalValue()).getNodeType() != 49 ? initialIndent + 1 : initialIndent;
        }

        @Override
        public String getSeparatorString(int i10) {
            int length = this.list.length;
            int i11 = i10 + 1;
            while (i11 < length && this.list[i11].getChangeKind() == 2) {
                i11++;
            }
            return i11 == length ? super.getSeparatorString(i10) : getSeparatorString(i10, i11);
        }

        @Override
        public void updateIndent(int i10, int i11, int i12, TextEditGroup textEditGroup) {
            int lineOfOffset;
            if (i10 == 0 || i10 == 4) {
                int i13 = i12 - 1;
                while (i13 >= 0 && this.list[i13].getChangeKind() == 2) {
                    i13--;
                }
                if (i13 > -1) {
                    LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
                    int changeKind = this.list[i13].getChangeKind();
                    if (changeKind == 0 || changeKind == 4) {
                        ASTNode aSTNode = (ASTNode) this.list[i13].getOriginalValue();
                        if (lineInformation.getLineOfOffset(aSTNode.getStartPosition() + aSTNode.getLength()) == lineInformation.getLineOfOffset(i11)) {
                            return;
                        }
                    }
                }
                int length = this.list.length;
                while (i12 < length && this.list[i12].getChangeKind() == 2) {
                    i12++;
                }
                int indent = ASTRewriteAnalyzer.this.getIndent(i11);
                int nodeIndent = getNodeIndent(i12);
                if (indent == nodeIndent || (lineOfOffset = ASTRewriteAnalyzer.this.getLineInformation().getLineOfOffset(i11)) < 0) {
                    return;
                }
                int lineOffset = ASTRewriteAnalyzer.this.getLineInformation().getLineOffset(lineOfOffset);
                ASTRewriteAnalyzer.this.doTextRemove(lineOffset, i11 - lineOffset, textEditGroup);
                ASTRewriteAnalyzer aSTRewriteAnalyzer = ASTRewriteAnalyzer.this;
                aSTRewriteAnalyzer.doTextInsert(lineOffset, aSTRewriteAnalyzer.createIndentString(nodeIndent), textEditGroup);
            }
        }
    }

    public ASTRewriteAnalyzer(char[] cArr, LineInformation lineInformation, String str, TextEdit textEdit, RewriteEventStore rewriteEventStore, NodeInfoStore nodeInfoStore, List list, Map map, TargetSourceRangeComputer targetSourceRangeComputer, RecoveryScannerData recoveryScannerData) {
        this.eventStore = rewriteEventStore;
        this.content = cArr;
        this.lineInfo = lineInformation;
        this.nodeInfos = nodeInfoStore;
        this.currentEdit = textEdit;
        this.formatter = new ASTRewriteFormatter(nodeInfoStore, rewriteEventStore, map, str);
        this.extendedSourceRangeComputer = targetSourceRangeComputer;
        this.lineCommentEndOffsets = new LineCommentEndOffsets(list);
        this.options = map;
        this.recoveryScannerData = recoveryScannerData;
    }

    private void changeNotSupported(ASTNode aSTNode) {
        Assert.isTrue(false, "Change not supported in " + aSTNode.getClass().getName());
    }

    private final TextEdit doTextCopy(TextEdit textEdit, int i10, int i11, String str, TextEditGroup textEditGroup) {
        throw null;
    }

    private final void doTextReplace(int i10, int i11, String str, TextEditGroup textEditGroup) {
        if (i11 > 0 || str.length() > 0) {
            ReplaceEdit replaceEdit = new ReplaceEdit(i10, i11, str);
            addEdit(replaceEdit);
            if (textEditGroup != null) {
                addEditGroup(textEditGroup, replaceEdit);
            }
        }
    }

    private int doVisitList(List list, int i10) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i10 = doVisit((ASTNode) it.next());
        }
        return i10;
    }

    private final boolean doVisitUnchangedChildren(ASTNode aSTNode) {
        List structuralPropertiesForType = aSTNode.structuralPropertiesForType();
        for (int i10 = 0; i10 < structuralPropertiesForType.size(); i10++) {
            voidVisit(aSTNode, (StructuralPropertyDescriptor) structuralPropertiesForType.get(i10));
        }
        return false;
    }

    private void ensureSpaceAfterReplace(ASTNode aSTNode, ChildPropertyDescriptor childPropertyDescriptor) {
        if (getChangeKind(aSTNode, childPropertyDescriptor) == 4) {
            int extendedEnd = getExtendedEnd((ASTNode) getOriginalValue(aSTNode, childPropertyDescriptor));
            try {
                int nextStartOffset = getScanner().getNextStartOffset(extendedEnd, true);
                if (nextStartOffset == extendedEnd) {
                    doTextInsert(nextStartOffset, String.valueOf(C15883c.f126249O), getEditGroup(aSTNode, childPropertyDescriptor));
                }
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
    }

    private void ensureSpaceBeforeReplace(ASTNode aSTNode) {
        if (this.beforeRequiredSpaceIndex == -1) {
            return;
        }
        for (RewriteEvent rewriteEvent : this.eventStore.getChangedPropertieEvents(aSTNode)) {
            if (rewriteEvent.getChangeKind() == 4 && (rewriteEvent.getOriginalValue() instanceof ASTNode) && this.beforeRequiredSpaceIndex == getExtendedOffset((ASTNode) rewriteEvent.getOriginalValue())) {
                doTextInsert(this.beforeRequiredSpaceIndex, String.valueOf(C15883c.f126249O), getEditGroup(rewriteEvent));
                this.beforeRequiredSpaceIndex = -1;
                return;
            }
        }
        if (this.beforeRequiredSpaceIndex < getExtendedOffset(aSTNode)) {
            this.beforeRequiredSpaceIndex = -1;
        }
    }

    private int findTagNameEnd(TagElement tagElement) {
        if (tagElement.getTagName() == null) {
            return tagElement.getStartPosition();
        }
        char[] content = getContent();
        int length = content.length;
        int startPosition = tagElement.getStartPosition();
        while (startPosition < length && !IndentManipulation.isIndentChar(content[startPosition])) {
            startPosition++;
        }
        return startPosition;
    }

    private final int getChangeKind(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null) {
            return event.getChangeKind();
        }
        return 0;
    }

    private int getCurrentLineStart(String str, int i10) {
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (IndentManipulation.isLineDelimiterChar(str.charAt(i11))) {
                return i11 + 1;
            }
        }
        return 0;
    }

    private int getDimensions(ArrayType arrayType) {
        if (arrayType.getAST().apiLevel() >= 8) {
            return ((List) getOriginalValue(arrayType, ArrayType.DIMENSIONS_PROPERTY)).size();
        }
        Type type = (Type) getOriginalValue(arrayType, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
        int i10 = 1;
        while (type.isArrayType()) {
            i10++;
            type = (Type) getOriginalValue(type, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
        }
        return i10;
    }

    private final TextEditGroup getEditGroup(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null) {
            return getEditGroup(event);
        }
        return null;
    }

    private Type getElementType(ArrayType arrayType) {
        if (arrayType.getAST().apiLevel() >= 8) {
            return (Type) getOriginalValue(arrayType, ArrayType.ELEMENT_TYPE_PROPERTY);
        }
        Object originalValue = getOriginalValue(arrayType, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
        while (true) {
            Type type = (Type) originalValue;
            if (!type.isArrayType()) {
                return type;
            }
            originalValue = getOriginalValue(type, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
        }
    }

    private final String getIndentOfLine(int i10) {
        int lineOfOffset = getLineInformation().getLineOfOffset(i10);
        if (lineOfOffset < 0) {
            return Util.EMPTY_STRING;
        }
        char[] content = getContent();
        int lineOffset = getLineInformation().getLineOffset(lineOfOffset);
        int i11 = lineOffset;
        while (i11 < content.length && IndentManipulation.isIndentChar(this.content[i11])) {
            i11++;
        }
        return new String(content, lineOffset, i11 - lineOffset);
    }

    private final Object getNewValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.eventStore.getNewValue(aSTNode, structuralPropertyDescriptor);
    }

    private final Object getOriginalValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.eventStore.getOriginalValue(aSTNode, structuralPropertyDescriptor);
    }

    private int getPosAfterLeftBrace(int i10) {
        try {
            return getPosAfterToken(i10, 49);
        } catch (IllegalArgumentException unused) {
            return i10;
        }
    }

    private int getPosAfterToken(int i10, int i11) {
        try {
            if (getScanner().readNext(i10, true) == i11) {
                return getScanner().getCurrentEndOffset();
            }
        } catch (CoreException e10) {
            handleException(e10);
        }
        return i10;
    }

    private int getPosAfterTry(int i10) {
        try {
            if (getScanner().readNext(i10, true) == 83) {
                return getScanner().getCurrentEndOffset();
            }
        } catch (CoreException e10) {
            handleException(e10);
        }
        return i10;
    }

    private ASTNode getPreviousNode(ASTNode aSTNode) {
        ASTNode elementType = ((ArrayType) aSTNode.getParent()).getElementType();
        List list = (List) aSTNode.getParent().getStructuralProperty(aSTNode.getLocationInParent());
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            ASTNode aSTNode2 = (ASTNode) list.get(i10);
            if (aSTNode == aSTNode2) {
                break;
            }
            i10++;
            elementType = aSTNode2;
        }
        if (i10 < size) {
            return elementType;
        }
        return null;
    }

    private int getPreviousTokenEndOffset(ASTNode aSTNode, int i10) {
        ASTNode previousNode = getPreviousNode(aSTNode);
        if (previousNode == null) {
            return -1;
        }
        int startPosition = previousNode.getStartPosition() + previousNode.getLength();
        try {
            return getScanner().getPreviousTokenEndOffset(i10, startPosition);
        } catch (CoreException e10) {
            e10.printStackTrace();
            return startPosition;
        }
    }

    private final boolean hasChildrenChanges(ASTNode aSTNode) {
        return this.eventStore.hasChangedProperties(aSTNode);
    }

    private void insertAnnotationsOnDimension(ArrayType arrayType, int i10, int i11, TextEditGroup textEditGroup, boolean z10) {
        List annotations;
        int size;
        if (!z10 || (annotations = ((Dimension) arrayType.dimensions().get(i10)).annotations()) == null || (size = annotations.size()) <= 0) {
            return;
        }
        doTextInsert(i11, " ", textEditGroup);
        for (int i12 = 0; i12 < size; i12++) {
            doTextInsert(i11, String.valueOf(((Annotation) annotations.get(i12)).toString()) + " ", textEditGroup);
        }
    }

    private boolean isAllOfKind(RewriteEvent[] rewriteEventArr, int i10) {
        for (RewriteEvent rewriteEvent : rewriteEventArr) {
            if (rewriteEvent.getChangeKind() != i10) {
                return false;
            }
        }
        return true;
    }

    private final boolean isChanged(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        return (event == null || event.getChangeKind() == 0) ? false : true;
    }

    private final boolean isCollapsed(ASTNode aSTNode) {
        return this.nodeInfos.isCollapsed(aSTNode);
    }

    private boolean needsNewLineForLineComment(ASTNode aSTNode, String str, int i10) {
        return this.lineCommentEndOffsets.isEndOfLineComment(getExtendedEnd(aSTNode), this.content) && i10 < str.length() && !IndentManipulation.isLineDelimiterChar(str.charAt(i10));
    }

    private void replaceOperation(int i10, String str, TextEditGroup textEditGroup) {
        try {
            getScanner().readNext(i10, true);
            doTextReplace(getScanner().getCurrentStartOffset(), getScanner().getCurrentLength(), str, textEditGroup);
        } catch (CoreException e10) {
            handleException(e10);
        }
    }

    private void rewriteAnnotationsOnDimension(ArrayType arrayType, ArrayType arrayType2, int i10, int i11, boolean z10, TextEditGroup textEditGroup) throws CoreException {
        List annotations;
        int size;
        if (!z10) {
            rewriteNodeList((Dimension) arrayType2.dimensions().get(i10), Dimension.ANNOTATIONS_PROPERTY, i11, String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O));
            return;
        }
        List dimensions = arrayType.dimensions();
        Dimension dimension = i10 < dimensions.size() ? (Dimension) dimensions.get(i10) : null;
        if (dimension != null && (size = (annotations = dimension.annotations()).size()) > 0) {
            ASTNode previousNode = getPreviousNode(dimension);
            int startPosition = previousNode != null ? previousNode.getStartPosition() + previousNode.getLength() : ((Annotation) annotations.get(0)).getStartPosition();
            Annotation annotation = (Annotation) annotations.get(size - 1);
            doTextRemove(startPosition, (getScanner().getTokenEndOffset(6, annotation.getStartPosition() + annotation.getLength()) - 1) - startPosition, textEditGroup);
        }
        insertAnnotationsOnDimension(arrayType2, i10, i11, textEditGroup, true);
    }

    private int rewriteArrayTypeDimensions(ArrayType arrayType, int i10) {
        return rewriteNodeList(arrayType, ArrayType.DIMENSIONS_PROPERTY, i10, Util.EMPTY_STRING, "");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int rewriteBodyNode(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, int i11, int i12, ASTRewriteFormatter.BlockContext blockContext) {
        int i13;
        boolean z10;
        String str;
        int currentLineStart;
        int i14;
        int i15 = i11;
        int i16 = i12;
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null) {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                ASTNode aSTNode2 = (ASTNode) event.getNewValue();
                TextEditGroup editGroup = getEditGroup(event);
                String[] prefixAndSuffix = blockContext.getPrefixAndSuffix(i16, aSTNode2, this.eventStore);
                doTextInsert(i10, prefixAndSuffix[0], editGroup);
                doTextInsert(i10, aSTNode2, i12, true, editGroup);
                doTextInsert(i10, prefixAndSuffix[1], editGroup);
                return i10;
            }
            if (changeKind == 2) {
                ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                if (i15 == -1) {
                    i15 = getExtendedEnd(aSTNode3);
                }
                doTextRemoveAndVisit(i10, i15 - i10, aSTNode3, getEditGroup(event));
                return i15;
            }
            if (changeKind == 4) {
                ASTNode aSTNode4 = (ASTNode) event.getOriginalValue();
                if (i15 == -1) {
                    int startPosition = aSTNode4.getStartPosition() + aSTNode4.getLength();
                    int extendedEnd = getExtendedEnd(aSTNode4);
                    if (extendedEnd != startPosition) {
                        try {
                            i14 = getScanner().readNext(startPosition, false);
                        } catch (CoreException unused) {
                            i14 = 20001;
                        }
                        if (i14 == 1001) {
                            i13 = extendedEnd;
                            z10 = true;
                            TextEditGroup editGroup2 = getEditGroup(event);
                            ASTNode aSTNode5 = (ASTNode) event.getNewValue();
                            String[] prefixAndSuffix2 = blockContext.getPrefixAndSuffix(i16, aSTNode5, this.eventStore);
                            doTextRemoveAndVisit(i10, i13 - i10, aSTNode4, editGroup2);
                            String str2 = prefixAndSuffix2[0];
                            if (z10) {
                                str = str2;
                            } else {
                                str = String.valueOf(getLineDelimiter()) + this.formatter.createIndentString(i16) + str2.trim() + C15883c.f126249O;
                            }
                            doTextInsert(i10, str, editGroup2);
                            currentLineStart = getCurrentLineStart(str2, str2.length());
                            if (currentLineStart != 0) {
                                i16 = this.formatter.computeIndentUnits(str2.substring(currentLineStart));
                            }
                            doTextInsert(i10, aSTNode5, i16, true, editGroup2);
                            doTextInsert(i10, prefixAndSuffix2[1], editGroup2);
                            return i13;
                        }
                    }
                    i13 = extendedEnd;
                } else {
                    i13 = i15;
                }
                z10 = false;
                TextEditGroup editGroup22 = getEditGroup(event);
                ASTNode aSTNode52 = (ASTNode) event.getNewValue();
                String[] prefixAndSuffix22 = blockContext.getPrefixAndSuffix(i16, aSTNode52, this.eventStore);
                doTextRemoveAndVisit(i10, i13 - i10, aSTNode4, editGroup22);
                String str22 = prefixAndSuffix22[0];
                if (z10) {
                }
                doTextInsert(i10, str, editGroup22);
                currentLineStart = getCurrentLineStart(str22, str22.length());
                if (currentLineStart != 0) {
                }
                doTextInsert(i10, aSTNode52, i16, true, editGroup22);
                doTextInsert(i10, prefixAndSuffix22[1], editGroup22);
                return i13;
            }
        }
        return i15 != -1 ? i15 : doVisit(aSTNode, structuralPropertyDescriptor, i10);
    }

    private int rewriteExpressionOptionalQualifier(SwitchCase switchCase, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        RewriteEvent event = getEvent(switchCase, structuralPropertyDescriptor);
        if (event != null) {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                ASTNode aSTNode = (ASTNode) event.getNewValue();
                TextEditGroup editGroup = getEditGroup(event);
                doTextInsert(i10, aSTNode, getIndent(i10), true, editGroup);
                doTextInsert(i10, ".", editGroup);
                return i10;
            }
            if (changeKind == 2) {
                try {
                    ASTNode aSTNode2 = (ASTNode) event.getOriginalValue();
                    TextEditGroup editGroup2 = getEditGroup(event);
                    int tokenEndOffset = getScanner().getTokenEndOffset(62, aSTNode2.getStartPosition() + aSTNode2.getLength());
                    doTextRemoveAndVisit(i10, tokenEndOffset - i10, aSTNode2, editGroup2);
                    return tokenEndOffset;
                } catch (CoreException e10) {
                    handleException(e10);
                }
            } else if (changeKind == 4) {
                ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                TextEditGroup editGroup3 = getEditGroup(event);
                TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode3);
                int startPosition = extendedRange.getStartPosition();
                int length = extendedRange.getLength();
                doTextRemoveAndVisit(startPosition, length, aSTNode3, editGroup3);
                doTextInsert(startPosition, (ASTNode) event.getNewValue(), getIndent(i10), true, editGroup3);
                try {
                    return getScanner().getTokenEndOffset(62, startPosition + length);
                } catch (CoreException e11) {
                    handleException(e11);
                }
            }
        }
        Object originalValue = getOriginalValue(switchCase, structuralPropertyDescriptor);
        if (originalValue == null) {
            return i10;
        }
        int doVisit = doVisit((ASTNode) originalValue);
        try {
            return getScanner().getTokenEndOffset(62, doVisit);
        } catch (CoreException e12) {
            handleException(e12);
            return doVisit;
        }
    }

    private int rewriteExtraDimensions(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null && event.getChangeKind() != 0) {
            int intValue = ((Integer) event.getOriginalValue()).intValue();
            int intValue2 = ((Integer) event.getNewValue()).intValue();
            if (intValue != intValue2) {
                rewriteExtraDimensions(intValue, intValue2, i10, getEditGroup(event));
            }
            return intValue;
        }
        return ((Integer) getOriginalValue(aSTNode, structuralPropertyDescriptor)).intValue();
    }

    private int rewriteJavadoc(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        int rewriteNode = rewriteNode(aSTNode, structuralPropertyDescriptor, aSTNode.getStartPosition(), ASTRewriteFormatter.NONE);
        int changeKind = getChangeKind(aSTNode, structuralPropertyDescriptor);
        if (changeKind == 1) {
            doTextInsert(rewriteNode, String.valueOf(getLineDelimiter()) + getIndentAtOffset(rewriteNode), getEditGroup(aSTNode, structuralPropertyDescriptor));
            return rewriteNode;
        }
        if (changeKind != 2) {
            return rewriteNode;
        }
        try {
            getScanner().readNext(rewriteNode, false);
            doTextRemove(rewriteNode, getScanner().getCurrentStartOffset() - rewriteNode, getEditGroup(aSTNode, structuralPropertyDescriptor));
            return getScanner().getCurrentStartOffset();
        } catch (CoreException e10) {
            handleException(e10);
            return rewriteNode;
        }
    }

    private void rewriteMethodBody(MethodDeclaration methodDeclaration, int i10) {
        ChildPropertyDescriptor childPropertyDescriptor = MethodDeclaration.BODY_PROPERTY;
        RewriteEvent event = getEvent(methodDeclaration, childPropertyDescriptor);
        if (event != null) {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                int startPosition = methodDeclaration.getStartPosition() + methodDeclaration.getLength();
                TextEditGroup editGroup = getEditGroup(event);
                ASTNode aSTNode = (ASTNode) event.getNewValue();
                doTextRemove(i10, startPosition - i10, editGroup);
                int indent = getIndent(methodDeclaration.getStartPosition());
                doTextInsert(i10, this.formatter.METHOD_BODY.getPrefix(indent), editGroup);
                doTextInsert(i10, aSTNode, indent, true, editGroup);
                return;
            }
            if (changeKind == 2) {
                TextEditGroup editGroup2 = getEditGroup(event);
                doTextRemoveAndVisit(i10, (methodDeclaration.getStartPosition() + methodDeclaration.getLength()) - i10, (ASTNode) event.getOriginalValue(), editGroup2);
                doTextInsert(i10, ";", editGroup2);
                return;
            }
            if (changeKind == 4) {
                TextEditGroup editGroup3 = getEditGroup(event);
                ASTNode aSTNode2 = (ASTNode) event.getOriginalValue();
                doTextRemoveAndVisit(aSTNode2.getStartPosition(), aSTNode2.getLength(), aSTNode2, editGroup3);
                doTextInsert(aSTNode2.getStartPosition(), (ASTNode) event.getNewValue(), getIndent(aSTNode2.getStartPosition()), true, editGroup3);
                return;
            }
        }
        voidVisit(methodDeclaration, childPropertyDescriptor);
    }

    private int rewriteMethodReceiver(MethodDeclaration methodDeclaration, int i10) throws CoreException {
        ASTNode aSTNode;
        ASTNode aSTNode2;
        String str;
        String str2;
        TextEditGroup textEditGroup;
        TextEditGroup textEditGroup2;
        boolean z10;
        int i11;
        int tokenEndOffset = getScanner().getTokenEndOffset(23, i10);
        if (methodDeclaration.getAST().apiLevel() < 8) {
            return tokenEndOffset;
        }
        int size = ((List) getNewValue(methodDeclaration, MethodDeclaration.PARAMETERS_PROPERTY)).size();
        int size2 = methodDeclaration.parameters().size();
        ChildPropertyDescriptor childPropertyDescriptor = MethodDeclaration.RECEIVER_TYPE_PROPERTY;
        RewriteEvent event = getEvent(methodDeclaration, childPropertyDescriptor);
        RewriteEvent event2 = getEvent(methodDeclaration, MethodDeclaration.RECEIVER_QUALIFIER_PROPERTY);
        if (event2 != null) {
            aSTNode = (ASTNode) event2.getNewValue();
            aSTNode2 = (ASTNode) event2.getOriginalValue();
        } else {
            aSTNode = null;
            aSTNode2 = null;
        }
        TextEditGroup editGroup = getEditGroup(event);
        if (event == null || event.getChangeKind() == 0) {
            str = ".";
            str2 = ", ";
            textEditGroup = editGroup;
            rewriteRequiredNode(methodDeclaration, childPropertyDescriptor);
            if (methodDeclaration.getReceiverType() != null) {
                textEditGroup2 = textEditGroup;
                z10 = true;
            }
            z10 = false;
            textEditGroup2 = textEditGroup;
        } else {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                str = ".";
                str2 = ", ";
                doTextInsert(tokenEndOffset, (ASTNode) event.getNewValue(), 0, false, editGroup);
                doTextInsert(tokenEndOffset, " ", editGroup);
                if (aSTNode != null) {
                    doTextInsert(tokenEndOffset, aSTNode, 0, false, getEditGroup(event2));
                    doTextInsert(tokenEndOffset, str, editGroup);
                }
                doTextInsert(tokenEndOffset, "this", editGroup);
                if (size > 0) {
                    doTextInsert(tokenEndOffset, str2, editGroup);
                }
                textEditGroup = editGroup;
            } else {
                str = ".";
                str2 = ", ";
                ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode3);
                int startPosition = extendedRange.getStartPosition();
                int length = extendedRange.getLength();
                int i12 = startPosition + length;
                textEditGroup = editGroup;
                if (changeKind == 2) {
                    TextEditGroup editGroup2 = getEditGroup(event);
                    int tokenStartOffset = size2 == 0 ? getScanner().getTokenStartOffset(25, i12) : getScanner().getTokenEndOffset(32, i12);
                    doTextRemoveAndVisit(tokenEndOffset, tokenStartOffset - tokenEndOffset, aSTNode3, editGroup2);
                    return tokenStartOffset;
                }
                if (changeKind == 4) {
                    textEditGroup2 = getEditGroup(event);
                    doTextRemoveAndVisit(startPosition, length, aSTNode3, textEditGroup2);
                    doTextInsert(startPosition, (ASTNode) event.getNewValue(), 0, false, textEditGroup2);
                    z10 = true;
                }
            }
            z10 = false;
            textEditGroup2 = textEditGroup;
        }
        if (z10) {
            if (event2 != null) {
                int changeKind2 = event2.getChangeKind();
                TextEditGroup editGroup3 = getEditGroup(event2);
                if (changeKind2 == 1) {
                    int tokenStartOffset2 = getScanner().getTokenStartOffset(35, tokenEndOffset);
                    ASTNode aSTNode4 = (ASTNode) event2.getNewValue();
                    i11 = 35;
                    doTextInsert(tokenStartOffset2, aSTNode4, 0, false, editGroup3);
                    doTextInsert(tokenStartOffset2, str, editGroup3);
                } else {
                    i11 = 35;
                    if (changeKind2 == 2) {
                        int startPosition2 = aSTNode2.getStartPosition();
                        doTextRemove(startPosition2, getScanner().getTokenEndOffset(1, startPosition2) - startPosition2, editGroup3);
                    } else if (changeKind2 == 4) {
                        TargetSourceRangeComputer.SourceRange extendedRange2 = getExtendedRange(aSTNode2);
                        int startPosition3 = extendedRange2.getStartPosition();
                        doTextRemoveAndVisit(startPosition3, extendedRange2.getLength(), aSTNode2, editGroup3);
                        doTextInsert(startPosition3, aSTNode, 0, false, editGroup3);
                    }
                }
            } else {
                i11 = 35;
            }
            tokenEndOffset = getScanner().getTokenEndOffset(i11, tokenEndOffset);
            if (size > 0 && size2 == 0) {
                doTextInsert(tokenEndOffset, str2, textEditGroup2);
            }
        }
        return tokenEndOffset;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        r9 = (~r9) & r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0049, code lost:
    
        if (r9 == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
    
        if (r3 == r4) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
    
        r10 = r9 & 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004f, code lost:
    
        if (r10 == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0051, code lost:
    
        r0 = new java.lang.StringBuffer();
        org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFlattener.printModifiers(r10, r0);
        doTextInsert(r3, r0.toString(), r8);
        r9 = r9 & (~r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
    
        r10 = new java.lang.StringBuffer();
        org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFlattener.printModifiers(r9, r10);
        doTextInsert(r4, r10.toString(), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void rewriteModifiers(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        boolean isStatic;
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event == null || event.getChangeKind() != 4) {
            return;
        }
        try {
            int intValue = ((Integer) event.getOriginalValue()).intValue();
            int intValue2 = ((Integer) event.getNewValue()).intValue();
            TextEditGroup editGroup = getEditGroup(event);
            TokenScanner scanner = getScanner();
            int readNext = scanner.readNext(i10, false);
            int currentStartOffset = scanner.getCurrentStartOffset();
            int i11 = currentStartOffset;
            while (true) {
                if (TokenScanner.isComment(readNext)) {
                    readNext = scanner.readNext(true);
                }
                switch (readNext) {
                    case 48:
                        isStatic = Modifier.isStatic(intValue2);
                        break;
                    case 50:
                        isStatic = Modifier.isSynchronized(intValue2);
                        break;
                    case 52:
                        isStatic = Modifier.isAbstract(intValue2);
                        break;
                    case 53:
                        isStatic = Modifier.isFinal(intValue2);
                        break;
                    case 54:
                        isStatic = Modifier.isNative(intValue2);
                        break;
                    case 55:
                        isStatic = Modifier.isPrivate(intValue2);
                        break;
                    case 56:
                        isStatic = Modifier.isProtected(intValue2);
                        break;
                    case 57:
                        isStatic = Modifier.isPublic(intValue2);
                        break;
                    case 58:
                        isStatic = Modifier.isStrictfp(intValue2);
                        break;
                    case 59:
                        isStatic = Modifier.isTransient(intValue2);
                        break;
                    case 60:
                        isStatic = Modifier.isVolatile(intValue2);
                        break;
                }
                int readNext2 = getScanner().readNext(false);
                int currentStartOffset2 = getScanner().getCurrentStartOffset();
                if (!isStatic) {
                    doTextRemove(i11, currentStartOffset2 - i11, editGroup);
                }
                readNext = readNext2;
                i11 = currentStartOffset2;
            }
        } catch (CoreException e10) {
            handleException(e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c8 A[Catch: CoreException -> 0x00d2, TryCatch #1 {CoreException -> 0x00d2, blocks: (B:29:0x00b2, B:33:0x00c8, B:41:0x00dc, B:43:0x00e4, B:44:0x00f3, B:45:0x00ed), top: B:28:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int rewriteModifiers2(ASTNode aSTNode, ChildListPropertyDescriptor childListPropertyDescriptor, int i10) {
        int i11;
        int nextStartOffset;
        String str;
        ASTRewriteFormatter.Prefix prefix;
        int rewriteList;
        int nextStartOffset2;
        RewriteEvent rewriteEvent;
        RewriteEvent event = getEvent(aSTNode, childListPropertyDescriptor);
        if (event == null || event.getChangeKind() == 0) {
            return doVisit(aSTNode, childListPropertyDescriptor, i10);
        }
        RewriteEvent[] children = event.getChildren();
        boolean z10 = true;
        boolean isAllOfKind = isAllOfKind(children, 1);
        boolean isAllOfKind2 = isAllOfKind(children, 2);
        String str2 = Util.EMPTY_STRING;
        boolean z11 = childListPropertyDescriptor == SingleVariableDeclaration.VARARGS_ANNOTATIONS_PROPERTY;
        if (z11) {
            str = " ";
            nextStartOffset = i10;
        } else {
            if (isAllOfKind || isAllOfKind2) {
                try {
                    i11 = i10;
                } catch (CoreException e10) {
                    e = e10;
                    i11 = i10;
                }
                try {
                    nextStartOffset = getScanner().getNextStartOffset(i11, false);
                    str = str2;
                } catch (CoreException e11) {
                    e = e11;
                    handleException(e);
                    str = str2;
                    nextStartOffset = i11;
                    if (z11) {
                    }
                    if (childListPropertyDescriptor != SingleVariableDeclaration.MODIFIERS2_PROPERTY) {
                    }
                    ASTNode parent = aSTNode.getParent();
                    if (!(parent instanceof MethodDeclaration)) {
                    }
                    ASTRewriteFormatter.Prefix prefix2 = prefix;
                    rewriteList = new ModifierRewriter(prefix2).rewriteList(aSTNode, childListPropertyDescriptor, nextStartOffset, str, " ");
                    nextStartOffset2 = getScanner().getNextStartOffset(rewriteList, false);
                    rewriteEvent = children[children.length - 1];
                    if (rewriteEvent.getChangeKind() != 0) {
                    }
                    if (!isAllOfKind2) {
                    }
                }
            } else {
                i11 = i10;
            }
            str = str2;
            nextStartOffset = i11;
        }
        boolean z12 = !z11 || ((aSTNode instanceof AnnotatableType) && childListPropertyDescriptor == ((AnnotatableType) aSTNode).getAnnotationsProperty());
        if (childListPropertyDescriptor != SingleVariableDeclaration.MODIFIERS2_PROPERTY || childListPropertyDescriptor == VariableDeclarationExpression.MODIFIERS2_PROPERTY || childListPropertyDescriptor == VariableDeclarationStatement.MODIFIERS2_PROPERTY || childListPropertyDescriptor == TypeParameter.MODIFIERS_PROPERTY || z12) {
            ASTNode parent2 = aSTNode.getParent();
            prefix = !(parent2 instanceof MethodDeclaration) ? this.formatter.PARAM_ANNOTATION_SEPARATION : ((parent2 instanceof Block) || (parent2 instanceof TryStatement) || (parent2 instanceof ForStatement)) ? this.formatter.LOCAL_ANNOTATION_SEPARATION : this.formatter.TYPE_ANNOTATION_SEPARATION;
        } else {
            prefix = this.formatter.ANNOTATION_SEPARATION;
        }
        ASTRewriteFormatter.Prefix prefix22 = prefix;
        rewriteList = new ModifierRewriter(prefix22).rewriteList(aSTNode, childListPropertyDescriptor, nextStartOffset, str, " ");
        try {
            nextStartOffset2 = getScanner().getNextStartOffset(rewriteList, false);
            rewriteEvent = children[children.length - 1];
            if (rewriteEvent.getChangeKind() != 0) {
                z10 = false;
            }
        } catch (CoreException e12) {
            handleException(e12);
        }
        if (!isAllOfKind2) {
            doTextRemove(rewriteList, nextStartOffset2 - rewriteList, getEditGroup(rewriteEvent));
            return nextStartOffset2;
        }
        if ((isAllOfKind || (nextStartOffset2 == rewriteList && z10)) && !z11) {
            doTextInsert(rewriteList, rewriteEvent.getNewValue() instanceof Annotation ? prefix22.getPrefix(getIndent(nextStartOffset)) : String.valueOf(C15883c.f126249O), getEditGroup(rewriteEvent));
        }
        return rewriteList;
    }

    private int rewriteNode(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, ASTRewriteFormatter.Prefix prefix) {
        int extendedEnd;
        int i11;
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null) {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                ASTNode aSTNode2 = (ASTNode) event.getNewValue();
                TextEditGroup editGroup = getEditGroup(event);
                int indent = getIndent(i10);
                doTextInsert(i10, prefix.getPrefix(indent), editGroup);
                doTextInsert(i10, aSTNode2, indent, true, editGroup);
                return i10;
            }
            if (changeKind == 2) {
                ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                TextEditGroup editGroup2 = getEditGroup(event);
                if (i10 == 0) {
                    TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode3);
                    int startPosition = extendedRange.getStartPosition();
                    int length = extendedRange.getLength();
                    extendedEnd = startPosition + length;
                    i11 = length;
                    i10 = startPosition;
                } else {
                    extendedEnd = getExtendedEnd(aSTNode3);
                    i11 = extendedEnd - i10;
                }
                doTextRemoveAndVisit(i10, i11, aSTNode3, editGroup2);
                return extendedEnd;
            }
            if (changeKind == 4) {
                ASTNode aSTNode4 = (ASTNode) event.getOriginalValue();
                TextEditGroup editGroup3 = getEditGroup(event);
                TargetSourceRangeComputer.SourceRange extendedRange2 = getExtendedRange(aSTNode4);
                int startPosition2 = extendedRange2.getStartPosition();
                int length2 = extendedRange2.getLength();
                doTextRemoveAndVisit(startPosition2, length2, aSTNode4, editGroup3);
                doTextInsert(startPosition2, (ASTNode) event.getNewValue(), getIndent(i10), true, editGroup3);
                return startPosition2 + length2;
            }
        }
        return doVisit(aSTNode, structuralPropertyDescriptor, i10);
    }

    private int rewriteNodeList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str, String str2, String str3) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null && event.getChangeKind() != 0) {
            return new ListRewriter().rewriteList(aSTNode, structuralPropertyDescriptor, i10, str, str2, str3);
        }
        return doVisit(aSTNode, structuralPropertyDescriptor, i10);
    }

    private void rewriteOperation(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event == null || event.getChangeKind() == 0) {
            return;
        }
        try {
            String obj = event.getNewValue().toString();
            TextEditGroup editGroup = getEditGroup(event);
            getScanner().readNext(i10, true);
            doTextReplace(getScanner().getCurrentStartOffset(), getScanner().getCurrentLength(), obj, editGroup);
        } catch (CoreException e10) {
            handleException(e10);
        }
    }

    private int rewriteOptionalQualifier(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null) {
            int changeKind = event.getChangeKind();
            if (changeKind == 1) {
                ASTNode aSTNode2 = (ASTNode) event.getNewValue();
                TextEditGroup editGroup = getEditGroup(event);
                doTextInsert(i10, aSTNode2, getIndent(i10), true, editGroup);
                doTextInsert(i10, ".", editGroup);
                return i10;
            }
            if (changeKind == 2) {
                try {
                    ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                    TextEditGroup editGroup2 = getEditGroup(event);
                    int tokenEndOffset = getScanner().getTokenEndOffset(1, aSTNode3.getStartPosition() + aSTNode3.getLength());
                    doTextRemoveAndVisit(i10, tokenEndOffset - i10, aSTNode3, editGroup2);
                    return tokenEndOffset;
                } catch (CoreException e10) {
                    handleException(e10);
                }
            } else if (changeKind == 4) {
                ASTNode aSTNode4 = (ASTNode) event.getOriginalValue();
                TextEditGroup editGroup3 = getEditGroup(event);
                TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode4);
                int startPosition = extendedRange.getStartPosition();
                int length = extendedRange.getLength();
                doTextRemoveAndVisit(startPosition, length, aSTNode4, editGroup3);
                doTextInsert(startPosition, (ASTNode) event.getNewValue(), getIndent(i10), true, editGroup3);
                try {
                    return getScanner().getTokenEndOffset(1, startPosition + length);
                } catch (CoreException e11) {
                    handleException(e11);
                }
            }
        }
        Object originalValue = getOriginalValue(aSTNode, structuralPropertyDescriptor);
        if (originalValue == null) {
            return i10;
        }
        int doVisit = doVisit((ASTNode) originalValue);
        try {
            return getScanner().getTokenEndOffset(1, doVisit);
        } catch (CoreException e12) {
            handleException(e12);
            return doVisit;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:6|7|(1:57)(1:10)|(3:(4:12|13|14|(6:16|(3:18|(1:20)(1:50)|21)(1:52)|22|23|25|(4:27|(1:29)(1:33)|30|31)(1:(2:35|36))))|25|(0)(0))|55|(0)(0)|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00be, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00bf, code lost:
    
        r7 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: CoreException -> 0x0039, TRY_LEAVE, TryCatch #3 {CoreException -> 0x0039, blocks: (B:14:0x0031, B:18:0x003f), top: B:13:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006c A[Catch: CoreException -> 0x0085, TRY_ENTER, TryCatch #2 {CoreException -> 0x0085, blocks: (B:27:0x006c, B:29:0x007e, B:30:0x008a, B:33:0x0088, B:35:0x009a), top: B:25:0x006a }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int rewriteOptionalTypeParameters(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str, boolean z10, boolean z11) {
        int doVisit;
        int i11;
        boolean z12;
        int i12;
        boolean z13;
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event == null || event.getChangeKind() == 0) {
            doVisit = doVisit(aSTNode, structuralPropertyDescriptor, i10);
        } else {
            RewriteEvent[] children = event.getChildren();
            try {
                boolean isAllOfKind = isAllOfKind(children, 1);
                i11 = (isAllOfKind && z10) ? getScanner().getNextStartOffset(i10, false) : i10;
                try {
                    if (!isAllOfKind) {
                        try {
                            if (isAllOfKind(children, 2)) {
                                z12 = true;
                                if (z12) {
                                    i12 = i11;
                                    z13 = z11;
                                } else {
                                    int tokenStartOffset = getScanner().getTokenStartOffset(11, i11);
                                    z13 = tokenStartOffset != i11 ? false : z11;
                                    i12 = tokenStartOffset;
                                }
                                doVisit = new ListRewriter().rewriteList(aSTNode, structuralPropertyDescriptor, i12, String.valueOf('<'), ", ");
                                if (!z12) {
                                    int nextStartOffset = getScanner().getNextStartOffset(getScanner().getTokenEndOffset(15, doVisit), false);
                                    doTextReplace(doVisit, nextStartOffset - doVisit, z13 ? String.valueOf(C15883c.f126249O) : Util.EMPTY_STRING, getEditGroup(children[children.length - 1]));
                                    return nextStartOffset;
                                }
                                if (isAllOfKind) {
                                    doTextInsert(doVisit, String.valueOf(String.valueOf('>') + str), getEditGroup(children[children.length - 1]));
                                    return doVisit;
                                }
                            }
                        } catch (CoreException e10) {
                            e = e10;
                            handleException(e);
                            doVisit = i11;
                            if (doVisit != i10) {
                            }
                            return doVisit;
                        }
                    }
                    if (!z12) {
                    }
                } catch (CoreException e11) {
                    e = e11;
                    i11 = doVisit;
                    handleException(e);
                    doVisit = i11;
                    if (doVisit != i10) {
                    }
                    return doVisit;
                }
                z12 = false;
                if (z12) {
                }
                doVisit = new ListRewriter().rewriteList(aSTNode, structuralPropertyDescriptor, i12, String.valueOf('<'), ", ");
            } catch (CoreException e12) {
                e = e12;
                i11 = i10;
            }
        }
        if (doVisit != i10) {
            try {
                return getScanner().getTokenEndOffset(15, doVisit);
            } catch (CoreException e13) {
                handleException(e13);
            }
        }
        return doVisit;
    }

    private int rewriteParagraphList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, int i11, int i12, int i13) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event == null || event.getChangeKind() == 0) {
            return doVisit(aSTNode, structuralPropertyDescriptor, i10);
        }
        RewriteEvent[] children = event.getChildren();
        ParagraphListRewriter paragraphListRewriter = new ParagraphListRewriter(i11, i12);
        StringBuffer stringBuffer = new StringBuffer();
        if (isAllOfKind(children, 1)) {
            for (int i14 = 0; i14 < i13; i14++) {
                stringBuffer.append(getLineDelimiter());
            }
            stringBuffer.append(createIndentString(i11));
        }
        return paragraphListRewriter.rewriteList(aSTNode, structuralPropertyDescriptor, i10, stringBuffer.toString());
    }

    private int rewriteRequiredNode(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event == null || event.getChangeKind() != 4) {
            return doVisit(aSTNode, structuralPropertyDescriptor, 0);
        }
        ASTNode aSTNode2 = (ASTNode) event.getOriginalValue();
        TextEditGroup editGroup = getEditGroup(event);
        TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode2);
        int startPosition = extendedRange.getStartPosition();
        int length = extendedRange.getLength();
        doTextRemoveAndVisit(startPosition, length, aSTNode2, editGroup);
        doTextInsert(startPosition, (ASTNode) event.getNewValue(), getIndent(startPosition), true, editGroup);
        return startPosition + length;
    }

    private void rewriteReturnType(MethodDeclaration methodDeclaration, boolean z10, boolean z11) {
        ChildPropertyDescriptor childPropertyDescriptor = methodDeclaration.getAST().apiLevel() == 2 ? INTERNAL_METHOD_RETURN_TYPE_PROPERTY : MethodDeclaration.RETURN_TYPE2_PROPERTY;
        ASTNode aSTNode = (ASTNode) getOriginalValue(methodDeclaration, childPropertyDescriptor);
        boolean z12 = (aSTNode == null || aSTNode.getStartPosition() == -1) ? false : true;
        if (!z11 && z12) {
            rewriteRequiredNode(methodDeclaration, childPropertyDescriptor);
            ensureSpaceAfterReplace(methodDeclaration, childPropertyDescriptor);
            return;
        }
        ASTNode aSTNode2 = (ASTNode) getNewValue(methodDeclaration, childPropertyDescriptor);
        if (z11 || !(z12 || aSTNode2 == aSTNode)) {
            int startPosition = ((ASTNode) getOriginalValue(methodDeclaration, MethodDeclaration.NAME_PROPERTY)).getStartPosition();
            TextEditGroup editGroup = getEditGroup(methodDeclaration, childPropertyDescriptor);
            if (z10 || !z12) {
                doTextInsert(startPosition, aSTNode2, getIndent(startPosition), true, editGroup);
                doTextInsert(startPosition, " ", editGroup);
            } else {
                int extendedOffset = getExtendedOffset(aSTNode);
                doTextRemoveAndVisit(extendedOffset, startPosition - extendedOffset, aSTNode, editGroup);
            }
        }
    }

    private int rewriteTypeAnnotations(ASTNode aSTNode, ChildListPropertyDescriptor childListPropertyDescriptor, int i10) {
        return rewriteModifiers2(aSTNode, childListPropertyDescriptor, i10);
    }

    private int rewriteVarargsAnnotations(ASTNode aSTNode, ChildListPropertyDescriptor childListPropertyDescriptor, int i10) {
        return rewriteModifiers2(aSTNode, childListPropertyDescriptor, i10);
    }

    private void visitReferenceTypeArguments(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        if (isChanged(aSTNode, structuralPropertyDescriptor)) {
            try {
                rewriteOptionalTypeParameters(aSTNode, structuralPropertyDescriptor, getScanner().getTokenEndOffset(7, i10), Util.EMPTY_STRING, false, false);
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
    }

    private void voidVisitList(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            doVisit((ASTNode) it.next());
        }
    }

    public final void addEdit(TextEdit textEdit) {
        this.currentEdit.addChild(textEdit);
    }

    public final void addEditGroup(TextEditGroup textEditGroup, TextEdit textEdit) {
        textEditGroup.addTextEdit(textEdit);
    }

    public final String createIndentString(int i10) {
        return this.formatter.createIndentString(i10);
    }

    public final void doCopySourcePostVisit(ASTNode aSTNode, Stack stack) {
        while (!stack.isEmpty() && stack.peek() == aSTNode) {
            stack.pop();
            this.currentEdit = this.currentEdit.getParent();
        }
    }

    public final void doCopySourcePreVisit(RewriteEventStore.CopySourceInfo[] copySourceInfoArr, Stack stack) {
        if (copySourceInfoArr != null) {
            for (RewriteEventStore.CopySourceInfo copySourceInfo : copySourceInfoArr) {
                TextEdit copySourceEdit = getCopySourceEdit(copySourceInfo);
                addEdit(copySourceEdit);
                this.currentEdit = copySourceEdit;
                stack.push(copySourceInfo.getNode());
            }
        }
    }

    public final void doTextInsert(int i10, String str, TextEditGroup textEditGroup) {
        if (str.length() > 0) {
            if (this.lineCommentEndOffsets.isEndOfLineComment(i10, this.content)) {
                if (!str.startsWith(getLineDelimiter())) {
                    InsertEdit insertEdit = new InsertEdit(i10, getLineDelimiter());
                    addEdit(insertEdit);
                    if (textEditGroup != null) {
                        addEditGroup(textEditGroup, insertEdit);
                    }
                }
                this.lineCommentEndOffsets.remove(i10);
            }
            InsertEdit insertEdit2 = new InsertEdit(i10, str);
            addEdit(insertEdit2);
            if (textEditGroup != null) {
                addEditGroup(textEditGroup, insertEdit2);
            }
        }
    }

    public final TextEdit doTextRemove(int i10, int i11, TextEditGroup textEditGroup) {
        if (i11 == 0) {
            return null;
        }
        DeleteEdit deleteEdit = new DeleteEdit(i10, i11);
        addEdit(deleteEdit);
        if (textEditGroup != null) {
            addEditGroup(textEditGroup, deleteEdit);
        }
        return deleteEdit;
    }

    public final void doTextRemoveAndVisit(int i10, int i11, ASTNode aSTNode, TextEditGroup textEditGroup) {
        TextEdit doTextRemove = doTextRemove(i10, i11, textEditGroup);
        if (doTextRemove == null) {
            voidVisit(aSTNode);
            return;
        }
        this.currentEdit = doTextRemove;
        voidVisit(aSTNode);
        this.currentEdit = doTextRemove.getParent();
    }

    public final int doVisit(ASTNode aSTNode) {
        aSTNode.accept(this);
        return getExtendedEnd(aSTNode);
    }

    public final char[] getContent() {
        return this.content;
    }

    public final TextEdit getCopySourceEdit(RewriteEventStore.CopySourceInfo copySourceInfo) {
        throw null;
    }

    public final RewriteEvent getEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.eventStore.getEvent(aSTNode, structuralPropertyDescriptor);
    }

    public final int getExtendedEnd(ASTNode aSTNode) {
        TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode);
        return extendedRange.getStartPosition() + extendedRange.getLength();
    }

    public final int getExtendedOffset(ASTNode aSTNode) {
        return getExtendedRange(aSTNode).getStartPosition();
    }

    public final TargetSourceRangeComputer.SourceRange getExtendedRange(ASTNode aSTNode) {
        return this.eventStore.isRangeCopyPlaceholder(aSTNode) ? new TargetSourceRangeComputer.SourceRange(aSTNode.getStartPosition(), aSTNode.getLength()) : this.extendedSourceRangeComputer.computeSourceRange(aSTNode);
    }

    public final int getIndent(int i10) {
        return this.formatter.computeIndentUnits(getIndentOfLine(i10));
    }

    public final String getIndentAtOffset(int i10) {
        return this.formatter.getIndentString(getIndentOfLine(i10));
    }

    public final LineCommentEndOffsets getLineCommentEndOffsets() {
        return this.lineCommentEndOffsets;
    }

    public final String getLineDelimiter() {
        return this.formatter.getLineDelimiter();
    }

    public final LineInformation getLineInformation() {
        return this.lineInfo;
    }

    public final TokenScanner getScanner() {
        if (this.tokenScanner == null) {
            CompilerOptions compilerOptions = new CompilerOptions(this.options);
            Scanner scanner = this.recoveryScannerData == null ? new Scanner(true, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, true) : new RecoveryScanner(false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, true, this.recoveryScannerData);
            scanner.setSource(this.content);
            this.tokenScanner = new TokenScanner(scanner);
        }
        return this.tokenScanner;
    }

    public final void handleException(Throwable th2) {
        throw new IllegalArgumentException("Document does not match the AST", th2);
    }

    public final boolean isInsertBoundToPrevious(ASTNode aSTNode) {
        return this.eventStore.isInsertBoundToPrevious(aSTNode);
    }

    @Override
    public void postVisit(ASTNode aSTNode) {
        if (this.eventStore.getTrackedNodeData(aSTNode) != null) {
            this.currentEdit = this.currentEdit.getParent();
        }
        doCopySourcePostVisit(aSTNode, this.sourceCopyEndNodes);
    }

    @Override
    public void preVisit(ASTNode aSTNode) {
        doCopySourcePreVisit(this.eventStore.getNodeCopySources(aSTNode), this.sourceCopyEndNodes);
        TextEditGroup trackedNodeData = this.eventStore.getTrackedNodeData(aSTNode);
        if (trackedNodeData != null) {
            TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode);
            RangeMarker rangeMarker = new RangeMarker(extendedRange.getStartPosition(), extendedRange.getLength());
            addEditGroup(trackedNodeData, rangeMarker);
            addEdit(rangeMarker);
            this.currentEdit = rangeMarker;
        }
        ensureSpaceBeforeReplace(aSTNode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public int retrieveRightBracketEndPosition(int i10, int i11, boolean z10) throws CoreException {
        TokenScanner scanner = getScanner();
        scanner.setOffset(i10);
        while (true) {
            int readNext = scanner.readNext(true);
            if (readNext == 61) {
                return -1;
            }
            if (readNext == 6) {
                z10++;
            } else if (readNext == 66 && z10 - 1 == 0 && i11 - 1 == 0) {
                return scanner.getCurrentEndOffset();
            }
        }
    }

    public int rewriteExtraDimensionsInfo(ASTNode aSTNode, int i10, ChildListPropertyDescriptor childListPropertyDescriptor) {
        return rewriteNodeList(aSTNode, childListPropertyDescriptor, i10, " ", "");
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        int i10;
        if (!hasChildrenChanges(compilationUnit)) {
            return doVisitUnchangedChildren(compilationUnit);
        }
        boolean z10 = compilationUnit.getAST().apiLevel() >= 9 && compilationUnit.getModule() != null;
        if (z10) {
            i10 = 0;
        } else {
            ChildPropertyDescriptor childPropertyDescriptor = CompilationUnit.PACKAGE_PROPERTY;
            int rewriteNode = rewriteNode(compilationUnit, childPropertyDescriptor, 0, ASTRewriteFormatter.NONE);
            if (getChangeKind(compilationUnit, childPropertyDescriptor) == 1) {
                doTextInsert(0, getLineDelimiter(), getEditGroup(compilationUnit, childPropertyDescriptor));
            }
            i10 = rewriteNode;
        }
        int rewriteParagraphList = rewriteParagraphList(compilationUnit, CompilationUnit.IMPORTS_PROPERTY, i10, 0, 0, 2);
        if (z10) {
            rewriteNode(compilationUnit, CompilationUnit.MODULE_PROPERTY, rewriteParagraphList, ASTRewriteFormatter.NONE);
        } else {
            rewriteParagraphList(compilationUnit, CompilationUnit.TYPES_PROPERTY, rewriteParagraphList, 0, -1, 2);
        }
        return false;
    }

    public final void voidVisit(ASTNode aSTNode) {
        aSTNode.accept(this);
    }

    public class ListRewriter {
        protected String constantSeparator;
        protected RewriteEvent[] list;
        protected int startPos;

        public ListRewriter() {
        }

        private boolean insertAfterSeparator(ASTNode aSTNode) {
            return !ASTRewriteAnalyzer.this.isInsertBoundToPrevious(aSTNode);
        }

        private boolean lineCommentSwallowsActualCode(int i10) {
            if (ASTRewriteAnalyzer.this.getLineCommentEndOffsets().isEndOfLineComment(i10)) {
                RewriteEvent[] rewriteEventArr = this.list;
                int endOfNode = getEndOfNode((ASTNode) rewriteEventArr[rewriteEventArr.length - 1].getOriginalValue());
                LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
                try {
                    if (lineInformation.getLineOfOffset(endOfNode) == lineInformation.getLineOfOffset(ASTRewriteAnalyzer.this.getScanner().getNextStartOffset(endOfNode, false))) {
                        return true;
                    }
                } catch (CoreException unused) {
                }
            }
            return false;
        }

        public int getEndOfNode(ASTNode aSTNode) {
            return ASTRewriteAnalyzer.this.getExtendedEnd(aSTNode);
        }

        public int getInitialIndent() {
            return ASTRewriteAnalyzer.this.getIndent(this.startPos);
        }

        public final ASTNode getNewNode(int i10) {
            return (ASTNode) this.list[i10].getNewValue();
        }

        public int getNodeIndent(int i10) {
            ASTNode originalNode = getOriginalNode(i10);
            if (originalNode != null) {
                return ASTRewriteAnalyzer.this.getIndent(originalNode.getStartPosition());
            }
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                ASTNode originalNode2 = getOriginalNode(i11);
                if (originalNode2 != null) {
                    return ASTRewriteAnalyzer.this.getIndent(originalNode2.getStartPosition());
                }
            }
            return getInitialIndent();
        }

        public final ASTNode getOriginalNode(int i10) {
            return (ASTNode) this.list[i10].getOriginalValue();
        }

        public String getSeparatorString(int i10) {
            return this.constantSeparator;
        }

        public int getStartOfNextNode(int i10, int i11) {
            while (true) {
                RewriteEvent[] rewriteEventArr = this.list;
                if (i10 >= rewriteEventArr.length) {
                    return i11;
                }
                RewriteEvent rewriteEvent = rewriteEventArr[i10];
                if (rewriteEvent.getChangeKind() != 1) {
                    return ASTRewriteAnalyzer.this.getExtendedOffset((ASTNode) rewriteEvent.getOriginalValue());
                }
                i10++;
            }
        }

        public boolean mustRemoveSeparator(int i10, int i11) {
            return true;
        }

        public final int rewriteList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str, String str2) {
            this.constantSeparator = str2;
            return rewriteList(aSTNode, structuralPropertyDescriptor, str, (String) null, i10);
        }

        public void updateIndent(int i10, int i11, int i12, TextEditGroup textEditGroup) {
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x018a A[Catch: CoreException -> 0x0191, TRY_LEAVE, TryCatch #2 {CoreException -> 0x0191, blocks: (B:95:0x0179, B:97:0x018a), top: B:94:0x0179 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int rewriteList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, String str, String str2, int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            int nextEndOffset;
            int i17;
            int i18;
            int i19;
            int i20;
            int startOfNextNode;
            TokenScanner scanner;
            TokenScanner scanner2;
            int i21;
            int i22;
            String str3 = str2;
            int i23 = i10;
            this.startPos = i23;
            RewriteEvent[] children = ASTRewriteAnalyzer.this.getEvent(aSTNode, structuralPropertyDescriptor).getChildren();
            this.list = children;
            int length = children.length;
            if (length == 0) {
                return this.startPos;
            }
            int i24 = 0;
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            int i28 = 0;
            while (true) {
                i11 = 1;
                if (i28 >= length) {
                    break;
                }
                int i29 = length;
                int i30 = i24;
                int i31 = i27;
                int changeKind = this.list[i28].getChangeKind();
                if (changeKind != 1) {
                    if (i25 == -1) {
                        i25 = ASTRewriteAnalyzer.this.getExtendedOffset((ASTNode) this.list[i28].getOriginalValue());
                    }
                    i27 = i28;
                } else {
                    i27 = i31;
                }
                if (changeKind != 2) {
                    i26 = i28;
                }
                i28++;
                str3 = str2;
                i24 = i30;
                length = i29;
            }
            int i32 = i25 == -1 ? 1 : i24;
            if (i32 != 0) {
                if (str.length() > 0) {
                    ASTRewriteAnalyzer.this.doTextInsert(i23, str, ASTRewriteAnalyzer.this.getEditGroup(this.list[i24]));
                }
                i25 = i23;
            }
            if (i26 != -1) {
                i23 = i25;
            }
            int i33 = i23;
            int i34 = i24;
            int i35 = i34;
            int i36 = 1;
            while (i34 < length) {
                RewriteEvent rewriteEvent = this.list[i34];
                int changeKind2 = rewriteEvent.getChangeKind();
                int i37 = i34 + 1;
                if (changeKind2 == i11) {
                    TextEditGroup editGroup = ASTRewriteAnalyzer.this.getEditGroup(rewriteEvent);
                    ASTNode aSTNode2 = (ASTNode) rewriteEvent.getNewValue();
                    if (i36 == 0) {
                        ASTRewriteAnalyzer.this.doTextInsert(i23, getSeparatorString(i34 - 1), editGroup);
                        i36 = 1;
                        i11 = 1;
                    }
                    if (i36 != i11 && !insertAfterSeparator(aSTNode2)) {
                        ASTRewriteAnalyzer.this.doTextInsert(i33, getSeparatorString(i34 - 1), editGroup);
                        ASTRewriteAnalyzer.this.doTextInsert(i33, aSTNode2, getNodeIndent(i34), true, editGroup);
                        int i38 = i36;
                        i21 = changeKind2;
                        i22 = i38;
                    } else {
                        if (i36 == 2) {
                            updateIndent(i35, i23, i34, editGroup);
                        }
                        i21 = changeKind2;
                        ASTRewriteAnalyzer.this.doTextInsert(i23, aSTNode2, getNodeIndent(i34), true, editGroup);
                        if (i34 != i26) {
                            if (this.list[i37].getChangeKind() != 1) {
                                ASTRewriteAnalyzer.this.doTextInsert(i23, getSeparatorString(i34), editGroup);
                            } else {
                                i22 = 0;
                            }
                        }
                        i22 = 1;
                    }
                    if (i32 != 0 && str3 != null && str2.length() > 0) {
                        ASTRewriteAnalyzer.this.doTextInsert(i23, str3, editGroup);
                    }
                    i12 = length;
                    i14 = i21;
                    i16 = i27;
                    i13 = i32;
                    i15 = 0;
                    i36 = i22;
                } else {
                    int i39 = changeKind2;
                    if (i39 == 2) {
                        ASTNode aSTNode3 = (ASTNode) rewriteEvent.getOriginalValue();
                        TextEditGroup editGroup2 = ASTRewriteAnalyzer.this.getEditGroup(rewriteEvent);
                        int endOfNode = getEndOfNode(aSTNode3);
                        i12 = length;
                        try {
                            scanner2 = ASTRewriteAnalyzer.this.getScanner();
                            i17 = i33;
                        } catch (CoreException unused) {
                            i17 = i33;
                        }
                        try {
                            int extendedOffset = ASTRewriteAnalyzer.this.getExtendedOffset(aSTNode3);
                            i18 = i27;
                            i13 = i32;
                            int i40 = i17;
                            while (true) {
                                try {
                                    if (!TokenScanner.isComment(scanner2.readNext(i40, false))) {
                                        i19 = i39;
                                        break;
                                    }
                                    i19 = i39;
                                    try {
                                        int nextEndOffset2 = scanner2.getNextEndOffset(i40, false);
                                        if (nextEndOffset2 >= extendedOffset) {
                                            break;
                                        }
                                        i40 = nextEndOffset2;
                                        i39 = i19;
                                    } catch (CoreException unused2) {
                                        i20 = i17;
                                        if (i34 <= i26) {
                                        }
                                        if (i34 < i26) {
                                        }
                                        startOfNextNode = getStartOfNextNode(i37, endOfNode);
                                        try {
                                            scanner = ASTRewriteAnalyzer.this.getScanner();
                                            if (TokenScanner.isComment(scanner.readNext(endOfNode, false))) {
                                                startOfNextNode = endOfNode;
                                            }
                                        } catch (CoreException unused3) {
                                        }
                                        ASTRewriteAnalyzer aSTRewriteAnalyzer = ASTRewriteAnalyzer.this;
                                        aSTRewriteAnalyzer.doTextRemoveAndVisit(i23, endOfNode - i23, aSTNode3, aSTRewriteAnalyzer.getEditGroup(rewriteEvent));
                                        if (mustRemoveSeparator(i23, i34)) {
                                        }
                                        i33 = endOfNode;
                                        i23 = startOfNextNode;
                                        i16 = i18;
                                        i14 = i19;
                                        i36 = 1;
                                        i15 = 0;
                                        i27 = i16;
                                        i35 = i14;
                                        i34 = i37;
                                        length = i12;
                                        i32 = i13;
                                        i11 = 1;
                                        str3 = str2;
                                    }
                                } catch (CoreException unused4) {
                                    i19 = i39;
                                }
                            }
                            if (i23 < i40) {
                                i23 = extendedOffset;
                            }
                            i20 = i40;
                        } catch (CoreException unused5) {
                            i18 = i27;
                            i19 = i39;
                            i13 = i32;
                            i20 = i17;
                            if (i34 <= i26) {
                            }
                            if (i34 < i26) {
                            }
                            startOfNextNode = getStartOfNextNode(i37, endOfNode);
                            scanner = ASTRewriteAnalyzer.this.getScanner();
                            if (TokenScanner.isComment(scanner.readNext(endOfNode, false))) {
                            }
                            ASTRewriteAnalyzer aSTRewriteAnalyzer2 = ASTRewriteAnalyzer.this;
                            aSTRewriteAnalyzer2.doTextRemoveAndVisit(i23, endOfNode - i23, aSTNode3, aSTRewriteAnalyzer2.getEditGroup(rewriteEvent));
                            if (mustRemoveSeparator(i23, i34)) {
                            }
                            i33 = endOfNode;
                            i23 = startOfNextNode;
                            i16 = i18;
                            i14 = i19;
                            i36 = 1;
                            i15 = 0;
                            i27 = i16;
                            i35 = i14;
                            i34 = i37;
                            length = i12;
                            i32 = i13;
                            i11 = 1;
                            str3 = str2;
                        }
                        if (i34 <= i26 && i36 == 2) {
                            ASTRewriteAnalyzer.this.doTextRemove(i20, i23 - i20, editGroup2);
                            ASTRewriteAnalyzer.this.doTextRemoveAndVisit(i23, endOfNode - i23, aSTNode3, editGroup2);
                            if (lineCommentSwallowsActualCode(i20)) {
                                ASTRewriteAnalyzer aSTRewriteAnalyzer3 = ASTRewriteAnalyzer.this;
                                aSTRewriteAnalyzer3.doTextInsert(endOfNode, aSTRewriteAnalyzer3.getLineDelimiter(), editGroup2);
                            }
                            i23 = endOfNode;
                            i33 = i23;
                            i16 = i18;
                            i14 = i19;
                        } else {
                            if (i34 < i26) {
                                updateIndent(i35, i23, i34, editGroup2);
                            }
                            startOfNextNode = getStartOfNextNode(i37, endOfNode);
                            scanner = ASTRewriteAnalyzer.this.getScanner();
                            if (TokenScanner.isComment(scanner.readNext(endOfNode, false)) && startOfNextNode != scanner.getNextStartOffset(endOfNode, false)) {
                                startOfNextNode = endOfNode;
                            }
                            ASTRewriteAnalyzer aSTRewriteAnalyzer22 = ASTRewriteAnalyzer.this;
                            aSTRewriteAnalyzer22.doTextRemoveAndVisit(i23, endOfNode - i23, aSTNode3, aSTRewriteAnalyzer22.getEditGroup(rewriteEvent));
                            if (mustRemoveSeparator(i23, i34)) {
                                ASTRewriteAnalyzer.this.doTextRemove(endOfNode, startOfNextNode - endOfNode, editGroup2);
                            }
                            i33 = endOfNode;
                            i23 = startOfNextNode;
                            i16 = i18;
                            i14 = i19;
                            i36 = 1;
                        }
                        i15 = 0;
                    } else {
                        i12 = length;
                        int i41 = i33;
                        int i42 = i27;
                        i13 = i32;
                        i14 = i39;
                        if (i14 == 4) {
                            ASTNode aSTNode4 = (ASTNode) rewriteEvent.getOriginalValue();
                            i33 = getEndOfNode(aSTNode4);
                            TextEditGroup editGroup3 = ASTRewriteAnalyzer.this.getEditGroup(rewriteEvent);
                            ASTNode aSTNode5 = (ASTNode) rewriteEvent.getNewValue();
                            updateIndent(i35, i23, i34, editGroup3);
                            try {
                                TokenScanner scanner3 = ASTRewriteAnalyzer.this.getScanner();
                                int extendedOffset2 = ASTRewriteAnalyzer.this.getExtendedOffset(aSTNode4);
                                int i43 = i41;
                                i15 = 0;
                                while (TokenScanner.isComment(scanner3.readNext(i43, false)) && (nextEndOffset = scanner3.getNextEndOffset(i43, false)) < extendedOffset2) {
                                    try {
                                        i43 = nextEndOffset;
                                    } catch (CoreException unused6) {
                                    }
                                }
                                if (i23 < i43) {
                                    i23 = extendedOffset2;
                                }
                            } catch (CoreException unused7) {
                                i15 = 0;
                            }
                            ASTRewriteAnalyzer.this.doTextRemoveAndVisit(i23, i33 - i23, aSTNode4, editGroup3);
                            ASTRewriteAnalyzer.this.doTextInsert(i23, aSTNode5, getNodeIndent(i34), true, editGroup3);
                        } else {
                            i15 = 0;
                            ASTRewriteAnalyzer.this.voidVisit((ASTNode) rewriteEvent.getOriginalValue());
                            i33 = i41;
                        }
                        i16 = i42;
                        if (i34 == i16) {
                            if (i14 == 0) {
                                i33 = getEndOfNode((ASTNode) rewriteEvent.getOriginalValue());
                            }
                            i23 = i33;
                            i36 = i15;
                        } else if (this.list[i37].getChangeKind() != 0) {
                            if (i14 == 0) {
                                i33 = getEndOfNode((ASTNode) rewriteEvent.getOriginalValue());
                            }
                            i23 = getStartOfNextNode(i37, i33);
                            i36 = 2;
                        }
                    }
                }
                i27 = i16;
                i35 = i14;
                i34 = i37;
                length = i12;
                i32 = i13;
                i11 = 1;
                str3 = str2;
            }
            return i23;
        }

        public final int rewriteList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str) {
            return rewriteList(aSTNode, structuralPropertyDescriptor, str, (String) null, i10);
        }

        public final int rewriteList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str, String str2, String str3) {
            this.constantSeparator = str3;
            return rewriteList(aSTNode, structuralPropertyDescriptor, str, str2, i10);
        }
    }

    private final void voidVisit(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        Object originalValue = getOriginalValue(aSTNode, structuralPropertyDescriptor);
        if (structuralPropertyDescriptor.isChildProperty() && originalValue != null) {
            voidVisit((ASTNode) originalValue);
        } else if (structuralPropertyDescriptor.isChildListProperty()) {
            voidVisitList((List) originalValue);
        }
    }

    private final int doVisit(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10) {
        Object originalValue = getOriginalValue(aSTNode, structuralPropertyDescriptor);
        if (!structuralPropertyDescriptor.isChildProperty() || originalValue == null) {
            return structuralPropertyDescriptor.isChildListProperty() ? doVisitList((List) originalValue, i10) : i10;
        }
        return doVisit((ASTNode) originalValue);
    }

    public final TextEditGroup getEditGroup(RewriteEvent rewriteEvent) {
        return this.eventStore.getEventEditGroup(rewriteEvent);
    }

    private int rewriteNodeList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, int i10, String str, String str2) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        if (event != null && event.getChangeKind() != 0) {
            return new ListRewriter().rewriteList(aSTNode, structuralPropertyDescriptor, i10, str, str2);
        }
        return doVisit(aSTNode, structuralPropertyDescriptor, i10);
    }

    private void rewriteExtraDimensions(int i10, int i11, int i12, TextEditGroup textEditGroup) {
        if (i10 < i11) {
            while (i10 < i11) {
                doTextInsert(i12, v.f99450n, textEditGroup);
                i10++;
            }
        } else if (i11 < i10) {
            try {
                getScanner().setOffset(i12);
                while (i11 < i10) {
                    getScanner().readToToken(66);
                    i11++;
                }
                doTextRemove(i12, getScanner().getCurrentEndOffset() - i12, textEditGroup);
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        int doVisit;
        int i10;
        String str;
        List modifiers;
        int size;
        if (!hasChildrenChanges(typeDeclaration)) {
            return doVisitUnchangedChildren(typeDeclaration);
        }
        int apiLevel = typeDeclaration.getAST().apiLevel();
        int rewriteJavadoc = rewriteJavadoc(typeDeclaration, TypeDeclaration.JAVADOC_PROPERTY);
        boolean z10 = apiLevel == 2;
        if (z10) {
            rewriteModifiers(typeDeclaration, INTERNAL_TYPE_MODIFIERS_PROPERTY, rewriteJavadoc);
        } else {
            rewriteModifiers2(typeDeclaration, TypeDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = TypeDeclaration.INTERFACE_PROPERTY;
        boolean booleanValue = ((Boolean) getOriginalValue(typeDeclaration, simplePropertyDescriptor)).booleanValue();
        boolean isChanged = isChanged(typeDeclaration, simplePropertyDescriptor);
        if (isChanged) {
            int i11 = booleanValue ? 70 : 67;
            try {
                int startPosition = typeDeclaration.getStartPosition();
                if (!z10 && (size = (modifiers = typeDeclaration.modifiers()).size()) != 0) {
                    ASTNode aSTNode = (ASTNode) modifiers.get(size - 1);
                    startPosition = aSTNode.getLength() + aSTNode.getStartPosition();
                }
                getScanner().readToToken(i11, startPosition);
                String str2 = booleanValue ? "class" : "interface";
                int currentStartOffset = getScanner().getCurrentStartOffset();
                doTextReplace(currentStartOffset, getScanner().getCurrentEndOffset() - currentStartOffset, str2, getEditGroup(typeDeclaration, simplePropertyDescriptor));
            } catch (CoreException unused) {
            }
        }
        int rewriteRequiredNode = rewriteRequiredNode(typeDeclaration, TypeDeclaration.NAME_PROPERTY);
        if (!z10) {
            rewriteRequiredNode = rewriteOptionalTypeParameters(typeDeclaration, TypeDeclaration.TYPE_PARAMETERS_PROPERTY, rewriteRequiredNode, Util.EMPTY_STRING, false, true);
        }
        int i12 = rewriteRequiredNode;
        String str3 = " extends ";
        if (!booleanValue || isChanged) {
            ChildPropertyDescriptor childPropertyDescriptor = z10 ? INTERNAL_TYPE_SUPERCLASS_PROPERTY : TypeDeclaration.SUPERCLASS_TYPE_PROPERTY;
            RewriteEvent event = getEvent(typeDeclaration, childPropertyDescriptor);
            int changeKind = event != null ? event.getChangeKind() : 0;
            if (changeKind == 0) {
                i12 = doVisit(typeDeclaration, childPropertyDescriptor, i12);
            } else if (changeKind == 1) {
                doTextInsert(i12, " extends ", getEditGroup(event));
                doTextInsert(i12, (ASTNode) event.getNewValue(), 0, false, getEditGroup(event));
            } else if (changeKind == 2) {
                ASTNode aSTNode2 = (ASTNode) event.getOriginalValue();
                int extendedEnd = getExtendedEnd(aSTNode2);
                doTextRemoveAndVisit(i12, extendedEnd - i12, aSTNode2, getEditGroup(event));
                i12 = extendedEnd;
            } else if (changeKind == 4) {
                ASTNode aSTNode3 = (ASTNode) event.getOriginalValue();
                TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(aSTNode3);
                int startPosition2 = extendedRange.getStartPosition();
                int length = extendedRange.getLength();
                doTextRemoveAndVisit(startPosition2, length, aSTNode3, getEditGroup(event));
                doTextInsert(startPosition2, (ASTNode) event.getNewValue(), 0, false, getEditGroup(event));
                i12 = startPosition2 + length;
            }
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = z10 ? INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY : TypeDeclaration.SUPER_INTERFACE_TYPES_PROPERTY;
        RewriteEvent event2 = getEvent(typeDeclaration, childListPropertyDescriptor);
        if (event2 != null && event2.getChangeKind() != 0) {
            if (booleanValue == isChanged) {
                str3 = " implements ";
            }
            if (!isChanged || ((List) event2.getNewValue()).isEmpty()) {
                i10 = i12;
                str = str3;
            } else {
                List list = (List) event2.getOriginalValue();
                int startPosition3 = !list.isEmpty() ? ((ASTNode) list.get(0)).getStartPosition() : i12;
                doTextReplace(i12, startPosition3 - i12, str3, getEditGroup(typeDeclaration, TypeDeclaration.INTERFACE_PROPERTY));
                i10 = startPosition3;
                str = Util.EMPTY_STRING;
            }
            doVisit = rewriteNodeList(typeDeclaration, childListPropertyDescriptor, i10, str, ", ");
        } else {
            if (isChanged) {
                List list2 = (List) getOriginalValue(typeDeclaration, childListPropertyDescriptor);
                if (!list2.isEmpty()) {
                    if (booleanValue) {
                        str3 = " implements ";
                    }
                    doTextReplace(i12, ((ASTNode) list2.get(0)).getStartPosition() - i12, str3, getEditGroup(typeDeclaration, TypeDeclaration.INTERFACE_PROPERTY));
                }
            }
            doVisit = doVisit(typeDeclaration, childListPropertyDescriptor, i12);
        }
        rewriteParagraphList(typeDeclaration, TypeDeclaration.BODY_DECLARATIONS_PROPERTY, getPosAfterLeftBrace(doVisit), getIndent(typeDeclaration.getStartPosition()) + 1, -1, 2);
        return false;
    }

    public final void doTextInsert(int i10, ASTNode aSTNode, int i11, boolean z10, TextEditGroup textEditGroup) {
        String indentString;
        ArrayList arrayList = new ArrayList();
        String formattedResult = this.formatter.getFormattedResult(aSTNode, i11, arrayList);
        int i12 = 0;
        if (z10) {
            while (i12 < formattedResult.length() && ScannerHelper.isWhitespace(formattedResult.charAt(i12))) {
                i12++;
            }
        }
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            ASTRewriteFormatter.NodeMarker nodeMarker = (ASTRewriteFormatter.NodeMarker) arrayList.get(i13);
            int i14 = nodeMarker.offset;
            if (i14 >= i12) {
                doTextInsert(i10, formattedResult.substring(i12, i14), textEditGroup);
                Object obj = nodeMarker.data;
                if (obj instanceof TextEditGroup) {
                    RangeMarker rangeMarker = new RangeMarker(i10, 0);
                    addEditGroup((TextEditGroup) obj, rangeMarker);
                    addEdit(rangeMarker);
                    if (nodeMarker.length != 0) {
                        int i15 = nodeMarker.length + i14;
                        int i16 = i13 + 1;
                        while (i16 < arrayList.size() && ((ASTRewriteFormatter.NodeMarker) arrayList.get(i16)).offset < i15) {
                            i16++;
                        }
                        nodeMarker.offset = i15;
                        nodeMarker.length = 0;
                        arrayList.add(i16, nodeMarker);
                    }
                } else {
                    int currentLineStart = getCurrentLineStart(formattedResult, i14);
                    if (currentLineStart == 0) {
                        indentString = this.formatter.createIndentString(i11);
                    } else {
                        indentString = this.formatter.getIndentString(formattedResult.substring(currentLineStart, i14));
                    }
                    String str = indentString;
                    if (obj instanceof NodeInfoStore.CopyPlaceholderData) {
                        RewriteEventStore.CopySourceInfo copySourceInfo = ((NodeInfoStore.CopyPlaceholderData) obj).copySource;
                        doTextCopy(getCopySourceEdit(copySourceInfo), i10, getIndent(copySourceInfo.getNode().getStartPosition()), str, textEditGroup);
                        i14 += nodeMarker.length;
                        if (needsNewLineForLineComment(copySourceInfo.getNode(), formattedResult, i14)) {
                            doTextInsert(i10, getLineDelimiter(), textEditGroup);
                        }
                    } else if (obj instanceof NodeInfoStore.StringPlaceholderData) {
                        doTextInsert(i10, this.formatter.changeIndent(((NodeInfoStore.StringPlaceholderData) obj).code, 0, str), textEditGroup);
                        i14 += nodeMarker.length;
                    }
                }
                i12 = i14;
            }
        }
        if (i12 < formattedResult.length()) {
            doTextInsert(i10, formattedResult.substring(i12), textEditGroup);
        }
    }

    @Override
    public boolean visit(Dimension dimension) {
        if (!hasChildrenChanges(dimension)) {
            return doVisitUnchangedChildren(dimension);
        }
        boolean z10 = true;
        if (dimension.getParent().getNodeType() == 5) {
            ChildListPropertyDescriptor childListPropertyDescriptor = Dimension.ANNOTATIONS_PROPERTY;
            List list = (List) getOriginalValue(dimension, childListPropertyDescriptor);
            List list2 = (List) getNewValue(dimension, childListPropertyDescriptor);
            int size = list.size();
            int size2 = list2.size();
            if (size > 0 && size2 == 0) {
                int previousTokenEndOffset = getPreviousTokenEndOffset(dimension, 37);
                int startPosition = ((ASTNode) list.get(0)).getStartPosition();
                if (previousTokenEndOffset >= 0 && startPosition > previousTokenEndOffset) {
                    doTextRemove(previousTokenEndOffset, startPosition - previousTokenEndOffset, null);
                }
                ASTNode aSTNode = (ASTNode) list.get(size - 1);
                int startPosition2 = aSTNode.getStartPosition() + aSTNode.getLength();
                try {
                    doTextRemove(startPosition2, getScanner().getNextStartOffset(startPosition2, false) - startPosition2, null);
                } catch (CoreException e10) {
                    e10.printStackTrace();
                }
            } else if (size == 0 && size2 > 0 && ScannerHelper.isWhitespace(this.content[dimension.getStartPosition() - 1])) {
                z10 = false;
            }
        }
        rewriteNodeList(dimension, Dimension.ANNOTATIONS_PROPERTY, dimension.getStartPosition(), z10 ? String.valueOf(C15883c.f126249O) : Util.EMPTY_STRING, String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O));
        return false;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        if (!hasChildrenChanges(methodDeclaration)) {
            return doVisitUnchangedChildren(methodDeclaration);
        }
        int rewriteJavadoc = rewriteJavadoc(methodDeclaration, MethodDeclaration.JAVADOC_PROPERTY);
        int apiLevel = methodDeclaration.getAST().apiLevel();
        if (apiLevel == 2) {
            rewriteModifiers(methodDeclaration, INTERNAL_METHOD_MODIFIERS_PROPERTY2, rewriteJavadoc);
        } else {
            int rewriteModifiers2 = rewriteModifiers2(methodDeclaration, MethodDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc);
            rewriteOptionalTypeParameters(methodDeclaration, MethodDeclaration.TYPE_PARAMETERS_PROPERTY, rewriteModifiers2, " ", true, rewriteModifiers2 != methodDeclaration.getStartPosition());
        }
        SimplePropertyDescriptor simplePropertyDescriptor = MethodDeclaration.CONSTRUCTOR_PROPERTY;
        boolean isChanged = isChanged(methodDeclaration, simplePropertyDescriptor);
        boolean booleanValue = ((Boolean) getOriginalValue(methodDeclaration, simplePropertyDescriptor)).booleanValue();
        if (!booleanValue || isChanged) {
            rewriteReturnType(methodDeclaration, booleanValue, isChanged);
        }
        try {
            int tokenEndOffset = getScanner().getTokenEndOffset(25, rewriteNodeList(methodDeclaration, MethodDeclaration.PARAMETERS_PROPERTY, rewriteMethodReceiver(methodDeclaration, rewriteRequiredNode(methodDeclaration, MethodDeclaration.NAME_PROPERTY)), Util.EMPTY_STRING, ", "));
            ChildListPropertyDescriptor childListPropertyDescriptor = apiLevel < 8 ? INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY : MethodDeclaration.THROWN_EXCEPTION_TYPES_PROPERTY;
            if (apiLevel < 8) {
                SimplePropertyDescriptor simplePropertyDescriptor2 = INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY;
                int rewriteExtraDimensions = rewriteExtraDimensions(methodDeclaration, simplePropertyDescriptor2, tokenEndOffset);
                boolean isChanged2 = isChanged(methodDeclaration, childListPropertyDescriptor);
                int changeKind = getChangeKind(methodDeclaration, MethodDeclaration.BODY_PROPERTY);
                if (rewriteExtraDimensions > 0 && (isChanged2 || changeKind == 1 || changeKind == 2)) {
                    for (int intValue = ((Integer) getOriginalValue(methodDeclaration, simplePropertyDescriptor2)).intValue(); intValue > 0; intValue--) {
                        tokenEndOffset = getScanner().getTokenEndOffset(66, tokenEndOffset);
                    }
                }
            } else {
                tokenEndOffset = rewriteExtraDimensionsInfo(methodDeclaration, tokenEndOffset, MethodDeclaration.EXTRA_DIMENSIONS2_PROPERTY);
            }
            rewriteMethodBody(methodDeclaration, rewriteNodeList(methodDeclaration, childListPropertyDescriptor, tokenEndOffset, " throws ", ", "));
        } catch (CoreException unused) {
        }
        return false;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        if (!hasChildrenChanges(moduleDeclaration)) {
            return doVisitUnchangedChildren(moduleDeclaration);
        }
        int rewriteModifiers2 = rewriteModifiers2(moduleDeclaration, ModuleDeclaration.ANNOTATIONS_PROPERTY, rewriteJavadoc(moduleDeclaration, ModuleDeclaration.JAVADOC_PROPERTY));
        RewriteEvent event = getEvent(moduleDeclaration, ModuleDeclaration.OPEN_PROPERTY);
        if (event != null && event.getChangeKind() != 0) {
            boolean z10 = getScanner().getScanner().fakeInModule;
            try {
                try {
                    if (((Boolean) event.getOriginalValue()).booleanValue()) {
                        this.tokenScanner.getScanner().fakeInModule = true;
                        doTextRemove(rewriteModifiers2, getScanner().getTokenStartOffset(113, rewriteModifiers2) - rewriteModifiers2, getEditGroup(event));
                    } else {
                        doTextInsert(rewriteModifiers2, "open ", getEditGroup(event));
                    }
                } catch (CoreException e10) {
                    handleException(e10);
                }
                this.tokenScanner.getScanner().fakeInModule = z10;
            } catch (Throwable th2) {
                this.tokenScanner.getScanner().fakeInModule = z10;
                throw th2;
            }
        }
        int posAfterLeftBrace = getPosAfterLeftBrace(rewriteRequiredNode(moduleDeclaration, ModuleDeclaration.NAME_PROPERTY));
        int indent = getIndent(moduleDeclaration.getStartPosition()) + 1;
        boolean z11 = this.tokenScanner.getScanner().fakeInModule;
        this.tokenScanner.getScanner().fakeInModule = true;
        rewriteParagraphList(moduleDeclaration, ModuleDeclaration.MODULE_DIRECTIVES_PROPERTY, posAfterLeftBrace, indent, 0, 1);
        this.tokenScanner.getScanner().fakeInModule = z11;
        return false;
    }

    @Override
    public boolean visit(Block block) {
        int posAfterLeftBrace;
        if (!hasChildrenChanges(block)) {
            return doVisitUnchangedChildren(block);
        }
        if (isCollapsed(block)) {
            posAfterLeftBrace = block.getStartPosition();
        } else {
            posAfterLeftBrace = getPosAfterLeftBrace(block.getStartPosition());
        }
        int i10 = posAfterLeftBrace;
        rewriteParagraphList(block, Block.STATEMENTS_PROPERTY, i10, getIndent(block.getStartPosition()) + 1, 0, 1);
        return false;
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        try {
            this.beforeRequiredSpaceIndex = getScanner().getTokenEndOffset(82, returnStatement.getStartPosition());
            if (!hasChildrenChanges(returnStatement)) {
                return doVisitUnchangedChildren(returnStatement);
            }
            ensureSpaceBeforeReplace(returnStatement);
            rewriteNode(returnStatement, ReturnStatement.EXPRESSION_PROPERTY, this.beforeRequiredSpaceIndex, ASTRewriteFormatter.SPACE);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(RequiresDirective requiresDirective) {
        if (!hasChildrenChanges(requiresDirective)) {
            return doVisitUnchangedChildren(requiresDirective);
        }
        rewriteNodeList(requiresDirective, RequiresDirective.MODIFIERS_PROPERTY, getPosAfterToken(requiresDirective.getStartPosition(), 115), String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O));
        rewriteRequiredNode(requiresDirective, RequiresDirective.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        if (!hasChildrenChanges(anonymousClassDeclaration)) {
            return doVisitUnchangedChildren(anonymousClassDeclaration);
        }
        rewriteParagraphList(anonymousClassDeclaration, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY, getPosAfterLeftBrace(anonymousClassDeclaration.getStartPosition()), getIndent(anonymousClassDeclaration.getStartPosition()) + 1, -1, 2);
        return false;
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        if (!hasChildrenChanges(arrayAccess)) {
            return doVisitUnchangedChildren(arrayAccess);
        }
        rewriteRequiredNode(arrayAccess, ArrayAccess.ARRAY_PROPERTY);
        rewriteRequiredNode(arrayAccess, ArrayAccess.INDEX_PROPERTY);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0205  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean visit(ArrayCreation arrayCreation) {
        ArrayType arrayType;
        boolean z10;
        boolean z11;
        RewriteEvent[] children;
        int dimensions;
        int length;
        TextEditGroup textEditGroup;
        int i10;
        ArrayType arrayType2;
        int i11;
        TextEditGroup textEditGroup2;
        ArrayType arrayType3;
        int i12;
        int i13;
        RewriteEvent[] rewriteEventArr;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int startPosition;
        if (!hasChildrenChanges(arrayCreation)) {
            return doVisitUnchangedChildren(arrayCreation);
        }
        ChildPropertyDescriptor childPropertyDescriptor = ArrayCreation.TYPE_PROPERTY;
        ArrayType arrayType4 = (ArrayType) getOriginalValue(arrayCreation, childPropertyDescriptor);
        int dimensions2 = getDimensions(arrayType4);
        boolean z12 = arrayCreation.getAST().apiLevel() >= 8;
        RewriteEvent event = getEvent(arrayCreation, childPropertyDescriptor);
        int i19 = 4;
        if (event == null || event.getChangeKind() != 4) {
            arrayType = arrayType4;
            z10 = false;
        } else {
            ArrayType arrayType5 = (ArrayType) event.getNewValue();
            TextEditGroup editGroup = getEditGroup(event);
            Type elementType = arrayType5.getElementType();
            Type elementType2 = getElementType(arrayType4);
            if (!elementType.equals(elementType2)) {
                TargetSourceRangeComputer.SourceRange extendedRange = getExtendedRange(elementType2);
                int startPosition2 = extendedRange.getStartPosition();
                doTextRemove(startPosition2, extendedRange.getLength(), editGroup);
                doTextInsert(startPosition2, elementType, 0, false, editGroup);
            }
            arrayType = arrayType5;
            z10 = true;
        }
        try {
            RewriteEvent event2 = getEvent(arrayCreation, ArrayCreation.DIMENSIONS_PROPERTY);
            z11 = (event2 == null || event2.getChangeKind() == 0) ? false : true;
            children = z11 ? event2.getChildren() : null;
            ArrayType arrayType6 = z12 ? null : (ArrayType) arrayType.getElementType().getParent();
            dimensions = arrayType.getDimensions();
            length = children == null ? 0 : children.length;
            Type elementType3 = arrayType4.getElementType();
            int startPosition3 = elementType3.getStartPosition() + elementType3.getLength();
            textEditGroup = null;
            i10 = startPosition3;
            arrayType2 = arrayType6;
            i11 = 0;
        } catch (CoreException e10) {
            handleException(e10);
        }
        while (true) {
            if (arrayType2 == null && !z12) {
                break;
            }
            if (i11 >= length) {
                textEditGroup2 = textEditGroup;
                arrayType3 = arrayType2;
                i12 = length;
                i13 = dimensions;
                rewriteEventArr = children;
                int i20 = i11;
                int i21 = i10;
                if (i20 < dimensions2) {
                    if (z12) {
                        i14 = i20;
                        i15 = i21;
                        rewriteAnnotationsOnDimension(arrayType4, arrayType, i20, i21, z10, textEditGroup2);
                    } else {
                        i14 = i20;
                        i15 = i21;
                    }
                    i10 = retrieveRightBracketEndPosition(i15, 1, false);
                    textEditGroup = textEditGroup2;
                    i11 = i14 + 1;
                    if (z12) {
                    }
                    handleException(e10);
                    return false;
                }
                i14 = i20;
                insertAnnotationsOnDimension(arrayType, i14, i21, textEditGroup2, z12);
                doTextInsert(i21, v.f99450n, textEditGroup2);
                textEditGroup = textEditGroup2;
                i10 = i21;
                i11 = i14 + 1;
                if (z12) {
                }
                handleException(e10);
                return false;
            }
            if (z12) {
                i16 = i11;
                i17 = i10;
                textEditGroup2 = textEditGroup;
                arrayType3 = arrayType2;
                i12 = length;
                i13 = dimensions;
                rewriteEventArr = children;
                rewriteAnnotationsOnDimension(arrayType4, arrayType, i16, i17, z10, textEditGroup2);
            } else {
                i16 = i11;
                i17 = i10;
                textEditGroup2 = textEditGroup;
                arrayType3 = arrayType2;
                i12 = length;
                i13 = dimensions;
                rewriteEventArr = children;
            }
            int tokenEndOffset = getScanner().getTokenEndOffset(6, i17);
            if (z11) {
                int i22 = i16;
                RewriteEvent rewriteEvent = rewriteEventArr[i22];
                int changeKind = rewriteEvent.getChangeKind();
                if (changeKind == 1) {
                    TextEditGroup editGroup2 = getEditGroup(rewriteEvent);
                    doTextRemove(tokenEndOffset, getScanner().getTokenStartOffset(66, tokenEndOffset) - tokenEndOffset, editGroup2);
                    i18 = i22;
                    doTextInsert(tokenEndOffset, (ASTNode) rewriteEvent.getNewValue(), 0, false, editGroup2);
                    textEditGroup = editGroup2;
                } else {
                    i18 = i22;
                    ASTNode aSTNode = (ASTNode) rewriteEvent.getOriginalValue();
                    int tokenStartOffset = getScanner().getTokenStartOffset(66, aSTNode.getStartPosition() + aSTNode.getLength());
                    if (changeKind == 2) {
                        TextEditGroup editGroup3 = getEditGroup(rewriteEvent);
                        doTextRemoveAndVisit(tokenEndOffset, tokenStartOffset - tokenEndOffset, aSTNode, editGroup3);
                        textEditGroup = editGroup3;
                    } else if (changeKind == i19) {
                        TextEditGroup editGroup4 = getEditGroup(rewriteEvent);
                        TargetSourceRangeComputer.SourceRange extendedRange2 = getExtendedRange(aSTNode);
                        int startPosition4 = extendedRange2.getStartPosition();
                        doTextRemoveAndVisit(startPosition4, extendedRange2.getLength(), aSTNode, editGroup4);
                        doTextInsert(startPosition4, (ASTNode) rewriteEvent.getNewValue(), 0, false, editGroup4);
                        textEditGroup = editGroup4;
                    } else {
                        voidVisit(aSTNode);
                        textEditGroup = textEditGroup2;
                    }
                }
                i10 = retrieveRightBracketEndPosition(tokenEndOffset, 1, true);
                i14 = i18;
                i11 = i14 + 1;
                if (z12) {
                    ArrayType arrayType7 = arrayType3;
                    int i23 = i13;
                    if (arrayType7 == arrayType) {
                        break;
                    }
                    dimensions = i23;
                    arrayType2 = (ArrayType) arrayType7.getParent();
                    length = i12;
                    children = rewriteEventArr;
                    i19 = 4;
                } else {
                    int i24 = i13;
                    if (i11 == i24) {
                        break;
                    }
                    dimensions = i24;
                    arrayType2 = arrayType3;
                    length = i12;
                    children = rewriteEventArr;
                    i19 = 4;
                }
                handleException(e10);
                return false;
            }
            int i25 = i16;
            voidVisit((ASTNode) arrayCreation.dimensions().get(i25));
            i10 = retrieveRightBracketEndPosition(tokenEndOffset, 1, true);
            i14 = i25;
            textEditGroup = textEditGroup2;
            i11 = i14 + 1;
            if (z12) {
            }
            handleException(e10);
            return false;
        }
        if (i11 < dimensions2) {
            doTextRemove(i10, retrieveRightBracketEndPosition(i10, dimensions2 - i11, false) - i10, textEditGroup);
        }
        ChildPropertyDescriptor childPropertyDescriptor2 = ArrayCreation.INITIALIZER_PROPERTY;
        if (getChangeKind(arrayCreation, childPropertyDescriptor2) == 2) {
            startPosition = getScanner().getPreviousTokenEndOffset(49, i10);
        } else {
            startPosition = arrayCreation.getStartPosition() + arrayCreation.getLength();
        }
        rewriteNode(arrayCreation, childPropertyDescriptor2, startPosition, ASTRewriteFormatter.SPACE);
        return false;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        if (!hasChildrenChanges(arrayInitializer)) {
            return doVisitUnchangedChildren(arrayInitializer);
        }
        rewriteNodeList(arrayInitializer, ArrayInitializer.EXPRESSIONS_PROPERTY, getPosAfterLeftBrace(arrayInitializer.getStartPosition()), Util.EMPTY_STRING, ", ");
        return false;
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        if (!hasChildrenChanges(arrayType)) {
            return doVisitUnchangedChildren(arrayType);
        }
        if (arrayType.getAST().apiLevel() < 8) {
            rewriteRequiredNode(arrayType, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
            return false;
        }
        rewriteArrayTypeDimensions(arrayType, rewriteRequiredNode(arrayType, ArrayType.ELEMENT_TYPE_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        try {
            this.beforeRequiredSpaceIndex = getScanner().getNextEndOffset(assertStatement.getStartPosition(), true);
            if (!hasChildrenChanges(assertStatement)) {
                return doVisitUnchangedChildren(assertStatement);
            }
            ensureSpaceBeforeReplace(assertStatement);
            rewriteNode(assertStatement, AssertStatement.MESSAGE_PROPERTY, rewriteRequiredNode(assertStatement, AssertStatement.EXPRESSION_PROPERTY), ASTRewriteFormatter.ASSERT_COMMENT);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(Assignment assignment) {
        if (!hasChildrenChanges(assignment)) {
            return doVisitUnchangedChildren(assignment);
        }
        rewriteOperation(assignment, Assignment.OPERATOR_PROPERTY, rewriteRequiredNode(assignment, Assignment.LEFT_HAND_SIDE_PROPERTY));
        rewriteRequiredNode(assignment, Assignment.RIGHT_HAND_SIDE_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(BooleanLiteral booleanLiteral) {
        if (!hasChildrenChanges(booleanLiteral)) {
            return doVisitUnchangedChildren(booleanLiteral);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = BooleanLiteral.BOOLEAN_VALUE_PROPERTY;
        Boolean bool = (Boolean) getNewValue(booleanLiteral, simplePropertyDescriptor);
        doTextReplace(booleanLiteral.getStartPosition(), booleanLiteral.getLength(), bool.toString(), getEditGroup(booleanLiteral, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        if (!hasChildrenChanges(breakStatement)) {
            return doVisitUnchangedChildren(breakStatement);
        }
        try {
            int tokenEndOffset = getScanner().getTokenEndOffset(77, breakStatement.getStartPosition());
            ChildPropertyDescriptor childPropertyDescriptor = BreakStatement.LABEL_PROPERTY;
            ASTRewriteFormatter.Prefix prefix = ASTRewriteFormatter.SPACE;
            rewriteNode(breakStatement, childPropertyDescriptor, tokenEndOffset, prefix);
            if (breakStatement.getAST().apiLevel() < 12) {
                return false;
            }
            rewriteNode(breakStatement, BreakStatement.EXPRESSION_PROPERTY, tokenEndOffset, prefix);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        if (!hasChildrenChanges(castExpression)) {
            return doVisitUnchangedChildren(castExpression);
        }
        rewriteRequiredNode(castExpression, CastExpression.TYPE_PROPERTY);
        rewriteRequiredNode(castExpression, CastExpression.EXPRESSION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        if (!hasChildrenChanges(catchClause)) {
            return doVisitUnchangedChildren(catchClause);
        }
        rewriteRequiredNode(catchClause, CatchClause.EXCEPTION_PROPERTY);
        rewriteRequiredNode(catchClause, CatchClause.BODY_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(CharacterLiteral characterLiteral) {
        if (!hasChildrenChanges(characterLiteral)) {
            return doVisitUnchangedChildren(characterLiteral);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = CharacterLiteral.ESCAPED_VALUE_PROPERTY;
        doTextReplace(characterLiteral.getStartPosition(), characterLiteral.getLength(), (String) getNewValue(characterLiteral, simplePropertyDescriptor), getEditGroup(characterLiteral, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        int rewriteRequiredNode;
        if (!hasChildrenChanges(classInstanceCreation)) {
            return doVisitUnchangedChildren(classInstanceCreation);
        }
        int rewriteOptionalQualifier = rewriteOptionalQualifier(classInstanceCreation, ClassInstanceCreation.EXPRESSION_PROPERTY, classInstanceCreation.getStartPosition());
        if (classInstanceCreation.getAST().apiLevel() == 2) {
            rewriteRequiredNode = rewriteRequiredNode(classInstanceCreation, INTERNAL_CIC_NAME_PROPERTY);
        } else {
            ChildListPropertyDescriptor childListPropertyDescriptor = ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY;
            if (isChanged(classInstanceCreation, childListPropertyDescriptor)) {
                try {
                    rewriteOptionalTypeParameters(classInstanceCreation, childListPropertyDescriptor, getScanner().getTokenEndOffset(36, rewriteOptionalQualifier), " ", true, true);
                } catch (CoreException e10) {
                    handleException(e10);
                }
            } else {
                voidVisit(classInstanceCreation, childListPropertyDescriptor);
            }
            rewriteRequiredNode = rewriteRequiredNode(classInstanceCreation, ClassInstanceCreation.TYPE_PROPERTY);
        }
        ChildListPropertyDescriptor childListPropertyDescriptor2 = ClassInstanceCreation.ARGUMENTS_PROPERTY;
        if (isChanged(classInstanceCreation, childListPropertyDescriptor2)) {
            try {
                rewriteNodeList(classInstanceCreation, childListPropertyDescriptor2, getScanner().getTokenEndOffset(23, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
            } catch (CoreException e11) {
                handleException(e11);
            }
        } else {
            voidVisit(classInstanceCreation, childListPropertyDescriptor2);
        }
        if (getChangeKind(classInstanceCreation, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY) == 2) {
            try {
                rewriteRequiredNode = getScanner().getPreviousTokenEndOffset(49, rewriteRequiredNode);
            } catch (CoreException e12) {
                handleException(e12);
            }
        } else {
            rewriteRequiredNode = classInstanceCreation.getStartPosition() + classInstanceCreation.getLength();
        }
        rewriteNode(classInstanceCreation, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY, rewriteRequiredNode, ASTRewriteFormatter.SPACE);
        return false;
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        if (!hasChildrenChanges(conditionalExpression)) {
            return doVisitUnchangedChildren(conditionalExpression);
        }
        rewriteRequiredNode(conditionalExpression, ConditionalExpression.EXPRESSION_PROPERTY);
        rewriteRequiredNode(conditionalExpression, ConditionalExpression.THEN_EXPRESSION_PROPERTY);
        rewriteRequiredNode(conditionalExpression, ConditionalExpression.ELSE_EXPRESSION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        if (!hasChildrenChanges(constructorInvocation)) {
            return doVisitUnchangedChildren(constructorInvocation);
        }
        int startPosition = constructorInvocation.getStartPosition();
        if (constructorInvocation.getAST().apiLevel() >= 3) {
            startPosition = rewriteOptionalTypeParameters(constructorInvocation, ConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, startPosition, Util.EMPTY_STRING, false, false);
        }
        try {
            rewriteNodeList(constructorInvocation, ConstructorInvocation.ARGUMENTS_PROPERTY, getScanner().getTokenEndOffset(23, startPosition), Util.EMPTY_STRING, ", ");
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(ContinueStatement continueStatement) {
        if (!hasChildrenChanges(continueStatement)) {
            return doVisitUnchangedChildren(continueStatement);
        }
        try {
            rewriteNode(continueStatement, ContinueStatement.LABEL_PROPERTY, getScanner().getTokenEndOffset(78, continueStatement.getStartPosition()), ASTRewriteFormatter.SPACE);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        if (!hasChildrenChanges(creationReference)) {
            return doVisitUnchangedChildren(creationReference);
        }
        visitReferenceTypeArguments(creationReference, CreationReference.TYPE_ARGUMENTS_PROPERTY, rewriteRequiredNode(creationReference, CreationReference.TYPE_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        if (!hasChildrenChanges(doStatement)) {
            return doVisitUnchangedChildren(doStatement);
        }
        int startPosition = doStatement.getStartPosition();
        try {
            ChildPropertyDescriptor childPropertyDescriptor = DoStatement.BODY_PROPERTY;
            RewriteEvent event = getEvent(doStatement, childPropertyDescriptor);
            if (event != null && event.getChangeKind() == 4) {
                int tokenEndOffset = getScanner().getTokenEndOffset(79, startPosition);
                ASTNode aSTNode = (ASTNode) event.getOriginalValue();
                rewriteBodyNode(doStatement, childPropertyDescriptor, tokenEndOffset, getScanner().getTokenStartOffset(75, aSTNode.getStartPosition() + aSTNode.getLength()), getIndent(doStatement.getStartPosition()), this.formatter.DO_BLOCK);
            } else {
                voidVisit(doStatement, childPropertyDescriptor);
            }
        } catch (CoreException e10) {
            handleException(e10);
        }
        rewriteRequiredNode(doStatement, DoStatement.EXPRESSION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(EmptyStatement emptyStatement) {
        if (!hasChildrenChanges(emptyStatement)) {
            return doVisitUnchangedChildren(emptyStatement);
        }
        changeNotSupported(emptyStatement);
        return false;
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        if (!hasChildrenChanges(exportsDirective)) {
            return doVisitUnchangedChildren(exportsDirective);
        }
        rewriteNodeList(exportsDirective, ExportsDirective.MODULES_PROPERTY, rewriteRequiredNode(exportsDirective, ExportsDirective.NAME_PROPERTY), "to ", ", ");
        return false;
    }

    @Override
    public boolean visit(ExpressionStatement expressionStatement) {
        if (!hasChildrenChanges(expressionStatement)) {
            return doVisitUnchangedChildren(expressionStatement);
        }
        rewriteRequiredNode(expressionStatement, ExpressionStatement.EXPRESSION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        if (!hasChildrenChanges(fieldAccess)) {
            return doVisitUnchangedChildren(fieldAccess);
        }
        rewriteRequiredNode(fieldAccess, FieldAccess.EXPRESSION_PROPERTY);
        rewriteRequiredNode(fieldAccess, FieldAccess.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        if (!hasChildrenChanges(fieldDeclaration)) {
            return doVisitUnchangedChildren(fieldDeclaration);
        }
        int rewriteJavadoc = rewriteJavadoc(fieldDeclaration, FieldDeclaration.JAVADOC_PROPERTY);
        if (fieldDeclaration.getAST().apiLevel() == 2) {
            rewriteModifiers(fieldDeclaration, INTERNAL_FIELD_MODIFIERS_PROPERTY, rewriteJavadoc);
        } else {
            rewriteModifiers2(fieldDeclaration, FieldDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc);
        }
        ChildPropertyDescriptor childPropertyDescriptor = FieldDeclaration.TYPE_PROPERTY;
        int rewriteRequiredNode = rewriteRequiredNode(fieldDeclaration, childPropertyDescriptor);
        ensureSpaceAfterReplace(fieldDeclaration, childPropertyDescriptor);
        rewriteNodeList(fieldDeclaration, FieldDeclaration.FRAGMENTS_PROPERTY, rewriteRequiredNode, Util.EMPTY_STRING, ", ");
        return false;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        int doVisit;
        int doVisit2;
        if (!hasChildrenChanges(forStatement)) {
            return doVisitUnchangedChildren(forStatement);
        }
        try {
            int startPosition = forStatement.getStartPosition();
            ChildListPropertyDescriptor childListPropertyDescriptor = ForStatement.INITIALIZERS_PROPERTY;
            if (isChanged(forStatement, childListPropertyDescriptor)) {
                doVisit = rewriteNodeList(forStatement, childListPropertyDescriptor, getScanner().getTokenEndOffset(23, startPosition), Util.EMPTY_STRING, ", ");
            } else {
                doVisit = doVisit(forStatement, childListPropertyDescriptor, startPosition);
            }
            int rewriteNode = rewriteNode(forStatement, ForStatement.EXPRESSION_PROPERTY, getScanner().getTokenEndOffset(26, doVisit), ASTRewriteFormatter.NONE);
            ChildListPropertyDescriptor childListPropertyDescriptor2 = ForStatement.UPDATERS_PROPERTY;
            if (isChanged(forStatement, childListPropertyDescriptor2)) {
                doVisit2 = rewriteNodeList(forStatement, childListPropertyDescriptor2, getScanner().getTokenEndOffset(26, rewriteNode), Util.EMPTY_STRING, ", ");
            } else {
                doVisit2 = doVisit(forStatement, childListPropertyDescriptor2, rewriteNode);
            }
            ChildPropertyDescriptor childPropertyDescriptor = ForStatement.BODY_PROPERTY;
            RewriteEvent event = getEvent(forStatement, childPropertyDescriptor);
            if (event != null && event.getChangeKind() == 4) {
                rewriteBodyNode(forStatement, childPropertyDescriptor, getScanner().getTokenEndOffset(25, doVisit2), -1, getIndent(forStatement.getStartPosition()), this.formatter.FOR_BLOCK);
                return false;
            }
            voidVisit(forStatement, childPropertyDescriptor);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        int i10;
        if (!hasChildrenChanges(ifStatement)) {
            return doVisitUnchangedChildren(ifStatement);
        }
        int rewriteRequiredNode = rewriteRequiredNode(ifStatement, IfStatement.EXPRESSION_PROPERTY);
        ChildPropertyDescriptor childPropertyDescriptor = IfStatement.THEN_STATEMENT_PROPERTY;
        RewriteEvent event = getEvent(ifStatement, childPropertyDescriptor);
        ChildPropertyDescriptor childPropertyDescriptor2 = IfStatement.ELSE_STATEMENT_PROPERTY;
        int changeKind = getChangeKind(ifStatement, childPropertyDescriptor2);
        if (event != null && event.getChangeKind() != 0) {
            try {
                int currentEndOffset = getScanner().readNext(rewriteRequiredNode, true) == 25 ? getScanner().getCurrentEndOffset() : getScanner().getCurrentStartOffset();
                int indent = getIndent(ifStatement.getStartPosition());
                Object originalValue = getOriginalValue(ifStatement, childPropertyDescriptor2);
                if (originalValue != null) {
                    ASTNode aSTNode = (ASTNode) event.getOriginalValue();
                    i10 = getScanner().getTokenStartOffset(112, aSTNode.getStartPosition() + aSTNode.getLength());
                } else {
                    i10 = -1;
                }
                int i11 = i10;
                if (originalValue != null && changeKind == 0) {
                    rewriteRequiredNode = rewriteBodyNode(ifStatement, childPropertyDescriptor, currentEndOffset, i11, indent, this.formatter.IF_BLOCK_WITH_ELSE);
                }
                rewriteRequiredNode = rewriteBodyNode(ifStatement, childPropertyDescriptor, currentEndOffset, i11, indent, this.formatter.IF_BLOCK_NO_ELSE);
            } catch (CoreException e10) {
                handleException(e10);
            }
        } else {
            rewriteRequiredNode = doVisit(ifStatement, childPropertyDescriptor, rewriteRequiredNode);
        }
        int i12 = rewriteRequiredNode;
        if (changeKind != 0) {
            int indent2 = getIndent(ifStatement.getStartPosition());
            if (getNewValue(ifStatement, IfStatement.THEN_STATEMENT_PROPERTY) instanceof Block) {
                rewriteBodyNode(ifStatement, IfStatement.ELSE_STATEMENT_PROPERTY, i12, -1, indent2, this.formatter.ELSE_AFTER_BLOCK);
                return false;
            }
            rewriteBodyNode(ifStatement, IfStatement.ELSE_STATEMENT_PROPERTY, i12, -1, indent2, this.formatter.ELSE_AFTER_STATEMENT);
            return false;
        }
        doVisit(ifStatement, IfStatement.ELSE_STATEMENT_PROPERTY, i12);
        return false;
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        RewriteEvent event;
        if (!hasChildrenChanges(importDeclaration)) {
            return doVisitUnchangedChildren(importDeclaration);
        }
        if (importDeclaration.getAST().apiLevel() >= 3 && (event = getEvent(importDeclaration, ImportDeclaration.STATIC_PROPERTY)) != null && event.getChangeKind() != 0) {
            try {
                int tokenEndOffset = getScanner().getTokenEndOffset(106, importDeclaration.getStartPosition());
                if (((Boolean) event.getOriginalValue()).booleanValue()) {
                    doTextRemove(tokenEndOffset, getScanner().getTokenEndOffset(48, tokenEndOffset) - tokenEndOffset, getEditGroup(event));
                } else {
                    doTextInsert(tokenEndOffset, " static", getEditGroup(event));
                }
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
        int rewriteRequiredNode = rewriteRequiredNode(importDeclaration, ImportDeclaration.NAME_PROPERTY);
        RewriteEvent event2 = getEvent(importDeclaration, ImportDeclaration.ON_DEMAND_PROPERTY);
        if (event2 == null || event2.getChangeKind() == 0) {
            return false;
        }
        if (!((Boolean) event2.getOriginalValue()).booleanValue()) {
            doTextInsert(rewriteRequiredNode, ".*", getEditGroup(event2));
            return false;
        }
        try {
            doTextRemove(rewriteRequiredNode, getScanner().getTokenStartOffset(26, rewriteRequiredNode) - rewriteRequiredNode, getEditGroup(event2));
            return false;
        } catch (CoreException e11) {
            handleException(e11);
            return false;
        }
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        int rewriteRequiredNode;
        int rewriteRequiredNode2;
        if (!hasChildrenChanges(infixExpression)) {
            return doVisitUnchangedChildren(infixExpression);
        }
        Expression rightOperand = infixExpression.getRightOperand();
        ChildPropertyDescriptor childPropertyDescriptor = InfixExpression.LEFT_OPERAND_PROPERTY;
        RewriteEvent event = getEvent(infixExpression, childPropertyDescriptor);
        boolean z10 = event != null && event.getChangeKind() == 2;
        ChildPropertyDescriptor childPropertyDescriptor2 = InfixExpression.RIGHT_OPERAND_PROPERTY;
        RewriteEvent event2 = getEvent(infixExpression, childPropertyDescriptor2);
        boolean z11 = event2 != null && event2.getChangeKind() == 2;
        if (z10) {
            Expression leftOperand = infixExpression.getLeftOperand();
            int extendedOffset = getExtendedOffset(leftOperand);
            rewriteRequiredNode = getExtendedOffset(rightOperand);
            doTextRemoveAndVisit(extendedOffset, rewriteRequiredNode - extendedOffset, leftOperand, getEditGroup(event));
        } else {
            rewriteRequiredNode = rewriteRequiredNode(infixExpression, childPropertyDescriptor);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = InfixExpression.OPERATOR_PROPERTY;
        boolean isChanged = isChanged(infixExpression, simplePropertyDescriptor);
        String obj = getNewValue(infixExpression, simplePropertyDescriptor).toString();
        if (isChanged && !z10 && !z11) {
            replaceOperation(rewriteRequiredNode, obj, getEditGroup(infixExpression, simplePropertyDescriptor));
        }
        if (z11) {
            if (z10 && infixExpression.extendedOperands().size() > 0) {
                rewriteRequiredNode2 = getExtendedOffset((Expression) infixExpression.extendedOperands().get(0));
            } else {
                rewriteRequiredNode2 = getExtendedEnd(rightOperand);
            }
            doTextRemoveAndVisit(rewriteRequiredNode, rewriteRequiredNode2 - rewriteRequiredNode, rightOperand, getEditGroup(event2));
        } else {
            rewriteRequiredNode2 = rewriteRequiredNode(infixExpression, childPropertyDescriptor2);
        }
        int i10 = rewriteRequiredNode2;
        ChildListPropertyDescriptor childListPropertyDescriptor = InfixExpression.EXTENDED_OPERANDS_PROPERTY;
        RewriteEvent event3 = getEvent(infixExpression, childListPropertyDescriptor);
        String str = String.valueOf(C15883c.f126249O) + obj + C15883c.f126249O;
        if (isChanged) {
            TextEditGroup editGroup = getEditGroup(infixExpression, simplePropertyDescriptor);
            if (event3 != null && event3.getChangeKind() != 0) {
                RewriteEvent[] children = event3.getChildren();
                int i11 = i10;
                for (RewriteEvent rewriteEvent : children) {
                    ASTNode aSTNode = (ASTNode) rewriteEvent.getOriginalValue();
                    if (aSTNode != null) {
                        if (rewriteEvent.getChangeKind() != 4) {
                            replaceOperation(i11, obj, editGroup);
                        }
                        i11 = aSTNode.getStartPosition() + aSTNode.getLength();
                    }
                }
            } else {
                List list = (List) getOriginalValue(infixExpression, childListPropertyDescriptor);
                int i12 = i10;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    ASTNode aSTNode2 = (ASTNode) list.get(i13);
                    replaceOperation(i12, obj, editGroup);
                    i12 = aSTNode2.getStartPosition() + aSTNode2.getLength();
                }
            }
        }
        rewriteNodeList(infixExpression, InfixExpression.EXTENDED_OPERANDS_PROPERTY, i10, str, str);
        return false;
    }

    @Override
    public boolean visit(Initializer initializer) {
        if (!hasChildrenChanges(initializer)) {
            return doVisitUnchangedChildren(initializer);
        }
        int rewriteJavadoc = rewriteJavadoc(initializer, Initializer.JAVADOC_PROPERTY);
        if (initializer.getAST().apiLevel() == 2) {
            rewriteModifiers(initializer, INTERNAL_INITIALIZER_MODIFIERS_PROPERTY3, rewriteJavadoc);
        } else {
            rewriteModifiers2(initializer, Initializer.MODIFIERS2_PROPERTY, rewriteJavadoc);
        }
        rewriteRequiredNode(initializer, Initializer.BODY_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(InstanceofExpression instanceofExpression) {
        if (!hasChildrenChanges(instanceofExpression)) {
            return doVisitUnchangedChildren(instanceofExpression);
        }
        ChildPropertyDescriptor childPropertyDescriptor = InstanceofExpression.LEFT_OPERAND_PROPERTY;
        rewriteRequiredNode(instanceofExpression, childPropertyDescriptor);
        ensureSpaceAfterReplace(instanceofExpression, childPropertyDescriptor);
        rewriteRequiredNode(instanceofExpression, InstanceofExpression.RIGHT_OPERAND_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        if (!hasChildrenChanges(intersectionType)) {
            return doVisitUnchangedChildren(intersectionType);
        }
        rewriteNodeList(intersectionType, IntersectionType.TYPES_PROPERTY, intersectionType.getStartPosition(), Util.EMPTY_STRING, " & ");
        return false;
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        if (!hasChildrenChanges(javadoc)) {
            return doVisitUnchangedChildren(javadoc);
        }
        int startPosition = javadoc.getStartPosition() + 3;
        String str = String.valueOf(getLineDelimiter()) + getIndentAtOffset(javadoc.getStartPosition()) + " * ";
        rewriteNodeList(javadoc, Javadoc.TAGS_PROPERTY, startPosition, str, str);
        return false;
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        if (!hasChildrenChanges(labeledStatement)) {
            return doVisitUnchangedChildren(labeledStatement);
        }
        rewriteRequiredNode(labeledStatement, LabeledStatement.LABEL_PROPERTY);
        rewriteRequiredNode(labeledStatement, LabeledStatement.BODY_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        TextEditGroup textEditGroup;
        RewriteEvent event;
        boolean z10;
        if (!hasChildrenChanges(lambdaExpression)) {
            return doVisitUnchangedChildren(lambdaExpression);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = LambdaExpression.PARENTHESES_PROPERTY;
        Boolean bool = (Boolean) getNewValue(lambdaExpression, simplePropertyDescriptor);
        Boolean bool2 = Boolean.TRUE;
        boolean equals = bool.equals(bool2);
        boolean z11 = true;
        if (!equals) {
            List list = (List) getNewValue(lambdaExpression, LambdaExpression.PARAMETERS_PROPERTY);
            equals = (list.size() == 1 && (list.get(0) instanceof VariableDeclarationFragment)) ? false : true;
        }
        boolean equals2 = getOriginalValue(lambdaExpression, simplePropertyDescriptor).equals(bool2);
        RewriteEvent event2 = getEvent(lambdaExpression, simplePropertyDescriptor);
        if (event2 != null) {
            textEditGroup = getEditGroup(event2);
            if (event2.getChangeKind() == 4) {
                if (bool == Boolean.FALSE) {
                    z10 = !equals;
                    z11 = false;
                }
                z10 = false;
            }
            z10 = false;
            z11 = false;
        } else if (equals2 || !equals || (event = getEvent(lambdaExpression, LambdaExpression.PARAMETERS_PROPERTY)) == null) {
            textEditGroup = null;
            z10 = false;
            z11 = false;
        } else {
            textEditGroup = getEditGroup(event);
            z10 = false;
        }
        int startPosition = lambdaExpression.getStartPosition();
        if (z11) {
            doTextInsert(startPosition, "(", textEditGroup);
        } else if (z10) {
            try {
                int tokenEndOffset = getScanner().getTokenEndOffset(23, startPosition);
                doTextRemove(startPosition, tokenEndOffset - startPosition, textEditGroup);
                startPosition = tokenEndOffset;
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = LambdaExpression.PARAMETERS_PROPERTY;
        if (isChanged(lambdaExpression, childListPropertyDescriptor)) {
            if (equals2) {
                try {
                    startPosition = getScanner().getTokenEndOffset(23, startPosition);
                } catch (CoreException e11) {
                    handleException(e11);
                }
            }
            startPosition = rewriteNodeList(lambdaExpression, childListPropertyDescriptor, startPosition, Util.EMPTY_STRING, ", ");
        } else {
            startPosition = doVisit(lambdaExpression, childListPropertyDescriptor, startPosition);
        }
        if (z11) {
            doTextInsert(startPosition, ")", textEditGroup);
        } else if (z10) {
            try {
                doTextRemove(startPosition, getScanner().getTokenEndOffset(25, startPosition) - startPosition, textEditGroup);
            } catch (CoreException e12) {
                handleException(e12);
            }
        }
        rewriteRequiredNode(lambdaExpression, LambdaExpression.BODY_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        if (!hasChildrenChanges(methodInvocation)) {
            return doVisitUnchangedChildren(methodInvocation);
        }
        int rewriteOptionalQualifier = rewriteOptionalQualifier(methodInvocation, MethodInvocation.EXPRESSION_PROPERTY, methodInvocation.getStartPosition());
        if (methodInvocation.getAST().apiLevel() >= 3) {
            rewriteOptionalTypeParameters(methodInvocation, MethodInvocation.TYPE_ARGUMENTS_PROPERTY, rewriteOptionalQualifier, Util.EMPTY_STRING, false, false);
        }
        int rewriteRequiredNode = rewriteRequiredNode(methodInvocation, MethodInvocation.NAME_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = MethodInvocation.ARGUMENTS_PROPERTY;
        if (isChanged(methodInvocation, childListPropertyDescriptor)) {
            try {
                rewriteNodeList(methodInvocation, childListPropertyDescriptor, getScanner().getTokenEndOffset(23, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(methodInvocation, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(NullLiteral nullLiteral) {
        if (!hasChildrenChanges(nullLiteral)) {
            return doVisitUnchangedChildren(nullLiteral);
        }
        changeNotSupported(nullLiteral);
        return false;
    }

    @Override
    public boolean visit(NumberLiteral numberLiteral) {
        if (!hasChildrenChanges(numberLiteral)) {
            return doVisitUnchangedChildren(numberLiteral);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = NumberLiteral.TOKEN_PROPERTY;
        doTextReplace(numberLiteral.getStartPosition(), numberLiteral.getLength(), (String) getNewValue(numberLiteral, simplePropertyDescriptor), getEditGroup(numberLiteral, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        if (!hasChildrenChanges(packageDeclaration)) {
            return doVisitUnchangedChildren(packageDeclaration);
        }
        if (packageDeclaration.getAST().apiLevel() >= 3) {
            rewriteModifiers2(packageDeclaration, PackageDeclaration.ANNOTATIONS_PROPERTY, rewriteJavadoc(packageDeclaration, PackageDeclaration.JAVADOC_PROPERTY));
        }
        rewriteRequiredNode(packageDeclaration, PackageDeclaration.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        if (!hasChildrenChanges(parenthesizedExpression)) {
            return doVisitUnchangedChildren(parenthesizedExpression);
        }
        rewriteRequiredNode(parenthesizedExpression, ParenthesizedExpression.EXPRESSION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        if (!hasChildrenChanges(postfixExpression)) {
            return doVisitUnchangedChildren(postfixExpression);
        }
        rewriteOperation(postfixExpression, PostfixExpression.OPERATOR_PROPERTY, rewriteRequiredNode(postfixExpression, PostfixExpression.OPERAND_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        if (!hasChildrenChanges(prefixExpression)) {
            return doVisitUnchangedChildren(prefixExpression);
        }
        rewriteOperation(prefixExpression, PrefixExpression.OPERATOR_PROPERTY, prefixExpression.getStartPosition());
        rewriteRequiredNode(prefixExpression, PrefixExpression.OPERAND_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(PrimitiveType primitiveType) {
        if (!hasChildrenChanges(primitiveType)) {
            return doVisitUnchangedChildren(primitiveType);
        }
        if (primitiveType.getAST().apiLevel() >= 8) {
            rewriteTypeAnnotations(primitiveType, PrimitiveType.ANNOTATIONS_PROPERTY, primitiveType.getStartPosition());
        }
        SimplePropertyDescriptor simplePropertyDescriptor = PrimitiveType.PRIMITIVE_TYPE_CODE_PROPERTY;
        PrimitiveType.Code code = (PrimitiveType.Code) getNewValue(primitiveType, simplePropertyDescriptor);
        doTextReplace(primitiveType.getStartPosition(), primitiveType.getLength(), code.toString(), getEditGroup(primitiveType, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        if (!hasChildrenChanges(providesDirective)) {
            return doVisitUnchangedChildren(providesDirective);
        }
        rewriteNodeList(providesDirective, ProvidesDirective.IMPLEMENTATIONS_PROPERTY, rewriteRequiredNode(providesDirective, ProvidesDirective.NAME_PROPERTY), " with ", ", ");
        return false;
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        if (!hasChildrenChanges(qualifiedName)) {
            return doVisitUnchangedChildren(qualifiedName);
        }
        rewriteRequiredNode(qualifiedName, QualifiedName.QUALIFIER_PROPERTY);
        rewriteRequiredNode(qualifiedName, QualifiedName.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(SimpleName simpleName) {
        if (!hasChildrenChanges(simpleName)) {
            return doVisitUnchangedChildren(simpleName);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = SimpleName.IDENTIFIER_PROPERTY;
        doTextReplace(simpleName.getStartPosition(), simpleName.getLength(), (String) getNewValue(simpleName, simplePropertyDescriptor), getEditGroup(simpleName, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(SimpleType simpleType) {
        if (!hasChildrenChanges(simpleType)) {
            return doVisitUnchangedChildren(simpleType);
        }
        if (simpleType.getAST().apiLevel() >= 8) {
            rewriteTypeAnnotations(simpleType, SimpleType.ANNOTATIONS_PROPERTY, simpleType.getStartPosition());
        }
        rewriteRequiredNode(simpleType, SimpleType.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        int size;
        int nextEndOffset;
        if (!hasChildrenChanges(singleVariableDeclaration)) {
            return doVisitUnchangedChildren(singleVariableDeclaration);
        }
        int startPosition = singleVariableDeclaration.getStartPosition();
        int apiLevel = singleVariableDeclaration.getAST().apiLevel();
        if (apiLevel == 2) {
            rewriteModifiers(singleVariableDeclaration, INTERNAL_VARIABLE_MODIFIERS_PROPERTY, startPosition);
        } else {
            rewriteModifiers2(singleVariableDeclaration, SingleVariableDeclaration.MODIFIERS2_PROPERTY, startPosition);
        }
        ChildPropertyDescriptor childPropertyDescriptor = SingleVariableDeclaration.TYPE_PROPERTY;
        int rewriteRequiredNode = rewriteRequiredNode(singleVariableDeclaration, childPropertyDescriptor);
        if (apiLevel >= 3) {
            StructuralPropertyDescriptor structuralPropertyDescriptor = SingleVariableDeclaration.VARARGS_PROPERTY;
            if (isChanged(singleVariableDeclaration, structuralPropertyDescriptor)) {
                TextEditGroup editGroup = getEditGroup(singleVariableDeclaration, structuralPropertyDescriptor);
                if (getNewValue(singleVariableDeclaration, structuralPropertyDescriptor).equals(Boolean.TRUE)) {
                    if (apiLevel >= 8) {
                        rewriteRequiredNode = rewriteVarargsAnnotations(singleVariableDeclaration, SingleVariableDeclaration.VARARGS_ANNOTATIONS_PROPERTY, rewriteRequiredNode);
                    }
                    doTextInsert(rewriteRequiredNode, this.formatter.VARARGS.getPrefix(getIndent(singleVariableDeclaration.getStartPosition())), editGroup);
                    doTextInsert(rewriteRequiredNode, "...", editGroup);
                } else {
                    if (apiLevel >= 8) {
                        try {
                            size = singleVariableDeclaration.varargsAnnotations().size();
                        } catch (CoreException e10) {
                            handleException(e10);
                        }
                    } else {
                        size = 0;
                    }
                    if (size > 0) {
                        Annotation annotation = (Annotation) singleVariableDeclaration.varargsAnnotations().get(size - 1);
                        nextEndOffset = getScanner().getNextEndOffset(annotation.getStartPosition() + annotation.getLength(), true);
                    } else {
                        nextEndOffset = getScanner().getNextEndOffset(rewriteRequiredNode, true);
                    }
                    doTextRemove(rewriteRequiredNode, nextEndOffset - rewriteRequiredNode, editGroup);
                }
            } else if (apiLevel >= 8 && singleVariableDeclaration.isVarargs()) {
                rewriteVarargsAnnotations(singleVariableDeclaration, SingleVariableDeclaration.VARARGS_ANNOTATIONS_PROPERTY, rewriteRequiredNode);
            }
            if (!singleVariableDeclaration.isVarargs()) {
                ensureSpaceAfterReplace(singleVariableDeclaration, SingleVariableDeclaration.TYPE_PROPERTY);
            }
        } else {
            ensureSpaceAfterReplace(singleVariableDeclaration, childPropertyDescriptor);
        }
        int rewriteRequiredNode2 = rewriteRequiredNode(singleVariableDeclaration, SingleVariableDeclaration.NAME_PROPERTY);
        if (apiLevel < 8) {
            if (rewriteExtraDimensions(singleVariableDeclaration, INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY, rewriteRequiredNode2) > 0) {
                if (getChangeKind(singleVariableDeclaration, SingleVariableDeclaration.INITIALIZER_PROPERTY) == 2) {
                    try {
                        rewriteRequiredNode2 = getScanner().getPreviousTokenEndOffset(72, rewriteRequiredNode2);
                    } catch (CoreException e11) {
                        handleException(e11);
                    }
                } else {
                    rewriteRequiredNode2 = singleVariableDeclaration.getStartPosition() + singleVariableDeclaration.getLength();
                }
            }
        } else {
            rewriteRequiredNode2 = rewriteExtraDimensionsInfo(singleVariableDeclaration, rewriteRequiredNode2, SingleVariableDeclaration.EXTRA_DIMENSIONS2_PROPERTY);
        }
        rewriteNode(singleVariableDeclaration, SingleVariableDeclaration.INITIALIZER_PROPERTY, rewriteRequiredNode2, this.formatter.VAR_INITIALIZER);
        return false;
    }

    @Override
    public boolean visit(StringLiteral stringLiteral) {
        if (!hasChildrenChanges(stringLiteral)) {
            return doVisitUnchangedChildren(stringLiteral);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = StringLiteral.ESCAPED_VALUE_PROPERTY;
        doTextReplace(stringLiteral.getStartPosition(), stringLiteral.getLength(), (String) getNewValue(stringLiteral, simplePropertyDescriptor), getEditGroup(stringLiteral, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        if (!hasChildrenChanges(superConstructorInvocation)) {
            return doVisitUnchangedChildren(superConstructorInvocation);
        }
        int rewriteOptionalQualifier = rewriteOptionalQualifier(superConstructorInvocation, SuperConstructorInvocation.EXPRESSION_PROPERTY, superConstructorInvocation.getStartPosition());
        if (superConstructorInvocation.getAST().apiLevel() >= 3) {
            rewriteOptionalQualifier = rewriteOptionalTypeParameters(superConstructorInvocation, SuperConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, rewriteOptionalQualifier, Util.EMPTY_STRING, false, false);
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = SuperConstructorInvocation.ARGUMENTS_PROPERTY;
        if (isChanged(superConstructorInvocation, childListPropertyDescriptor)) {
            try {
                rewriteNodeList(superConstructorInvocation, childListPropertyDescriptor, getScanner().getTokenEndOffset(23, rewriteOptionalQualifier), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(superConstructorInvocation, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        if (!hasChildrenChanges(superFieldAccess)) {
            return doVisitUnchangedChildren(superFieldAccess);
        }
        rewriteOptionalQualifier(superFieldAccess, SuperFieldAccess.QUALIFIER_PROPERTY, superFieldAccess.getStartPosition());
        rewriteRequiredNode(superFieldAccess, SuperFieldAccess.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        if (!hasChildrenChanges(superMethodInvocation)) {
            return doVisitUnchangedChildren(superMethodInvocation);
        }
        int rewriteOptionalQualifier = rewriteOptionalQualifier(superMethodInvocation, SuperMethodInvocation.QUALIFIER_PROPERTY, superMethodInvocation.getStartPosition());
        if (superMethodInvocation.getAST().apiLevel() >= 3) {
            ChildListPropertyDescriptor childListPropertyDescriptor = SuperMethodInvocation.TYPE_ARGUMENTS_PROPERTY;
            if (isChanged(superMethodInvocation, childListPropertyDescriptor)) {
                try {
                    rewriteOptionalTypeParameters(superMethodInvocation, childListPropertyDescriptor, getScanner().getTokenEndOffset(1, rewriteOptionalQualifier), Util.EMPTY_STRING, false, false);
                } catch (CoreException e10) {
                    handleException(e10);
                }
            }
        }
        int rewriteRequiredNode = rewriteRequiredNode(superMethodInvocation, SuperMethodInvocation.NAME_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor2 = SuperMethodInvocation.ARGUMENTS_PROPERTY;
        if (isChanged(superMethodInvocation, childListPropertyDescriptor2)) {
            try {
                rewriteNodeList(superMethodInvocation, childListPropertyDescriptor2, getScanner().getTokenEndOffset(23, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e11) {
                handleException(e11);
                return false;
            }
        }
        voidVisit(superMethodInvocation, childListPropertyDescriptor2);
        return false;
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        String str;
        int i10;
        if (!hasChildrenChanges(switchCase)) {
            return doVisitUnchangedChildren(switchCase);
        }
        if (switchCase.getAST().apiLevel() >= 12) {
            int startPosition = switchCase.expressions().size() == 0 ? switchCase.getStartPosition() : rewriteNodeList(switchCase, SwitchCase.EXPRESSIONS2_PROPERTY, switchCase.getStartPosition(), Util.EMPTY_STRING, ", ");
            SimplePropertyDescriptor simplePropertyDescriptor = SwitchCase.SWITCH_LABELED_RULE_PROPERTY;
            if (!isChanged(switchCase, simplePropertyDescriptor)) {
                return false;
            }
            TextEditGroup editGroup = getEditGroup(switchCase, simplePropertyDescriptor);
            try {
                if (getNewValue(switchCase, simplePropertyDescriptor).equals(Boolean.TRUE)) {
                    str = "->";
                    i10 = 62;
                } else {
                    str = s.f32937c;
                    i10 = 98;
                }
                int tokenStartOffset = getScanner().getTokenStartOffset(i10, startPosition);
                doTextRemove(tokenStartOffset, getScanner().getTokenEndOffset(i10, tokenStartOffset) - tokenStartOffset, editGroup);
                doTextInsert(tokenStartOffset, str, editGroup);
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        rewriteExpressionOptionalQualifier(switchCase, INTERNAL_SWITCH_EXPRESSION_PROPERTY, switchCase.getStartPosition());
        return false;
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        if (!hasChildrenChanges(switchExpression)) {
            return doVisitUnchangedChildren(switchExpression);
        }
        int rewriteRequiredNode = rewriteRequiredNode(switchExpression, SwitchExpression.EXPRESSION_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = SwitchExpression.STATEMENTS_PROPERTY;
        if (getChangeKind(switchExpression, childListPropertyDescriptor) != 0) {
            try {
                int tokenEndOffset = getScanner().getTokenEndOffset(49, rewriteRequiredNode);
                int indent = getIndent(switchExpression.getStartPosition());
                if ("true".equals(this.options.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_SWITCH))) {
                    indent++;
                }
                SwitchListLabeledRuleRewriter switchListLabeledRuleRewriter = new SwitchListLabeledRuleRewriter(indent);
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(getLineDelimiter());
                stringBuffer.append(createIndentString(indent));
                switchListLabeledRuleRewriter.rewriteList(switchExpression, childListPropertyDescriptor, tokenEndOffset, stringBuffer.toString());
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(switchExpression, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        ListRewriter switchListRewriter;
        if (!hasChildrenChanges(switchStatement)) {
            return doVisitUnchangedChildren(switchStatement);
        }
        int rewriteRequiredNode = rewriteRequiredNode(switchStatement, SwitchStatement.EXPRESSION_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = SwitchStatement.STATEMENTS_PROPERTY;
        if (getChangeKind(switchStatement, childListPropertyDescriptor) != 0) {
            try {
                int tokenEndOffset = getScanner().getTokenEndOffset(49, rewriteRequiredNode);
                int indent = getIndent(switchStatement.getStartPosition());
                if ("true".equals(this.options.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_SWITCH))) {
                    indent++;
                }
                if (switchStatement.getAST().apiLevel() >= 12) {
                    switchListRewriter = new SwitchListLabeledRuleRewriter(indent);
                } else {
                    switchListRewriter = new SwitchListRewriter(indent);
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(getLineDelimiter());
                stringBuffer.append(createIndentString(indent));
                switchListRewriter.rewriteList(switchStatement, childListPropertyDescriptor, tokenEndOffset, stringBuffer.toString());
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(switchStatement, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(SynchronizedStatement synchronizedStatement) {
        if (!hasChildrenChanges(synchronizedStatement)) {
            return doVisitUnchangedChildren(synchronizedStatement);
        }
        rewriteRequiredNode(synchronizedStatement, SynchronizedStatement.EXPRESSION_PROPERTY);
        rewriteRequiredNode(synchronizedStatement, SynchronizedStatement.BODY_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        if (!hasChildrenChanges(thisExpression)) {
            return doVisitUnchangedChildren(thisExpression);
        }
        rewriteOptionalQualifier(thisExpression, ThisExpression.QUALIFIER_PROPERTY, thisExpression.getStartPosition());
        return false;
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        try {
            this.beforeRequiredSpaceIndex = getScanner().getTokenEndOffset(74, throwStatement.getStartPosition());
            if (!hasChildrenChanges(throwStatement)) {
                return doVisitUnchangedChildren(throwStatement);
            }
            ensureSpaceBeforeReplace(throwStatement);
            rewriteRequiredNode(throwStatement, ThrowStatement.EXPRESSION_PROPERTY);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        int doVisit;
        if (!hasChildrenChanges(tryStatement)) {
            return doVisitUnchangedChildren(tryStatement);
        }
        int startPosition = tryStatement.getStartPosition();
        int apiLevel = tryStatement.getAST().apiLevel();
        if (apiLevel >= 4) {
            ChildListPropertyDescriptor childListPropertyDescriptor = apiLevel < 9 ? INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY : TryStatement.RESOURCES2_PROPERTY;
            if (isChanged(tryStatement, childListPropertyDescriptor)) {
                int indent = getIndent(tryStatement.getStartPosition());
                String prefix = this.formatter.TRY_RESOURCES.getPrefix(indent);
                String str = String.valueOf(this.formatter.TRY_RESOURCES_PAREN.getPrefix(indent)) + "(";
                rewriteNodeList(tryStatement, childListPropertyDescriptor, getPosAfterTry(startPosition), str, ")", ";" + prefix);
            } else {
                doVisit(tryStatement, childListPropertyDescriptor, startPosition);
            }
        }
        int rewriteRequiredNode = rewriteRequiredNode(tryStatement, TryStatement.BODY_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor2 = TryStatement.CATCH_CLAUSES_PROPERTY;
        if (isChanged(tryStatement, childListPropertyDescriptor2)) {
            String prefix2 = this.formatter.CATCH_BLOCK.getPrefix(getIndent(tryStatement.getStartPosition()));
            doVisit = rewriteNodeList(tryStatement, childListPropertyDescriptor2, rewriteRequiredNode, prefix2, prefix2);
        } else {
            doVisit = doVisit(tryStatement, childListPropertyDescriptor2, rewriteRequiredNode);
        }
        rewriteNode(tryStatement, TryStatement.FINALLY_PROPERTY, doVisit, this.formatter.FINALLY_BLOCK);
        return false;
    }

    @Override
    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        if (!hasChildrenChanges(typeDeclarationStatement)) {
            return doVisitUnchangedChildren(typeDeclarationStatement);
        }
        if (typeDeclarationStatement.getAST().apiLevel() == 2) {
            rewriteRequiredNode(typeDeclarationStatement, INTERNAL_TDS_TYPE_DECLARATION_PROPERTY);
            return false;
        }
        rewriteRequiredNode(typeDeclarationStatement, TypeDeclarationStatement.DECLARATION_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(TypeLiteral typeLiteral) {
        if (!hasChildrenChanges(typeLiteral)) {
            return doVisitUnchangedChildren(typeLiteral);
        }
        rewriteRequiredNode(typeLiteral, TypeLiteral.TYPE_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(UnionType unionType) {
        if (!hasChildrenChanges(unionType)) {
            return doVisitUnchangedChildren(unionType);
        }
        rewriteNodeList(unionType, UnionType.TYPES_PROPERTY, unionType.getStartPosition(), Util.EMPTY_STRING, " | ");
        return false;
    }

    @Override
    public boolean visit(UsesDirective usesDirective) {
        if (!hasChildrenChanges(usesDirective)) {
            return doVisitUnchangedChildren(usesDirective);
        }
        rewriteRequiredNode(usesDirective, UsesDirective.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        if (!hasChildrenChanges(variableDeclarationExpression)) {
            return doVisitUnchangedChildren(variableDeclarationExpression);
        }
        int startPosition = variableDeclarationExpression.getStartPosition();
        if (variableDeclarationExpression.getAST().apiLevel() == 2) {
            rewriteModifiers(variableDeclarationExpression, INTERNAL_VDE_MODIFIERS_PROPERTY, startPosition);
        } else {
            rewriteModifiers2(variableDeclarationExpression, VariableDeclarationExpression.MODIFIERS2_PROPERTY, startPosition);
        }
        rewriteNodeList(variableDeclarationExpression, VariableDeclarationExpression.FRAGMENTS_PROPERTY, rewriteRequiredNode(variableDeclarationExpression, VariableDeclarationExpression.TYPE_PROPERTY), Util.EMPTY_STRING, ", ");
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        if (!hasChildrenChanges(variableDeclarationFragment)) {
            return doVisitUnchangedChildren(variableDeclarationFragment);
        }
        int rewriteRequiredNode = rewriteRequiredNode(variableDeclarationFragment, VariableDeclarationFragment.NAME_PROPERTY);
        if (variableDeclarationFragment.getAST().apiLevel() < 8) {
            if (rewriteExtraDimensions(variableDeclarationFragment, INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY, rewriteRequiredNode) > 0) {
                if (getChangeKind(variableDeclarationFragment, VariableDeclarationFragment.INITIALIZER_PROPERTY) == 2) {
                    try {
                        rewriteRequiredNode = getScanner().getPreviousTokenEndOffset(72, rewriteRequiredNode);
                    } catch (CoreException e10) {
                        handleException(e10);
                    }
                } else {
                    rewriteRequiredNode = variableDeclarationFragment.getStartPosition() + variableDeclarationFragment.getLength();
                }
            }
        } else {
            rewriteRequiredNode = rewriteExtraDimensionsInfo(variableDeclarationFragment, rewriteRequiredNode, VariableDeclarationFragment.EXTRA_DIMENSIONS2_PROPERTY);
        }
        rewriteNode(variableDeclarationFragment, VariableDeclarationFragment.INITIALIZER_PROPERTY, rewriteRequiredNode, this.formatter.VAR_INITIALIZER);
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        if (!hasChildrenChanges(variableDeclarationStatement)) {
            return doVisitUnchangedChildren(variableDeclarationStatement);
        }
        int startPosition = variableDeclarationStatement.getStartPosition();
        if (variableDeclarationStatement.getAST().apiLevel() == 2) {
            rewriteModifiers(variableDeclarationStatement, INTERNAL_VDS_MODIFIERS_PROPERTY, startPosition);
        } else {
            rewriteModifiers2(variableDeclarationStatement, VariableDeclarationStatement.MODIFIERS2_PROPERTY, startPosition);
        }
        rewriteNodeList(variableDeclarationStatement, VariableDeclarationStatement.FRAGMENTS_PROPERTY, rewriteRequiredNode(variableDeclarationStatement, VariableDeclarationStatement.TYPE_PROPERTY), Util.EMPTY_STRING, ", ");
        return false;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        if (!hasChildrenChanges(whileStatement)) {
            return doVisitUnchangedChildren(whileStatement);
        }
        int rewriteRequiredNode = rewriteRequiredNode(whileStatement, WhileStatement.EXPRESSION_PROPERTY);
        try {
            ChildPropertyDescriptor childPropertyDescriptor = WhileStatement.BODY_PROPERTY;
            if (isChanged(whileStatement, childPropertyDescriptor)) {
                rewriteBodyNode(whileStatement, childPropertyDescriptor, getScanner().getTokenEndOffset(25, rewriteRequiredNode), -1, getIndent(whileStatement.getStartPosition()), this.formatter.WHILE_BLOCK);
            } else {
                voidVisit(whileStatement, childPropertyDescriptor);
            }
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        if (!hasChildrenChanges(memberRef)) {
            return doVisitUnchangedChildren(memberRef);
        }
        rewriteNode(memberRef, MemberRef.QUALIFIER_PROPERTY, memberRef.getStartPosition(), ASTRewriteFormatter.NONE);
        rewriteRequiredNode(memberRef, MemberRef.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        if (!hasChildrenChanges(methodRef)) {
            return doVisitUnchangedChildren(methodRef);
        }
        rewriteNode(methodRef, MethodRef.QUALIFIER_PROPERTY, methodRef.getStartPosition(), ASTRewriteFormatter.NONE);
        int rewriteRequiredNode = rewriteRequiredNode(methodRef, MethodRef.NAME_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = MethodRef.PARAMETERS_PROPERTY;
        if (isChanged(methodRef, childListPropertyDescriptor)) {
            try {
                rewriteNodeList(methodRef, childListPropertyDescriptor, getScanner().getTokenEndOffset(23, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(methodRef, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(MethodRefParameter methodRefParameter) {
        if (!hasChildrenChanges(methodRefParameter)) {
            return doVisitUnchangedChildren(methodRefParameter);
        }
        int rewriteRequiredNode = rewriteRequiredNode(methodRefParameter, MethodRefParameter.TYPE_PROPERTY);
        if (methodRefParameter.getAST().apiLevel() >= 3) {
            SimplePropertyDescriptor simplePropertyDescriptor = MethodRefParameter.VARARGS_PROPERTY;
            if (isChanged(methodRefParameter, simplePropertyDescriptor)) {
                if (getNewValue(methodRefParameter, simplePropertyDescriptor).equals(Boolean.TRUE)) {
                    doTextInsert(rewriteRequiredNode, "...", getEditGroup(methodRefParameter, simplePropertyDescriptor));
                } else {
                    try {
                        doTextRemove(rewriteRequiredNode, getScanner().getNextEndOffset(rewriteRequiredNode, true) - rewriteRequiredNode, getEditGroup(methodRefParameter, simplePropertyDescriptor));
                    } catch (CoreException e10) {
                        handleException(e10);
                    }
                }
            }
        }
        rewriteNode(methodRefParameter, MethodRefParameter.NAME_PROPERTY, rewriteRequiredNode, ASTRewriteFormatter.SPACE);
        return false;
    }

    @Override
    public boolean visit(TagElement tagElement) {
        if (!hasChildrenChanges(tagElement)) {
            return doVisitUnchangedChildren(tagElement);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = TagElement.TAG_NAME_PROPERTY;
        int changeKind = getChangeKind(tagElement, simplePropertyDescriptor);
        if (changeKind == 1) {
            doTextInsert(tagElement.getStartPosition(), (String) getNewValue(tagElement, simplePropertyDescriptor), getEditGroup(tagElement, simplePropertyDescriptor));
        } else if (changeKind == 2) {
            doTextRemove(tagElement.getStartPosition(), findTagNameEnd(tagElement) - tagElement.getStartPosition(), getEditGroup(tagElement, simplePropertyDescriptor));
        } else if (changeKind == 4) {
            doTextReplace(tagElement.getStartPosition(), findTagNameEnd(tagElement) - tagElement.getStartPosition(), (String) getNewValue(tagElement, simplePropertyDescriptor), getEditGroup(tagElement, simplePropertyDescriptor));
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = TagElement.FRAGMENTS_PROPERTY;
        if (isChanged(tagElement, childListPropertyDescriptor)) {
            rewriteNodeList(tagElement, childListPropertyDescriptor, findTagNameEnd(tagElement), " ", " ");
            return false;
        }
        voidVisit(tagElement, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(TextElement textElement) {
        if (!hasChildrenChanges(textElement)) {
            return doVisitUnchangedChildren(textElement);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = TextElement.TEXT_PROPERTY;
        doTextReplace(textElement.getStartPosition(), textElement.getLength(), (String) getNewValue(textElement, simplePropertyDescriptor), getEditGroup(textElement, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        if (!hasChildrenChanges(annotationTypeDeclaration)) {
            return doVisitUnchangedChildren(annotationTypeDeclaration);
        }
        rewriteModifiers2(annotationTypeDeclaration, AnnotationTypeDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc(annotationTypeDeclaration, AnnotationTypeDeclaration.JAVADOC_PROPERTY));
        int rewriteRequiredNode = rewriteRequiredNode(annotationTypeDeclaration, AnnotationTypeDeclaration.NAME_PROPERTY);
        int indent = getIndent(annotationTypeDeclaration.getStartPosition()) + 1;
        rewriteParagraphList(annotationTypeDeclaration, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY, getPosAfterLeftBrace(rewriteRequiredNode), indent, -1, 2);
        return false;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        if (!hasChildrenChanges(annotationTypeMemberDeclaration)) {
            return doVisitUnchangedChildren(annotationTypeMemberDeclaration);
        }
        rewriteModifiers2(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.JAVADOC_PROPERTY));
        rewriteRequiredNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.TYPE_PROPERTY);
        int rewriteRequiredNode = rewriteRequiredNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.NAME_PROPERTY);
        try {
            ChildPropertyDescriptor childPropertyDescriptor = AnnotationTypeMemberDeclaration.DEFAULT_PROPERTY;
            int changeKind = getChangeKind(annotationTypeMemberDeclaration, childPropertyDescriptor);
            if (changeKind == 1 || changeKind == 2) {
                rewriteRequiredNode = getScanner().getTokenEndOffset(25, rewriteRequiredNode);
            }
            rewriteNode(annotationTypeMemberDeclaration, childPropertyDescriptor, rewriteRequiredNode, this.formatter.ANNOT_MEMBER_DEFAULT);
            return false;
        } catch (CoreException e10) {
            handleException(e10);
            return false;
        }
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        if (!hasChildrenChanges(enhancedForStatement)) {
            return doVisitUnchangedChildren(enhancedForStatement);
        }
        rewriteRequiredNode(enhancedForStatement, EnhancedForStatement.PARAMETER_PROPERTY);
        int rewriteRequiredNode = rewriteRequiredNode(enhancedForStatement, EnhancedForStatement.EXPRESSION_PROPERTY);
        ChildPropertyDescriptor childPropertyDescriptor = EnhancedForStatement.BODY_PROPERTY;
        RewriteEvent event = getEvent(enhancedForStatement, childPropertyDescriptor);
        if (event != null && event.getChangeKind() == 4) {
            try {
                rewriteBodyNode(enhancedForStatement, childPropertyDescriptor, getScanner().getTokenEndOffset(25, rewriteRequiredNode), -1, getIndent(enhancedForStatement.getStartPosition()), this.formatter.FOR_BLOCK);
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(enhancedForStatement, childPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        if (!hasChildrenChanges(enumConstantDeclaration)) {
            return doVisitUnchangedChildren(enumConstantDeclaration);
        }
        rewriteModifiers2(enumConstantDeclaration, EnumConstantDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc(enumConstantDeclaration, EnumConstantDeclaration.JAVADOC_PROPERTY));
        int rewriteRequiredNode = rewriteRequiredNode(enumConstantDeclaration, EnumConstantDeclaration.NAME_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = EnumConstantDeclaration.ARGUMENTS_PROPERTY;
        RewriteEvent event = getEvent(enumConstantDeclaration, childListPropertyDescriptor);
        if (event != null && event.getChangeKind() != 0) {
            RewriteEvent[] children = event.getChildren();
            try {
                boolean z10 = getScanner().readNext(rewriteRequiredNode, true) == 23;
                boolean z11 = z10 && isAllOfKind(children, 2);
                String str = Util.EMPTY_STRING;
                if (!z10) {
                    str = "(";
                } else if (!z11) {
                    rewriteRequiredNode = getScanner().getCurrentEndOffset();
                }
                rewriteRequiredNode = rewriteNodeList(enumConstantDeclaration, childListPropertyDescriptor, rewriteRequiredNode, str, ", ");
                if (!z10) {
                    doTextInsert(rewriteRequiredNode, ")", getEditGroup(children[children.length - 1]));
                } else if (z11) {
                    int nextEndOffset = getScanner().getNextEndOffset(rewriteRequiredNode, true);
                    doTextRemove(rewriteRequiredNode, nextEndOffset - rewriteRequiredNode, getEditGroup(children[children.length - 1]));
                    rewriteRequiredNode = nextEndOffset;
                }
            } catch (CoreException e10) {
                handleException(e10);
            }
        } else {
            rewriteRequiredNode = doVisit(enumConstantDeclaration, childListPropertyDescriptor, rewriteRequiredNode);
        }
        ChildPropertyDescriptor childPropertyDescriptor = EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY;
        if (isChanged(enumConstantDeclaration, childPropertyDescriptor)) {
            if (getChangeKind(enumConstantDeclaration, childPropertyDescriptor) == 2) {
                try {
                    rewriteRequiredNode = getScanner().getPreviousTokenEndOffset(49, rewriteRequiredNode);
                } catch (CoreException e11) {
                    handleException(e11);
                }
            } else {
                rewriteRequiredNode = enumConstantDeclaration.getStartPosition() + enumConstantDeclaration.getLength();
            }
            rewriteNode(enumConstantDeclaration, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY, rewriteRequiredNode, ASTRewriteFormatter.SPACE);
        }
        return false;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        int i10;
        int i11;
        int i12;
        int readNext;
        boolean z10;
        if (!hasChildrenChanges(enumDeclaration)) {
            return doVisitUnchangedChildren(enumDeclaration);
        }
        rewriteModifiers2(enumDeclaration, EnumDeclaration.MODIFIERS2_PROPERTY, rewriteJavadoc(enumDeclaration, EnumDeclaration.JAVADOC_PROPERTY));
        int posAfterLeftBrace = getPosAfterLeftBrace(rewriteNodeList(enumDeclaration, EnumDeclaration.SUPER_INTERFACE_TYPES_PROPERTY, rewriteRequiredNode(enumDeclaration, EnumDeclaration.NAME_PROPERTY), " implements ", ", "));
        String str = Util.EMPTY_STRING;
        ChildListPropertyDescriptor childListPropertyDescriptor = EnumDeclaration.ENUM_CONSTANTS_PROPERTY;
        RewriteEvent event = getEvent(enumDeclaration, childListPropertyDescriptor);
        if (event != null && event.getChangeKind() != 0 && isAllOfKind(event.getChildren(), 1)) {
            str = this.formatter.FIRST_ENUM_CONST.getPrefix(getIndent(enumDeclaration.getStartPosition()));
        }
        int rewriteNodeList = rewriteNodeList(enumDeclaration, childListPropertyDescriptor, posAfterLeftBrace, str, ", ");
        RewriteEvent event2 = getEvent(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY);
        if (event2 == null || event2.getChangeKind() == 0) {
            i10 = rewriteNodeList;
            i11 = 0;
        } else {
            boolean isEmpty = ((List) getNewValue(enumDeclaration, childListPropertyDescriptor)).isEmpty();
            RewriteEvent[] children = event2.getChildren();
            try {
                if (!isEmpty) {
                    i12 = getIndent(rewriteNodeList);
                } else {
                    i12 = getIndent(enumDeclaration.getStartPosition()) + 1;
                }
                try {
                    readNext = getScanner().readNext(rewriteNodeList, true);
                    z10 = readNext == 26;
                } catch (CoreException e10) {
                    e = e10;
                    handleException(e);
                    i10 = rewriteNodeList;
                    i11 = i12;
                    rewriteParagraphList(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY, i10, i11, -1, 2);
                    return false;
                }
            } catch (CoreException e11) {
                e = e11;
                i12 = 0;
            }
            if (!z10 && isAllOfKind(children, 1)) {
                if (isEmpty) {
                    doTextInsert(rewriteNodeList, this.formatter.FIRST_ENUM_CONST.getPrefix(i12 - 1), getEditGroup(children[0]));
                }
                if (readNext != 32) {
                    doTextInsert(rewriteNodeList, ";", getEditGroup(children[0]));
                } else {
                    int currentEndOffset = getScanner().getCurrentEndOffset();
                    if (getScanner().readNext(currentEndOffset, true) != 26) {
                        doTextInsert(currentEndOffset, ";", getEditGroup(children[0]));
                    } else {
                        currentEndOffset = getScanner().getCurrentEndOffset();
                        if (isAllOfKind(children, 2)) {
                            doTextRemove(rewriteNodeList, currentEndOffset - rewriteNodeList, getEditGroup(children[0]));
                        }
                    }
                    rewriteNodeList = currentEndOffset;
                }
            } else if (z10) {
                int currentEndOffset2 = getScanner().getCurrentEndOffset();
                if (isAllOfKind(children, 2)) {
                    doTextRemove(rewriteNodeList, currentEndOffset2 - rewriteNodeList, getEditGroup(children[0]));
                }
                i10 = currentEndOffset2;
                i11 = i12;
            }
            i10 = rewriteNodeList;
            i11 = i12;
        }
        rewriteParagraphList(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY, i10, i11, -1, 2);
        return false;
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        if (!hasChildrenChanges(expressionMethodReference)) {
            return doVisitUnchangedChildren(expressionMethodReference);
        }
        visitReferenceTypeArguments(expressionMethodReference, ExpressionMethodReference.TYPE_ARGUMENTS_PROPERTY, rewriteRequiredNode(expressionMethodReference, ExpressionMethodReference.EXPRESSION_PROPERTY));
        rewriteRequiredNode(expressionMethodReference, ExpressionMethodReference.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        if (!hasChildrenChanges(markerAnnotation)) {
            return doVisitUnchangedChildren(markerAnnotation);
        }
        rewriteRequiredNode(markerAnnotation, MarkerAnnotation.TYPE_NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        if (!hasChildrenChanges(memberValuePair)) {
            return doVisitUnchangedChildren(memberValuePair);
        }
        rewriteRequiredNode(memberValuePair, MemberValuePair.NAME_PROPERTY);
        rewriteRequiredNode(memberValuePair, MemberValuePair.VALUE_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(Modifier modifier) {
        if (!hasChildrenChanges(modifier)) {
            return doVisitUnchangedChildren(modifier);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = Modifier.KEYWORD_PROPERTY;
        doTextReplace(modifier.getStartPosition(), modifier.getLength(), getNewValue(modifier, simplePropertyDescriptor).toString(), getEditGroup(modifier, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(ModuleModifier moduleModifier) {
        if (!hasChildrenChanges(moduleModifier)) {
            return doVisitUnchangedChildren(moduleModifier);
        }
        SimplePropertyDescriptor simplePropertyDescriptor = ModuleModifier.KEYWORD_PROPERTY;
        doTextReplace(moduleModifier.getStartPosition(), moduleModifier.getLength(), getNewValue(moduleModifier, simplePropertyDescriptor).toString(), getEditGroup(moduleModifier, simplePropertyDescriptor));
        return false;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        if (!hasChildrenChanges(normalAnnotation)) {
            return doVisitUnchangedChildren(normalAnnotation);
        }
        int rewriteRequiredNode = rewriteRequiredNode(normalAnnotation, NormalAnnotation.TYPE_NAME_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = NormalAnnotation.VALUES_PROPERTY;
        if (isChanged(normalAnnotation, childListPropertyDescriptor)) {
            try {
                rewriteNodeList(normalAnnotation, childListPropertyDescriptor, getScanner().getTokenEndOffset(23, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(normalAnnotation, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(NameQualifiedType nameQualifiedType) {
        if (!hasChildrenChanges(nameQualifiedType)) {
            return doVisitUnchangedChildren(nameQualifiedType);
        }
        try {
            rewriteTypeAnnotations(nameQualifiedType, NameQualifiedType.ANNOTATIONS_PROPERTY, getScanner().getTokenEndOffset(1, rewriteRequiredNode(nameQualifiedType, NameQualifiedType.QUALIFIER_PROPERTY)));
        } catch (CoreException e10) {
            handleException(e10);
        }
        rewriteRequiredNode(nameQualifiedType, NameQualifiedType.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        if (!hasChildrenChanges(parameterizedType)) {
            return doVisitUnchangedChildren(parameterizedType);
        }
        int rewriteRequiredNode = rewriteRequiredNode(parameterizedType, ParameterizedType.TYPE_PROPERTY);
        ChildListPropertyDescriptor childListPropertyDescriptor = ParameterizedType.TYPE_ARGUMENTS_PROPERTY;
        if (isChanged(parameterizedType, childListPropertyDescriptor)) {
            try {
                rewriteNodeList(parameterizedType, childListPropertyDescriptor, getScanner().getTokenEndOffset(11, rewriteRequiredNode), Util.EMPTY_STRING, ", ");
                return false;
            } catch (CoreException e10) {
                handleException(e10);
                return false;
            }
        }
        voidVisit(parameterizedType, childListPropertyDescriptor);
        return false;
    }

    @Override
    public boolean visit(QualifiedType qualifiedType) {
        if (!hasChildrenChanges(qualifiedType)) {
            return doVisitUnchangedChildren(qualifiedType);
        }
        int rewriteRequiredNode = rewriteRequiredNode(qualifiedType, QualifiedType.QUALIFIER_PROPERTY);
        if (qualifiedType.getAST().apiLevel() >= 8) {
            try {
                rewriteTypeAnnotations(qualifiedType, QualifiedType.ANNOTATIONS_PROPERTY, getScanner().getTokenEndOffset(1, rewriteRequiredNode));
            } catch (CoreException e10) {
                handleException(e10);
            }
        }
        rewriteRequiredNode(qualifiedType, QualifiedType.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        if (!hasChildrenChanges(singleMemberAnnotation)) {
            return doVisitUnchangedChildren(singleMemberAnnotation);
        }
        rewriteRequiredNode(singleMemberAnnotation, SingleMemberAnnotation.TYPE_NAME_PROPERTY);
        rewriteRequiredNode(singleMemberAnnotation, SingleMemberAnnotation.VALUE_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        if (!hasChildrenChanges(superMethodReference)) {
            return doVisitUnchangedChildren(superMethodReference);
        }
        visitReferenceTypeArguments(superMethodReference, SuperMethodReference.TYPE_ARGUMENTS_PROPERTY, rewriteOptionalQualifier(superMethodReference, SuperMethodReference.QUALIFIER_PROPERTY, superMethodReference.getStartPosition()));
        rewriteRequiredNode(superMethodReference, SuperMethodReference.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        if (!hasChildrenChanges(typeMethodReference)) {
            return doVisitUnchangedChildren(typeMethodReference);
        }
        visitReferenceTypeArguments(typeMethodReference, TypeMethodReference.TYPE_ARGUMENTS_PROPERTY, rewriteRequiredNode(typeMethodReference, TypeMethodReference.TYPE_PROPERTY));
        rewriteRequiredNode(typeMethodReference, TypeMethodReference.NAME_PROPERTY);
        return false;
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        if (!hasChildrenChanges(typeParameter)) {
            return doVisitUnchangedChildren(typeParameter);
        }
        if (typeParameter.getAST().apiLevel() >= 8) {
            rewriteModifiers2(typeParameter, TypeParameter.MODIFIERS_PROPERTY, typeParameter.getStartPosition());
        }
        rewriteNodeList(typeParameter, TypeParameter.TYPE_BOUNDS_PROPERTY, rewriteRequiredNode(typeParameter, TypeParameter.NAME_PROPERTY), " extends ", " & ");
        return false;
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        ASTRewriteFormatter.Prefix prefix;
        ChildPropertyDescriptor childPropertyDescriptor;
        int changeKind;
        if (!hasChildrenChanges(wildcardType)) {
            return doVisitUnchangedChildren(wildcardType);
        }
        if (wildcardType.getAST().apiLevel() >= 8) {
            rewriteTypeAnnotations(wildcardType, WildcardType.ANNOTATIONS_PROPERTY, wildcardType.getStartPosition());
        }
        try {
            int nextEndOffset = getScanner().getNextEndOffset(wildcardType.getStartPosition(), true);
            Boolean bool = Boolean.TRUE;
            SimplePropertyDescriptor simplePropertyDescriptor = WildcardType.UPPER_BOUND_PROPERTY;
            if (bool.equals(getNewValue(wildcardType, simplePropertyDescriptor))) {
                prefix = this.formatter.WILDCARD_EXTENDS;
            } else {
                prefix = this.formatter.WILDCARD_SUPER;
            }
            if (getChangeKind(wildcardType, simplePropertyDescriptor) != 0 && (changeKind = getChangeKind(wildcardType, (childPropertyDescriptor = WildcardType.BOUND_PROPERTY))) != 1 && changeKind != 2) {
                doTextReplace(nextEndOffset, ((ASTNode) getOriginalValue(wildcardType, childPropertyDescriptor)).getStartPosition() - nextEndOffset, prefix.getPrefix(0), getEditGroup(wildcardType, childPropertyDescriptor));
            }
            rewriteNode(wildcardType, WildcardType.BOUND_PROPERTY, nextEndOffset, prefix);
        } catch (CoreException e10) {
            handleException(e10);
        }
        return false;
    }
}
