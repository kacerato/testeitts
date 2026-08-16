package com.github.javaparser.printer;

import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.AnnotationMemberDeclaration;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.CompactConstructorDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumConstantDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.ReceiverParameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.ArrayAccessExpr;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.BinaryExpr;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.CastExpr;
import com.github.javaparser.ast.expr.CharLiteralExpr;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.expr.ConditionalExpr;
import com.github.javaparser.ast.expr.DoubleLiteralExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.InstanceOfExpr;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.LongLiteralExpr;
import com.github.javaparser.ast.expr.MarkerAnnotationExpr;
import com.github.javaparser.ast.expr.MemberValuePair;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.MethodReferenceExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.NormalAnnotationExpr;
import com.github.javaparser.ast.expr.NullLiteralExpr;
import com.github.javaparser.ast.expr.ObjectCreationExpr;
import com.github.javaparser.ast.expr.RecordPatternExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.expr.SingleMemberAnnotationExpr;
import com.github.javaparser.ast.expr.StringLiteralExpr;
import com.github.javaparser.ast.expr.SuperExpr;
import com.github.javaparser.ast.expr.SwitchExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.expr.ThisExpr;
import com.github.javaparser.ast.expr.TypeExpr;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.ast.expr.UnaryExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.modules.ModuleExportsDirective;
import com.github.javaparser.ast.modules.ModuleOpensDirective;
import com.github.javaparser.ast.modules.ModuleProvidesDirective;
import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import com.github.javaparser.ast.modules.ModuleUsesDirective;
import com.github.javaparser.ast.nodeTypes.NodeWithTraversableScope;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithVariables;
import com.github.javaparser.ast.nodeTypes.SwitchNode;
import com.github.javaparser.ast.stmt.AssertStmt;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.BreakStmt;
import com.github.javaparser.ast.stmt.CatchClause;
import com.github.javaparser.ast.stmt.ContinueStmt;
import com.github.javaparser.ast.stmt.DoStmt;
import com.github.javaparser.ast.stmt.EmptyStmt;
import com.github.javaparser.ast.stmt.ExplicitConstructorInvocationStmt;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.ForStmt;
import com.github.javaparser.ast.stmt.IfStmt;
import com.github.javaparser.ast.stmt.LabeledStmt;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.stmt.SwitchStmt;
import com.github.javaparser.ast.stmt.SynchronizedStmt;
import com.github.javaparser.ast.stmt.ThrowStmt;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.stmt.UnparsableStmt;
import com.github.javaparser.ast.stmt.WhileStmt;
import com.github.javaparser.ast.stmt.YieldStmt;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.IntersectionType;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.type.WildcardType;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.printer.configuration.ConfigurationOption;
import com.github.javaparser.printer.configuration.DefaultConfigurationOption;
import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.printer.configuration.ImportOrderingStrategy;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import com.github.javaparser.printer.configuration.imports.DefaultImportOrderingStrategy;
import com.github.javaparser.utils.PositionUtils;
import com.github.javaparser.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

public class DefaultPrettyPrinterVisitor implements VoidVisitor<Void> {
    private static Pattern RTRIM = Pattern.compile("\\s+$");
    protected final PrinterConfiguration configuration;
    protected final SourcePrinter printer;

    public DefaultPrettyPrinterVisitor(PrinterConfiguration configuration) {
        this(configuration, new SourcePrinter(configuration));
    }

    private boolean doPrintAsArrayOfAnnotations(final ArrayInitializerExpr n10) {
        return getOption(DefaultPrinterConfiguration.ConfigOption.INDENT_PRINT_ARRAYS_OF_ANNOTATIONS).isPresent() && n10.getValues().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$doPrintAsArrayOfAnnotations$6;
                lambda$doPrintAsArrayOfAnnotations$6 = DefaultPrettyPrinterVisitor.lambda$doPrintAsArrayOfAnnotations$6((Expression) obj);
                return lambda$doPrintAsArrayOfAnnotations$6;
            }
        });
    }

    private void indentIf(boolean expr) {
        if (expr) {
            this.printer.indent();
        }
    }

    public static boolean lambda$doPrintAsArrayOfAnnotations$6(Expression s10) {
        return s10 instanceof AnnotationExpr;
    }

    public void lambda$null$4(final VariableDeclarator n10, final Void arg, Type commonType) {
        Type type2 = n10.getType2();
        ArrayType arrayType = null;
        for (int arrayLevel = commonType.getArrayLevel(); arrayLevel < type2.getArrayLevel(); arrayLevel++) {
            arrayType = (ArrayType) (arrayType == null ? type2 : arrayType.getComponentType());
            printAnnotations(arrayType.getAnnotations(), true, arg);
            this.printer.print(okhttp3.v.f99450n);
        }
    }

    public void lambda$printComment$0(final Void arg, Comment c10) {
        c10.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    public void lambda$visit$1(final Void arg, ModuleDeclaration m10) {
        m10.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    public void lambda$visit$10(final Void arg, final ConstructorDeclaration n10, ReceiverParameter rp) {
        rp.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (Utils.isNullOrEmpty(n10.getParameters())) {
            return;
        }
        this.printer.print(", ");
    }

    public void lambda$visit$11(final Void arg, final MethodDeclaration n10, ReceiverParameter rp) {
        rp.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (Utils.isNullOrEmpty(n10.getParameters())) {
            return;
        }
        this.printer.print(", ");
    }

    public void lambda$visit$12(final Void arg, Type t10) {
        t10.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    public void lambda$visit$13(SimpleName l10) {
        this.printer.print(" ").print(l10.getIdentifier());
    }

    public static boolean lambda$visit$14(EnumConstantDeclaration e10) {
        return e10.getComment().isPresent();
    }

    public void lambda$visit$15(SimpleName l10) {
        this.printer.print(" ").print(l10.getIdentifier());
    }

    public static boolean lambda$visit$2(String line) {
        return (line.isEmpty() || line.startsWith(" ")) ? false : true;
    }

    public void lambda$visit$3(final Void arg, Type t10) {
        t10.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    public void lambda$visit$5(final VariableDeclarator n10, final Void arg, NodeWithVariables ancestor) {
        ancestor.getMaximumCommonType().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$null$4(n10, arg, (Type) obj);
            }
        });
    }

    public void lambda$visit$7(String line) {
        this.printer.println();
        this.printer.print(line);
    }

    public static Boolean lambda$visit$8(Statement p10) {
        return Boolean.valueOf(p10.isReturnStmt() || p10.isThrowStmt() || p10.isAssertStmt() || p10.isExpressionStmt());
    }

    public void lambda$visit$9(final Void arg, final AtomicBoolean columnAlignFirstMethodChain, final AtomicBoolean methodCallWithScopeInScope, final AtomicBoolean lastMethodInCallChain, Expression scope) {
        scope.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (columnAlignFirstMethodChain.get()) {
            if (methodCallWithScopeInScope.get()) {
                this.printer.println();
            } else if (!lastMethodInCallChain.get()) {
                this.printer.reindentWithAlignToCursor();
            }
        }
        this.printer.print(".");
    }

    private void printSwitchNode(SwitchNode n10, Void arg) {
        printComment(n10.getComment(), arg);
        this.printer.print("switch(");
        n10.getSelector().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(") {");
        if (n10.getEntries() != null) {
            indentIf(getOption(DefaultPrinterConfiguration.ConfigOption.INDENT_CASE_IN_SWITCH).isPresent());
            Iterator<SwitchEntry> it = n10.getEntries().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            }
            unindentIf(getOption(DefaultPrinterConfiguration.ConfigOption.INDENT_CASE_IN_SWITCH).isPresent());
        }
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    private void unindentIf(boolean expr) {
        if (expr) {
            this.printer.unindent();
        }
    }

    public Optional<ConfigurationOption> getOption(DefaultPrinterConfiguration.ConfigOption cOption) {
        return this.configuration.get(new DefaultConfigurationOption(cOption));
    }

    public void printAnnotations(final NodeList<AnnotationExpr> annotations, boolean prefixWithASpace, final Void arg) {
        if (annotations.isEmpty()) {
            return;
        }
        if (prefixWithASpace) {
            this.printer.print(" ");
        }
        Iterator<AnnotationExpr> it = annotations.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(" ");
        }
    }

    public <T extends Expression> void printArguments(final NodeList<T> args, final Void arg) {
        this.printer.print("(");
        if (!Utils.isNullOrEmpty(args)) {
            boolean z10 = args.size() > 1 && getOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_PARAMETERS).isPresent();
            if (z10) {
                SourcePrinter sourcePrinter = this.printer;
                sourcePrinter.indentWithAlignTo(sourcePrinter.getCursor().column);
            }
            Iterator<T> it = args.iterator();
            while (it.hasNext()) {
                it.next().accept(this, arg);
                if (it.hasNext()) {
                    this.printer.print(DocLint.SEPARATOR);
                    if (z10) {
                        this.printer.println();
                    } else {
                        this.printer.print(" ");
                    }
                }
            }
            if (z10) {
                this.printer.unindent();
            }
        }
        this.printer.print(")");
    }

    public void printComment(final Optional<Comment> comment, final Void arg) {
        comment.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$printComment$0(arg, (Comment) obj);
            }
        });
    }

    public void printImports(NodeList<ImportDeclaration> imports, Void arg) {
        ImportOrderingStrategy defaultImportOrderingStrategy = new DefaultImportOrderingStrategy();
        Optional<ConfigurationOption> option = getOption(DefaultPrinterConfiguration.ConfigOption.SORT_IMPORTS_STRATEGY);
        if (option.isPresent()) {
            ConfigurationOption configurationOption = option.get();
            if (configurationOption.hasValue()) {
                defaultImportOrderingStrategy = (ImportOrderingStrategy) configurationOption.asValue();
            }
        }
        if (getOption(DefaultPrinterConfiguration.ConfigOption.ORDER_IMPORTS).isPresent()) {
            defaultImportOrderingStrategy.setSortImportsAlphabetically(true);
        }
        for (NodeList<ImportDeclaration> nodeList : defaultImportOrderingStrategy.sortImports(imports)) {
            nodeList.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (!nodeList.isEmpty()) {
                this.printer.println();
            }
        }
    }

    public void printMemberAnnotations(final NodeList<AnnotationExpr> annotations, final Void arg) {
        if (annotations.isEmpty()) {
            return;
        }
        Iterator<AnnotationExpr> it = annotations.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.println();
        }
    }

    public void printMembers(final NodeList<BodyDeclaration<?>> members, final Void arg) {
        Iterator<BodyDeclaration<?>> it = members.iterator();
        while (it.hasNext()) {
            BodyDeclaration<?> next = it.next();
            this.printer.println();
            next.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.println();
        }
    }

    public void printModifiers(final NodeList<Modifier> modifiers) {
        if (modifiers.size() > 0) {
            this.printer.print(((String) modifiers.stream().map(new C11839t()).map(new C11840u()).collect(Collectors.joining(" "))) + " ");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void printOrphanCommentsBeforeThisChildNode(final Node node) {
        Node orElse;
        if (!getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS).isPresent() || (node instanceof Comment) || (orElse = node.getParentNode().orElse(null)) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(orElse.getChildNodes());
        PositionUtils.sortByBeginPosition(arrayList);
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                i10 = -1;
                break;
            } else if (arrayList.get(i10) == node) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            throw new AssertionError((Object) "I am not a child of my parent.");
        }
        int i11 = -1;
        for (int i12 = i10 - 1; i12 >= 0 && i11 == -1; i12--) {
            if (!(arrayList.get(i12) instanceof Comment)) {
                i11 = i12;
            }
        }
        for (int i13 = i11 + 1; i13 < i10; i13++) {
            Node node2 = (Node) arrayList.get(i13);
            if (!(node2 instanceof Comment)) {
                throw new RuntimeException("Expected comment, instead " + ((Object) node2.getClass()) + ". Position of previous child: " + i11 + ", position of child " + i10);
            }
            node2.accept(this, (DefaultPrettyPrinterVisitor) null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void printOrphanCommentsEnding(final Node node) {
        if (getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS).isPresent()) {
            ArrayList arrayList = new ArrayList(node.getChildNodes());
            PositionUtils.sortByBeginPosition(arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            int i10 = 0;
            boolean z10 = true;
            while (z10 && i10 < arrayList.size()) {
                z10 = ((Node) arrayList.get((arrayList.size() - 1) - i10)) instanceof Comment;
                if (z10) {
                    i10++;
                }
            }
            for (int i11 = 0; i11 < i10; i11++) {
                ((Node) arrayList.get((arrayList.size() - i10) + i11)).accept(this, (DefaultPrettyPrinterVisitor) null);
            }
        }
    }

    public void printPrePostFixOptionalList(final NodeList<? extends Visitable> args, final Void arg, String prefix, String separator, String postfix) {
        if (args.isEmpty()) {
            return;
        }
        this.printer.print(prefix);
        Iterator<? extends Visitable> it = args.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(separator);
            }
        }
        this.printer.print(postfix);
    }

    public void printPrePostFixRequiredList(final NodeList<? extends Visitable> args, final Void arg, String prefix, String separator, String postfix) {
        this.printer.print(prefix);
        if (!args.isEmpty()) {
            Iterator<? extends Visitable> it = args.iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(separator);
                }
            }
        }
        this.printer.print(postfix);
    }

    public void printTypeArgs(final NodeWithTypeArguments<?> nodeWithTypeArguments, final Void arg) {
        NodeList<Type> orElse = nodeWithTypeArguments.getTypeArguments().orElse(null);
        if (Utils.isNullOrEmpty(orElse)) {
            return;
        }
        this.printer.print("<");
        Iterator<Type> it = orElse.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(", ");
            }
        }
        this.printer.print(">");
    }

    public void printTypeParameters(final NodeList<TypeParameter> args, final Void arg) {
        if (Utils.isNullOrEmpty(args)) {
            return;
        }
        this.printer.print("<");
        Iterator<TypeParameter> it = args.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(", ");
            }
        }
        this.printer.print(">");
    }

    public String toString() {
        return this.printer.toString();
    }

    @Override
    public void visit(final UnknownType n10, final Void arg) {
    }

    public DefaultPrettyPrinterVisitor(PrinterConfiguration configuration, SourcePrinter printer) {
        this.configuration = configuration;
        this.printer = printer;
    }

    @Override
    public void visit(final CompilationUnit n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getParsed() == Node.Parsedness.UNPARSABLE) {
            this.printer.println("???");
            return;
        }
        if (n10.getPackageDeclaration().isPresent()) {
            n10.getPackageDeclaration().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        printImports(n10.getImports(), arg);
        Iterator<TypeDeclaration<?>> it = n10.getTypes().iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.println();
            if (it.hasNext()) {
                this.printer.println();
            }
        }
        n10.getModule().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$1(arg, (ModuleDeclaration) obj);
            }
        });
        printOrphanCommentsEnding(n10);
    }

    @Override
    public void visit(final PackageDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        this.printer.print("package ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(";");
        this.printer.println();
        printOrphanCommentsEnding(n10);
    }

    @Override
    public void visit(final NameExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printOrphanCommentsEnding(n10);
    }

    @Override
    public void visit(final Name n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getQualifier().isPresent()) {
            n10.getQualifier().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(".");
        }
        this.printer.print(n10.getIdentifier());
        printOrphanCommentsEnding(n10);
    }

    @Override
    public void visit(SimpleName n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(n10.getIdentifier());
    }

    @Override
    public void visit(final ClassOrInterfaceDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        if (n10.isInterface()) {
            this.printer.print("interface ");
        } else {
            this.printer.print(ExternalAnnotationProvider.CLASS_PREFIX);
        }
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printTypeParameters(n10.getTypeParameters(), arg);
        if (!n10.getExtendedTypes().isEmpty()) {
            this.printer.print(" extends ");
            Iterator<ClassOrInterfaceType> it = n10.getExtendedTypes().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        if (!n10.getImplementedTypes().isEmpty()) {
            this.printer.print(" implements ");
            Iterator<ClassOrInterfaceType> it2 = n10.getImplementedTypes().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        if (!n10.getPermittedTypes().isEmpty()) {
            this.printer.print(" permits ");
            Iterator<ClassOrInterfaceType> it3 = n10.getPermittedTypes().iterator();
            while (it3.hasNext()) {
                it3.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it3.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.println(" {");
        this.printer.indent();
        if (!Utils.isNullOrEmpty(n10.getMembers())) {
            printMembers(n10.getMembers(), arg);
        }
        printOrphanCommentsEnding(n10);
        this.printer.unindent();
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(RecordDeclaration n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        this.printer.print("record ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printTypeParameters(n10.getTypeParameters(), arg);
        this.printer.print("(");
        if (!Utils.isNullOrEmpty(n10.getParameters())) {
            Iterator<Parameter> it = n10.getParameters().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(")");
        if (!n10.getImplementedTypes().isEmpty()) {
            this.printer.print(" implements ");
            Iterator<ClassOrInterfaceType> it2 = n10.getImplementedTypes().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.println(" {");
        this.printer.indent();
        if (!Utils.isNullOrEmpty(n10.getMembers())) {
            printMembers(n10.getMembers(), arg);
        }
        printOrphanCommentsEnding(n10);
        this.printer.unindent();
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final JavadocComment n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        if (getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS).isPresent() && getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_JAVADOC).isPresent()) {
            this.printer.println(n10.getHeader());
            String[] split = Utils.normalizeEolInTextBlock(n10.getContent(), getOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER).get().asString()).split("\\R");
            ArrayList<String> arrayList = new ArrayList();
            for (String str : split) {
                String trim = str.trim();
                if (trim.startsWith("*")) {
                    str = trim.substring(1);
                }
                arrayList.add(Utils.trimTrailingSpaces(str));
            }
            boolean anyMatch = arrayList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visit$2;
                    lambda$visit$2 = DefaultPrettyPrinterVisitor.lambda$visit$2((String) obj);
                    return lambda$visit$2;
                }
            });
            boolean z10 = false;
            boolean z11 = true;
            for (String str2 : arrayList) {
                if (!str2.isEmpty()) {
                    if (z10) {
                        this.printer.println(" *");
                        z10 = false;
                    }
                    this.printer.print(" *");
                    if (anyMatch) {
                        this.printer.print(" ");
                    }
                    this.printer.println(str2);
                    z11 = false;
                } else if (!z11) {
                    z10 = true;
                }
            }
            this.printer.println(" " + n10.getFooter());
        }
    }

    @Override
    public void visit(final ClassOrInterfaceType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getScope().isPresent()) {
            n10.getScope().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(".");
        }
        printAnnotations(n10.getAnnotations(), false, arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (n10.isUsingDiamondOperator()) {
            this.printer.print("<>");
        } else {
            printTypeArgs(n10, arg);
        }
    }

    @Override
    public void visit(final TypeParameter n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (Utils.isNullOrEmpty(n10.getTypeBound())) {
            return;
        }
        this.printer.print(" extends ");
        Iterator<ClassOrInterfaceType> it = n10.getTypeBound().iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(" & ");
            }
        }
    }

    @Override
    public void visit(final PrimitiveType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), true, arg);
        this.printer.print(n10.getType().asString());
    }

    @Override
    public void visit(ArrayType arrayType, Void r42) {
        LinkedList linkedList = new LinkedList();
        Visitable visitable = arrayType;
        while (visitable instanceof ArrayType) {
            ArrayType arrayType2 = (ArrayType) visitable;
            linkedList.add(arrayType2);
            visitable = arrayType2.getComponentType();
        }
        visitable.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) r42);
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            printAnnotations(((ArrayType) it.next()).getAnnotations(), true, r42);
            this.printer.print(okhttp3.v.f99450n);
        }
    }

    @Override
    public void visit(final ArrayCreationLevel n10, final Void arg) {
        printAnnotations(n10.getAnnotations(), true, arg);
        this.printer.print("[");
        if (n10.getDimension().isPresent()) {
            n10.getDimension().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print("]");
    }

    @Override
    public void visit(final IntersectionType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        Iterator<ReferenceType> it = n10.getElements().iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            ReferenceType next = it.next();
            if (z10) {
                z10 = false;
            } else {
                this.printer.print(" & ");
            }
            next.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final UnionType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        boolean z10 = true;
        printAnnotations(n10.getAnnotations(), true, arg);
        Iterator<ReferenceType> it = n10.getElements().iterator();
        while (it.hasNext()) {
            ReferenceType next = it.next();
            if (z10) {
                z10 = false;
            } else {
                this.printer.print(" | ");
            }
            next.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final WildcardType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        this.printer.print("?");
        if (n10.getExtendedType().isPresent()) {
            this.printer.print(" extends ");
            n10.getExtendedType().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        if (n10.getSuperType().isPresent()) {
            this.printer.print(" super ");
            n10.getSuperType().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final FieldDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        if (!n10.getVariables().isEmpty()) {
            Optional<Type> maximumCommonType = n10.getMaximumCommonType();
            maximumCommonType.ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultPrettyPrinterVisitor.this.lambda$visit$3(arg, (Type) obj);
                }
            });
            if (!maximumCommonType.isPresent()) {
                this.printer.print("???");
            }
        }
        this.printer.print(" ");
        Iterator<VariableDeclarator> it = n10.getVariables().iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(", ");
            }
        }
        this.printer.print(";");
    }

    @Override
    public void visit(final VariableDeclarator n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        n10.findAncestor(NodeWithVariables.class).ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$5(n10, arg, (NodeWithVariables) obj);
            }
        });
        if (n10.getInitializer().isPresent()) {
            this.printer.print(" = ");
            n10.getInitializer().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final ArrayInitializerExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("{");
        if (!Utils.isNullOrEmpty(n10.getValues())) {
            boolean doPrintAsArrayOfAnnotations = doPrintAsArrayOfAnnotations(n10);
            if (!doPrintAsArrayOfAnnotations) {
                this.printer.print(" ");
            } else {
                this.printer.println();
                this.printer.indent();
                this.printer.indent();
            }
            Iterator<Expression> it = n10.getValues().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(doPrintAsArrayOfAnnotations ? DocLint.SEPARATOR : ", ");
                    if (doPrintAsArrayOfAnnotations) {
                        this.printer.println();
                    }
                }
            }
            if (!doPrintAsArrayOfAnnotations) {
                this.printer.print(" ");
            } else {
                this.printer.println();
                this.printer.unindent();
                this.printer.unindent();
            }
        }
        printOrphanCommentsEnding(n10);
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final VoidType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        this.printer.print("void");
    }

    @Override
    public void visit(final VarType n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        this.printer.print("var");
    }

    @Override
    public void visit(Modifier n10, Void arg) {
        this.printer.print(n10.getKeyword().asString());
        this.printer.print(" ");
    }

    @Override
    public void visit(final ArrayAccessExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("[");
        n10.getIndex().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("]");
    }

    @Override
    public void visit(final ArrayCreationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("new ");
        n10.getElementType().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        Iterator<ArrayCreationLevel> it = n10.getLevels().iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        if (n10.getInitializer().isPresent()) {
            this.printer.print(" ");
            n10.getInitializer().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final AssignExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getTarget().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        DefaultPrinterConfiguration.ConfigOption configOption = DefaultPrinterConfiguration.ConfigOption.SPACE_AROUND_OPERATORS;
        if (getOption(configOption).isPresent()) {
            this.printer.print(" ");
        }
        this.printer.print(n10.getOperator().asString());
        if (getOption(configOption).isPresent()) {
            this.printer.print(" ");
        }
        n10.getValue().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final BinaryExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getLeft().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        DefaultPrinterConfiguration.ConfigOption configOption = DefaultPrinterConfiguration.ConfigOption.SPACE_AROUND_OPERATORS;
        if (getOption(configOption).isPresent()) {
            this.printer.print(" ");
        }
        this.printer.print(n10.getOperator().asString());
        if (getOption(configOption).isPresent()) {
            this.printer.print(" ");
        }
        n10.getRight().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final CastExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("(");
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(") ");
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ClassExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(".class");
    }

    @Override
    public void visit(final ConditionalExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getCondition().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" ? ");
        n10.getThenExpr().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" : ");
        n10.getElseExpr().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final EnclosedExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("(");
        n10.getInner().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(")");
    }

    @Override
    public void visit(final FieldAccessExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getScope().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(".");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final InstanceOfExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" instanceof ");
        if (n10.getPattern().isPresent()) {
            n10.getPattern().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        } else {
            n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final TypePatternExpr n10, final Void arg) {
        printModifiers(n10.getModifiers());
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final RecordPatternExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printArguments(n10.getPatternList(), arg);
    }

    @Override
    public void visit(final CharLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("'");
        this.printer.print(n10.getValue());
        this.printer.print("'");
    }

    @Override
    public void visit(final DoubleLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(n10.getValue());
    }

    @Override
    public void visit(final IntegerLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(n10.getValue());
    }

    @Override
    public void visit(final LongLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(n10.getValue());
    }

    @Override
    public void visit(final StringLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(JavadocConstants.ANCHOR_PREFIX_END);
        this.printer.print(n10.getValue());
        this.printer.print(JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public void visit(final TextBlockLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("\"\"\"");
        this.printer.indent();
        n10.stripIndentOfLines().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$7((String) obj);
            }
        });
        this.printer.print("\"\"\"");
        this.printer.unindent();
    }

    @Override
    public void visit(final BooleanLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(String.valueOf(n10.getValue()));
    }

    @Override
    public void visit(final NullLiteralExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("null");
    }

    @Override
    public void visit(final ThisExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getTypeName().isPresent()) {
            n10.getTypeName().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(".");
        }
        this.printer.print("this");
    }

    @Override
    public void visit(final SuperExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getTypeName().isPresent()) {
            n10.getTypeName().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(".");
        }
        this.printer.print("super");
    }

    @Override
    public void visit(final MethodCallExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        if (getOption(DefaultPrinterConfiguration.ConfigOption.COLUMN_ALIGN_FIRST_METHOD_CHAIN).isPresent() && ((Boolean) n10.findAncestor(Statement.class).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Boolean lambda$visit$8;
                lambda$visit$8 = DefaultPrettyPrinterVisitor.lambda$visit$8((Statement) obj);
                return lambda$visit$8;
            }
        }).orElse(Boolean.FALSE)).booleanValue()) {
            Optional<Node> parentNode = n10.getParentNode();
            Node node = n10;
            while (parentNode.isPresent() && ((Boolean) parentNode.filter(new C11801f(NodeWithTraversableScope.class)).map(new C11802g(NodeWithTraversableScope.class)).flatMap(new C()).map(new C11803h(node)).orElse(Boolean.FALSE)).booleanValue()) {
                node = parentNode.get();
                parentNode = node.getParentNode();
            }
            atomicBoolean.set(!parentNode.filter(new C11801f(MethodCallExpr.class)).isPresent());
        }
        final AtomicBoolean atomicBoolean2 = new AtomicBoolean(true);
        if (atomicBoolean.get()) {
            Node node2 = n10;
            while (true) {
                if (!((Boolean) node2.getParentNode().filter(new C11801f(NodeWithTraversableScope.class)).map(new C11802g(NodeWithTraversableScope.class)).flatMap(new C()).map(new C11803h(node2)).orElse(Boolean.FALSE)).booleanValue()) {
                    break;
                }
                node2 = node2.getParentNode().orElseThrow(new C11845z());
                if (node2 instanceof MethodCallExpr) {
                    atomicBoolean2.set(false);
                    break;
                }
            }
        }
        final AtomicBoolean atomicBoolean3 = new AtomicBoolean();
        if (atomicBoolean.get()) {
            Optional<Expression> scope = n10.getScope();
            while (true) {
                if (!scope.filter(new A(NodeWithTraversableScope.class)).isPresent()) {
                    break;
                }
                Optional<Expression> flatMap = scope.map(new B(NodeWithTraversableScope.class)).flatMap(new C());
                if (scope.filter(new A(MethodCallExpr.class)).isPresent() && flatMap.isPresent()) {
                    atomicBoolean3.set(true);
                    break;
                }
                scope = flatMap;
            }
        }
        n10.getScope().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$9(arg, atomicBoolean, atomicBoolean3, atomicBoolean2, (Expression) obj);
            }
        });
        printTypeArgs(n10, arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.duplicateIndent();
        printArguments(n10.getArguments(), arg);
        this.printer.unindent();
        if (atomicBoolean.get() && atomicBoolean3.get() && atomicBoolean2.get()) {
            this.printer.reindentToPreviousLevel();
        }
    }

    @Override
    public void visit(final ObjectCreationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.hasScope()) {
            n10.getScope().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            this.printer.print(".");
        }
        this.printer.print("new ");
        printTypeArgs(n10, arg);
        if (!Utils.isNullOrEmpty(n10.getTypeArguments().orElse(null))) {
            this.printer.print(" ");
        }
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printArguments(n10.getArguments(), arg);
        if (n10.getAnonymousClassBody().isPresent()) {
            this.printer.println(" {");
            this.printer.indent();
            printMembers(n10.getAnonymousClassBody().get(), arg);
            this.printer.unindent();
            this.printer.print(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public void visit(final UnaryExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getOperator().isPrefix()) {
            this.printer.print(n10.getOperator().asString());
        }
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (n10.getOperator().isPostfix()) {
            this.printer.print(n10.getOperator().asString());
        }
    }

    @Override
    public void visit(final ConstructorDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        printTypeParameters(n10.getTypeParameters(), arg);
        if (n10.isGeneric()) {
            this.printer.print(" ");
        }
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("(");
        n10.getReceiverParameter().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$10(arg, n10, (ReceiverParameter) obj);
            }
        });
        if (!n10.getParameters().isEmpty()) {
            Iterator<Parameter> it = n10.getParameters().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(")");
        if (!Utils.isNullOrEmpty(n10.getThrownExceptions())) {
            this.printer.print(" throws ");
            Iterator<ReferenceType> it2 = n10.getThrownExceptions().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(" ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final CompactConstructorDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        printTypeParameters(n10.getTypeParameters(), arg);
        if (n10.isGeneric()) {
            this.printer.print(" ");
        }
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (!Utils.isNullOrEmpty(n10.getThrownExceptions())) {
            this.printer.print(" throws ");
            Iterator<ReferenceType> it = n10.getThrownExceptions().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(" ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final MethodDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        printTypeParameters(n10.getTypeParameters(), arg);
        if (!Utils.isNullOrEmpty(n10.getTypeParameters())) {
            this.printer.print(" ");
        }
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("(");
        n10.getReceiverParameter().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$11(arg, n10, (ReceiverParameter) obj);
            }
        });
        if (!Utils.isNullOrEmpty(n10.getParameters())) {
            Iterator<Parameter> it = n10.getParameters().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(")");
        if (!Utils.isNullOrEmpty(n10.getThrownExceptions())) {
            this.printer.print(" throws ");
            Iterator<ReferenceType> it2 = n10.getThrownExceptions().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        if (!n10.getBody().isPresent()) {
            this.printer.print(";");
        } else {
            this.printer.print(" ");
            n10.getBody().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final Parameter n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        printModifiers(n10.getModifiers());
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (n10.isVarArgs()) {
            printAnnotations(n10.getVarArgsAnnotations(), false, arg);
            this.printer.print("...");
        }
        if (!n10.getType2().isUnknownType()) {
            this.printer.print(" ");
        }
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ReceiverParameter n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printAnnotations(n10.getAnnotations(), false, arg);
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ExplicitConstructorInvocationStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.isThis()) {
            printTypeArgs(n10, arg);
            this.printer.print("this");
        } else {
            if (n10.getExpression().isPresent()) {
                n10.getExpression().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                this.printer.print(".");
            }
            printTypeArgs(n10, arg);
            this.printer.print("super");
        }
        printArguments(n10.getArguments(), arg);
        this.printer.print(";");
    }

    @Override
    public void visit(final VariableDeclarationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (((Boolean) n10.getParentNode().map(new C11804i(ExpressionStmt.class)).orElse(Boolean.FALSE)).booleanValue()) {
            printMemberAnnotations(n10.getAnnotations(), arg);
        } else {
            printAnnotations(n10.getAnnotations(), false, arg);
        }
        printModifiers(n10.getModifiers());
        if (!n10.getVariables().isEmpty()) {
            n10.getMaximumCommonType().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultPrettyPrinterVisitor.this.lambda$visit$12(arg, (Type) obj);
                }
            });
        }
        this.printer.print(" ");
        Iterator<VariableDeclarator> it = n10.getVariables().iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(", ");
            }
        }
    }

    @Override
    public void visit(final LocalClassDeclarationStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getClassDeclaration().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final LocalRecordDeclarationStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getRecordDeclaration().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final AssertStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("assert ");
        n10.getCheck().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (n10.getMessage().isPresent()) {
            this.printer.print(" : ");
            n10.getMessage().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print(";");
    }

    @Override
    public void visit(final BlockStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.println("{");
        if (n10.getStatements() != null) {
            this.printer.indent();
            Iterator<Statement> it = n10.getStatements().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                this.printer.println();
            }
        }
        printOrphanCommentsEnding(n10);
        this.printer.unindent();
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final LabeledStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getLabel().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(": ");
        n10.getStatement().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final EmptyStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(";");
    }

    @Override
    public void visit(final ExpressionStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(";");
    }

    @Override
    public void visit(final SwitchStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printSwitchNode(n10, arg);
    }

    @Override
    public void visit(SwitchExpr n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printSwitchNode(n10, arg);
    }

    @Override
    public void visit(final SwitchEntry n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        String str = n10.getType() == SwitchEntry.Type.STATEMENT_GROUP ? b3.s.f32937c : " ->";
        if (Utils.isNullOrEmpty(n10.getLabels())) {
            this.printer.print("default" + str);
        } else {
            this.printer.print("case ");
            Iterator<Expression> it = n10.getLabels().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
            if (n10.getLabels().isNonEmpty() && n10.isDefault()) {
                this.printer.print(", default");
            }
            if (n10.getGuard().isPresent()) {
                this.printer.print(" when ");
                n10.getGuard().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            }
            this.printer.print(str);
        }
        this.printer.println();
        this.printer.indent();
        if (n10.getStatements() != null) {
            Iterator<Statement> it2 = n10.getStatements().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                this.printer.println();
            }
        }
        this.printer.unindent();
    }

    @Override
    public void visit(final BreakStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("break");
        n10.getLabel().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$13((SimpleName) obj);
            }
        });
        this.printer.print(";");
    }

    @Override
    public void visit(final YieldStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("yield ");
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(";");
    }

    @Override
    public void visit(final ReturnStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("return");
        if (n10.getExpression().isPresent()) {
            this.printer.print(" ");
            n10.getExpression().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print(";");
    }

    @Override
    public void visit(final EnumDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        this.printer.print("enum ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (!n10.getImplementedTypes().isEmpty()) {
            this.printer.print(" implements ");
            Iterator<ClassOrInterfaceType> it = n10.getImplementedTypes().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.println(" {");
        this.printer.indent();
        if (n10.getEntries().isNonEmpty()) {
            boolean z10 = n10.getEntries().size() > getOption(DefaultPrinterConfiguration.ConfigOption.MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY).get().asInteger().intValue() || n10.getEntries().stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visit$14;
                    lambda$visit$14 = DefaultPrettyPrinterVisitor.lambda$visit$14((EnumConstantDeclaration) obj);
                    return lambda$visit$14;
                }
            });
            this.printer.println();
            Iterator<EnumConstantDeclaration> it2 = n10.getEntries().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    if (z10) {
                        this.printer.println(DocLint.SEPARATOR);
                    } else {
                        this.printer.print(", ");
                    }
                }
            }
        }
        if (!n10.getMembers().isEmpty()) {
            this.printer.println(";");
            printMembers(n10.getMembers(), arg);
        } else if (!n10.getEntries().isEmpty()) {
            this.printer.println();
        }
        this.printer.unindent();
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final EnumConstantDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (!n10.getArguments().isEmpty()) {
            printArguments(n10.getArguments(), arg);
        }
        if (n10.getClassBody().isEmpty()) {
            return;
        }
        this.printer.println(" {");
        this.printer.indent();
        printMembers(n10.getClassBody(), arg);
        this.printer.unindent();
        this.printer.println(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final InitializerDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.isStatic()) {
            this.printer.print("static ");
        }
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final IfStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("if (");
        n10.getCondition().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        boolean z10 = n10.getThenStmt() instanceof BlockStmt;
        if (z10) {
            this.printer.print(") ");
        } else {
            this.printer.println(")");
            this.printer.indent();
        }
        n10.getThenStmt().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (!z10) {
            this.printer.unindent();
        }
        if (n10.getElseStmt().isPresent()) {
            if (z10) {
                this.printer.print(" ");
            } else {
                this.printer.println();
            }
            boolean z11 = n10.getElseStmt().orElse(null) instanceof IfStmt;
            boolean z12 = n10.getElseStmt().orElse(null) instanceof BlockStmt;
            if (!z11 && !z12) {
                this.printer.println("else");
                this.printer.indent();
            } else {
                this.printer.print("else ");
            }
            if (n10.getElseStmt().isPresent()) {
                n10.getElseStmt().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            }
            if (z11 || z12) {
                return;
            }
            this.printer.unindent();
        }
    }

    @Override
    public void visit(final WhileStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("while (");
        n10.getCondition().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(") ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ContinueStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("continue");
        n10.getLabel().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultPrettyPrinterVisitor.this.lambda$visit$15((SimpleName) obj);
            }
        });
        this.printer.print(";");
    }

    @Override
    public void visit(final DoStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("do ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" while (");
        n10.getCondition().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(");");
    }

    @Override
    public void visit(final ForEachStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("for (");
        n10.getVariable().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" : ");
        n10.getIterable().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(") ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ForStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("for (");
        if (n10.getInitialization() != null) {
            Iterator<Expression> it = n10.getInitialization().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(VectorFormat.DEFAULT_SEPARATOR);
        if (n10.getCompare().isPresent()) {
            n10.getCompare().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print(VectorFormat.DEFAULT_SEPARATOR);
        if (n10.getUpdate() != null) {
            Iterator<Expression> it2 = n10.getUpdate().iterator();
            while (it2.hasNext()) {
                it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it2.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(") ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final ThrowStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("throw ");
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(";");
    }

    @Override
    public void visit(final SynchronizedStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("synchronized (");
        n10.getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(") ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final TryStmt n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("try ");
        if (!n10.getResources().isEmpty()) {
            this.printer.print("(");
            Iterator<Expression> it = n10.getResources().iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(";");
                    this.printer.println();
                    if (z10) {
                        this.printer.indent();
                    }
                }
                z10 = false;
            }
            if (n10.getResources().size() > 1) {
                this.printer.unindent();
            }
            this.printer.print(") ");
        }
        n10.getTryBlock().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        Iterator<CatchClause> it2 = n10.getCatchClauses().iterator();
        while (it2.hasNext()) {
            it2.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        if (n10.getFinallyBlock().isPresent()) {
            this.printer.print(" finally ");
            n10.getFinallyBlock().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final CatchClause n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print(" catch (");
        n10.getParameter().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(") ");
        n10.getBody().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final AnnotationDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        this.printer.print("@interface ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(" {");
        this.printer.indent();
        if (n10.getMembers() != null) {
            printMembers(n10.getMembers(), arg);
        }
        this.printer.unindent();
        this.printer.print(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(final AnnotationMemberDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        printMemberAnnotations(n10.getAnnotations(), arg);
        printModifiers(n10.getModifiers());
        n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("()");
        if (n10.getDefaultValue().isPresent()) {
            this.printer.print(" default ");
            n10.getDefaultValue().get().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print(";");
    }

    @Override
    public void visit(final MarkerAnnotationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("@");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final SingleMemberAnnotationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("@");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("(");
        n10.getMemberValue().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(")");
    }

    @Override
    public void visit(final NormalAnnotationExpr n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("@");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print("(");
        if (n10.getPairs() != null) {
            Iterator<MemberValuePair> it = n10.getPairs().iterator();
            while (it.hasNext()) {
                it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
                if (it.hasNext()) {
                    this.printer.print(", ");
                }
            }
        }
        this.printer.print(")");
    }

    @Override
    public void visit(final MemberValuePair n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.print(" = ");
        n10.getValue().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
    }

    @Override
    public void visit(final LineComment n10, final Void arg) {
        if (getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS).isPresent()) {
            this.printer.print(n10.getHeader()).println(Utils.normalizeEolInTextBlock(RTRIM.matcher(n10.getContent()).replaceAll(""), ""));
        }
    }

    @Override
    public void visit(final BlockComment n10, final Void arg) {
        if (getOption(DefaultPrinterConfiguration.ConfigOption.PRINT_COMMENTS).isPresent()) {
            String[] split = Utils.normalizeEolInTextBlock(n10.getContent(), getOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER).get().asString()).split("\\R", -1);
            this.printer.print(n10.getHeader());
            for (int i10 = 0; i10 < split.length - 1; i10++) {
                this.printer.print(split[i10]);
                this.printer.print((String) getOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER).get().asValue());
            }
            this.printer.print(split[split.length - 1]);
            this.printer.println(n10.getFooter());
        }
    }

    @Override
    public void visit(LambdaExpr n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        NodeList<Parameter> parameters = n10.getParameters();
        boolean isEnclosingParameters = n10.isEnclosingParameters();
        if (isEnclosingParameters) {
            this.printer.print("(");
        }
        Iterator<Parameter> it = parameters.iterator();
        while (it.hasNext()) {
            it.next().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
            if (it.hasNext()) {
                this.printer.print(", ");
            }
        }
        if (isEnclosingParameters) {
            this.printer.print(")");
        }
        this.printer.print(" -> ");
        Statement body = n10.getBody();
        if (body instanceof ExpressionStmt) {
            ((ExpressionStmt) body).getExpression().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        } else {
            body.accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(MethodReferenceExpr n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        Expression scope = n10.getScope();
        String identifier = n10.getIdentifier();
        if (scope != null) {
            n10.getScope().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
        this.printer.print("::");
        printTypeArgs(n10, arg);
        if (identifier != null) {
            this.printer.print(identifier);
        }
    }

    @Override
    public void visit(TypeExpr n10, Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        if (n10.getType2() != null) {
            n10.getType2().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(NodeList n10, Void arg) {
        Iterator it = n10.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        }
    }

    @Override
    public void visit(final ImportDeclaration n10, final Void arg) {
        printOrphanCommentsBeforeThisChildNode(n10);
        printComment(n10.getComment(), arg);
        this.printer.print("import ");
        if (n10.isStatic()) {
            this.printer.print("static ");
        }
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        if (n10.isAsterisk()) {
            this.printer.print(".*");
        }
        this.printer.println(";");
        printOrphanCommentsEnding(n10);
    }

    @Override
    public void visit(ModuleDeclaration n10, Void arg) {
        printMemberAnnotations(n10.getAnnotations(), arg);
        if (n10.isOpen()) {
            this.printer.print("open ");
        }
        this.printer.print("module ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(" {").indent();
        n10.getDirectives().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.unindent().println(VectorFormat.DEFAULT_SUFFIX);
    }

    @Override
    public void visit(ModuleRequiresDirective n10, Void arg) {
        this.printer.print("requires ");
        printModifiers(n10.getModifiers());
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(";");
    }

    @Override
    public void visit(ModuleExportsDirective n10, Void arg) {
        this.printer.print("exports ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printPrePostFixOptionalList(n10.getModuleNames(), arg, " to ", ", ", "");
        this.printer.println(";");
    }

    @Override
    public void visit(ModuleProvidesDirective n10, Void arg) {
        this.printer.print("provides ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printPrePostFixRequiredList(n10.getWith(), arg, " with ", ", ", "");
        this.printer.println(";");
    }

    @Override
    public void visit(ModuleUsesDirective n10, Void arg) {
        this.printer.print("uses ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        this.printer.println(";");
    }

    @Override
    public void visit(ModuleOpensDirective n10, Void arg) {
        this.printer.print("opens ");
        n10.getName().accept((VoidVisitor<DefaultPrettyPrinterVisitor>) this, (DefaultPrettyPrinterVisitor) arg);
        printPrePostFixOptionalList(n10.getModuleNames(), arg, " to ", ", ", "");
        this.printer.println(";");
    }

    @Override
    public void visit(UnparsableStmt n10, Void arg) {
        this.printer.print("???;");
    }
}
