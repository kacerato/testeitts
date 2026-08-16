.class public Lcom/github/javaparser/printer/PrettyPrintVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/VoidVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static RTRIM:Ljava/util/regex/Pattern;


# instance fields
.field protected configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

.field protected final printer:Lcom/github/javaparser/printer/SourcePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->RTRIM:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prettyPrinterConfiguration"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    new-instance v0, Lcom/github/javaparser/printer/SourcePrinter;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$1(Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$9(Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$10(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/ImportDeclaration;)I
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$14(Lcom/github/javaparser/ast/ImportDeclaration;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$13(Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$11(Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$12(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$6(Ljava/lang/String;)V

    return-void
.end method

.method private indentIf(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$7(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$printComment$0(Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method

.method public static synthetic l(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$3(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method private synthetic lambda$null$4(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "arg",
            "commonType"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p3}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v1

    if-ge p3, v1, :cond_1

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/type/ArrayType;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ArrayType;

    :goto_1
    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$printComment$0(Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "c"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$printOrphanCommentsEnding$15(Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$visit$1(Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "m"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$visit$10(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "t"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$visit$11(Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private static synthetic lambda$visit$12(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$visit$13(Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private static synthetic lambda$visit$14(Lcom/github/javaparser/ast/ImportDeclaration;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$visit$2(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "line"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$visit$3(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "t"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$visit$5(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "arg",
            "ancestor"
        }
    .end annotation

    invoke-interface {p3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/github/javaparser/printer/Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/javaparser/printer/Y;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$visit$6(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "line"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private static synthetic lambda$visit$7(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/Statement;->isReturnStmt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/Statement;->isThrowStmt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/Statement;->isAssertStmt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/Statement;->isExpressionStmt()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$visit$8(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "columnAlignFirstMethodChain",
            "methodCallWithScopeInScope",
            "lastMethodInCallChain",
            "scope"
        }
    .end annotation

    invoke-interface {p5, p0, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->reindentWithAlignToCursor()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private synthetic lambda$visit$9(Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "n",
            "rp"
        }
    .end annotation

    invoke-virtual {p3, p0, p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$printOrphanCommentsEnding$15(Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$8(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public static synthetic o(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$null$4(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method public static synthetic p(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$5(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;)V

    return-void
.end method

.method private printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v0, v3, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_1
    if-eq v0, v4, :cond_9

    add-int/lit8 p1, v0, -0x1

    move v3, v4

    :goto_2
    if-ltz p1, :cond_6

    if-ne v3, v4, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/github/javaparser/ast/comments/Comment;

    if-nez v5, :cond_5

    move v3, p1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p1, v3, 0x1

    :goto_3
    if-ge p1, v0, :cond_8

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/Node;

    instance-of v5, v4, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v5, :cond_7

    invoke-interface {v4, p0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected comment, instead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Position of previous child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position of child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "I am not a child of my parent."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/V;

    invoke-direct {v0}, Lcom/github/javaparser/printer/V;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    instance-of v2, v2, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v0, v3, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private printSwitchNode(Lcom/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "switch("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIndentCaseInSwitch()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->indentIf(Z)V

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIndentCaseInSwitch()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->unindentIf(Z)V

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private unindentIf(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "annotations",
            "prefixWithASpace",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;Z",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " "

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    invoke-interface {p2, p0, p3}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isColumnAlignParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->getCursor()Lcom/github/javaparser/Position;

    move-result-object v2

    iget v2, v2, Lcom/github/javaparser/Position;->column:I

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->indentWithAlignTo(I)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ","

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_5
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public printComment(Ljava/util/Optional;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "comment",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/Z;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/Z;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "annotations",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "members",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/BodyDeclaration;

    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printModifiers(Lcom/github/javaparser/ast/NodeList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/github/javaparser/printer/t;

    invoke-direct {v2}, Lcom/github/javaparser/printer/t;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/github/javaparser/printer/u;

    invoke-direct {v2}, Lcom/github/javaparser/printer/u;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v2, " "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method public printPrePostFixOptionalList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "arg",
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "+",
            "Lcom/github/javaparser/ast/visitor/Visitable;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-interface {p3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, p5}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_2
    return-void
.end method

.method public printPrePostFixRequiredList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "arg",
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "+",
            "Lcom/github/javaparser/ast/visitor/Visitable;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-interface {p3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, p5}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nodeWithTypeArguments",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
            "*>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_2
    return-void
.end method

.method public printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/TypeParameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_2
    return-void
.end method

.method public setConfiguration(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prettyPrinterConfiguration"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 263
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 264
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 3
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 104
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 105
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParsed()Lcom/github/javaparser/ast/Node$Parsedness;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/Node$Parsedness;->UNPARSABLE:Lcom/github/javaparser/ast/Node$Parsedness;

    if-ne v0, v1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "???"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/PackageDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/X;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/X;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 4
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 980
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 981
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 982
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "import "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 983
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 985
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 986
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 987
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ".*"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 988
    :cond_1
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 989
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 5
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 333
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 334
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, " "

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 6
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isOrderImports()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/ImportDeclaration;

    if-eqz v0, :cond_0

    .line 972
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/NodeList;-><init>(Ljava/util/Collection;)V

    .line 973
    new-instance p1, Lcom/github/javaparser/printer/O;

    invoke-direct {p1}, Lcom/github/javaparser/printer/O;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/printer/P;

    invoke-direct {v1}, Lcom/github/javaparser/printer/P;-><init>()V

    .line 974
    invoke-interface {p1, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 975
    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    .line 976
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 977
    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 979
    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 7
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 120
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 121
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 122
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 123
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 124
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 125
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 126
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 8
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 879
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 880
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 881
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 882
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 883
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 884
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 886
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 887
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 889
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 890
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 891
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 892
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 893
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 894
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 895
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 896
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 897
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 898
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 899
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 901
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 902
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 10
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 140
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 141
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 142
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 143
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 146
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 148
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " extends "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 150
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 152
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 157
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 160
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " permits "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 165
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 167
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 171
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 172
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 173
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 174
    :cond_7
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 175
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 176
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 552
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 553
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 554
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 555
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 556
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->isGeneric()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 558
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " throws "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 561
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 563
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 567
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 12
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 526
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 527
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 528
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 529
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 530
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 531
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->isGeneric()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 535
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 536
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/Parameter;

    .line 538
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 539
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 542
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 544
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 546
    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 547
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 550
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 13
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 757
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 758
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 759
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 760
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 763
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 765
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 766
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 767
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 768
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 14
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 723
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 724
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 725
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 726
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 727
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 728
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 729
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 731
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 732
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 734
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 735
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " {"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 738
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 739
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    .line 741
    invoke-virtual {v2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getMaxEnumConstantsToAlignHorizontally()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 742
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/K;

    invoke-direct {v2}, Lcom/github/javaparser/printer/K;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 743
    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 744
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 745
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 746
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 747
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    .line 748
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, ","

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 749
    :cond_5
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 750
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 751
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 752
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_4

    .line 753
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 754
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 755
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 756
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 15
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 290
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 291
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 292
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 293
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/github/javaparser/printer/S;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/S;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 296
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "???"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 299
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 301
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 302
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 16
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 769
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 770
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 771
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 773
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 17
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 569
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 570
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 571
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 572
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 573
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 575
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 577
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 579
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/N;

    invoke-direct {v2, p0, p2, p1}, Lcom/github/javaparser/printer/N;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 580
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 581
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 582
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/Parameter;

    .line 583
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 584
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 587
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 589
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 591
    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 594
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 595
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 596
    :cond_5
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 597
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 18
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 598
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 599
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 600
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 601
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 602
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 603
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 605
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 606
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->isUnknownType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 608
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 610
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 611
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 612
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 614
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 20
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 179
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 180
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 181
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "record "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 182
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 184
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    .line 187
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 191
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 192
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 194
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 197
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 201
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 202
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 204
    :cond_4
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 205
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 206
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 21
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 306
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 307
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 308
    const-class v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/L;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/printer/L;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 309
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 311
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 22
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 934
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 936
    const-string v0, "\\R"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 937
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/BlockComment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    const/4 v0, 0x0

    .line 938
    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 939
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 940
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 942
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/BlockComment;->getFooter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 23
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 208
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isPrintComments()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isPrintJavadoc()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 209
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/JavadocComment;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 210
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 211
    const-string v0, "\\R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    .line 214
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 215
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 216
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    :cond_0
    invoke-static {v5}, Lcom/github/javaparser/utils/Utils;->trimTrailingSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/github/javaparser/printer/J;

    invoke-direct {v1}, Lcom/github/javaparser/printer/J;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    move v3, v4

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_2

    move v1, v4

    goto :goto_1

    .line 222
    :cond_3
    const-string v3, " *"

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v3}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move v1, v2

    .line 224
    :cond_4
    iget-object v7, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v7, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz p2, :cond_5

    .line 225
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v6}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 226
    :cond_5
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v5}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move v3, v2

    goto :goto_1

    .line 227
    :cond_6
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/JavadocComment;->getFooter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_7
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 24
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 931
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 932
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/LineComment;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object p2

    sget-object v0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->RTRIM:Ljava/util/regex/Pattern;

    .line 933
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 25
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 336
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 337
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 339
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 340
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 26
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 342
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 343
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 344
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/ArrayCreationLevel;

    .line 346
    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 349
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 27
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 313
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 314
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 315
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 317
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 319
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 322
    :cond_1
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 323
    :cond_2
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 324
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 28
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 351
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 352
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isSpaceAroundOperators()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/expr/AssignExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 356
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isSpaceAroundOperators()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 29
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 360
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 361
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isSpaceAroundOperators()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 365
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isSpaceAroundOperators()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 437
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 438
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 31
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 369
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 370
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 371
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 373
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 32
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 411
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 412
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 413
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 414
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 33
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 374
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 375
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 376
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 377
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ".class"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 34
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 379
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 380
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 382
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 384
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 35
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 416
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 417
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 36
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 386
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 387
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 388
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 389
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 391
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 392
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 394
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 38
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 396
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 397
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 399
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 39
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 418
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 419
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 420
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 943
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 944
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 945
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 946
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "("

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 948
    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 949
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    .line 950
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 951
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 953
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 955
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    .line 956
    instance-of v0, p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz v0, :cond_4

    .line 957
    check-cast p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 958
    :cond_4
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 41
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 422
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 423
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 42
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 903
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 904
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 905
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 906
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 926
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 927
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 928
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 930
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 44
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 455
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 456
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->isColumnAlignFirstMethodChain()Z

    move-result v1

    const-class v2, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    const/4 v3, 0x1

    const-class v4, Lcom/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    if-eqz v1, :cond_1

    .line 458
    const-class v1, Lcom/github/javaparser/ast/stmt/Statement;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lcom/github/javaparser/printer/I;

    invoke-direct {v5}, Lcom/github/javaparser/printer/I;-><init>()V

    .line 459
    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 460
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    move-object v5, p1

    .line 463
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/github/javaparser/printer/f;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 464
    invoke-virtual {v1, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/g;

    invoke-direct {v7, v4}, Lcom/github/javaparser/printer/g;-><init>(Ljava/lang/Class;)V

    .line 465
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/C;

    invoke-direct {v7}, Lcom/github/javaparser/printer/C;-><init>()V

    .line 466
    invoke-virtual {v6, v7}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/h;

    invoke-direct {v7, v5}, Lcom/github/javaparser/printer/h;-><init>(Lcom/github/javaparser/ast/Node;)V

    .line 467
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 468
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/javaparser/ast/Node;

    .line 470
    invoke-virtual {v5}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    .line 471
    :cond_0
    new-instance v5, Lcom/github/javaparser/printer/f;

    invoke-direct {v5, v2}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 472
    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 473
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 475
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 476
    :cond_2
    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/f;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 477
    invoke-virtual {v5, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/g;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/g;-><init>(Ljava/lang/Class;)V

    .line 478
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/C;

    invoke-direct {v6}, Lcom/github/javaparser/printer/C;-><init>()V

    .line 479
    invoke-virtual {v5, v6}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/h;

    invoke-direct {v6, v1}, Lcom/github/javaparser/printer/h;-><init>(Lcom/github/javaparser/ast/Node;)V

    .line 480
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 481
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 482
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lcom/github/javaparser/printer/z;

    invoke-direct {v5}, Lcom/github/javaparser/printer/z;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    .line 484
    instance-of v5, v1, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .line 485
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    :cond_3
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 487
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    .line 489
    :goto_1
    new-instance v5, Lcom/github/javaparser/printer/A;

    invoke-direct {v5, v4}, Lcom/github/javaparser/printer/A;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 490
    new-instance v5, Lcom/github/javaparser/printer/B;

    invoke-direct {v5, v4}, Lcom/github/javaparser/printer/B;-><init>(Ljava/lang/Class;)V

    .line 491
    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/C;

    invoke-direct {v6}, Lcom/github/javaparser/printer/C;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 492
    new-instance v6, Lcom/github/javaparser/printer/A;

    invoke-direct {v6, v2}, Lcom/github/javaparser/printer/A;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_4
    move-object v1, v5

    goto :goto_1

    .line 494
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/github/javaparser/printer/Q;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/printer/Q;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 496
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 497
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->duplicateIndent()V

    .line 498
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 499
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 500
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 501
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->reindentToPreviousLevel()V

    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 45
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 959
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 960
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 961
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 962
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "::"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 965
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    if-eqz v1, :cond_1

    .line 966
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 46
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 132
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 133
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 135
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "."

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 136
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 137
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 47
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 128
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 129
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 914
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 915
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 916
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 917
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 918
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 919
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/MemberValuePair;

    .line 922
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 923
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 925
    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 49
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 439
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 440
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 441
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 50
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 502
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 503
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 504
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 509
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 513
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 515
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 516
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 517
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 518
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 51
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 407
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 408
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 138
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 53
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 907
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 908
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 909
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 910
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 912
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 913
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 425
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 426
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 427
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 428
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 55
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 449
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 450
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 452
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "super"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 56
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 680
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printSwitchNode(Lcom/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 57
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 430
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 431
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\"\"\""

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 432
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 433
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndentOfLines()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/W;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/W;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 434
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 435
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 58
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 443
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 444
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 446
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "this"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 967
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 968
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 969
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 60
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 403
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 405
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 61
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 519
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 520
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 521
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 525
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 62
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 627
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 628
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 629
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/i;

    const-class v2, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/i;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 632
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 633
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/T;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/T;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 636
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 638
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 639
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 63
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 990
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 991
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "open "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "module "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 994
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 995
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 996
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 997
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 64
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "exports "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1003
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " to "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixOptionalList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 65
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "opens "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1014
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1015
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " to "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixOptionalList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 66
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "provides "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1007
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " with "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixRequiredList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 67
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "requires "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 999
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 1000
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1001
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 68
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "uses "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1011
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1012
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 69
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 647
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 648
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 649
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 650
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 653
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 654
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 70
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 655
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 656
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 657
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 658
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 660
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/Statement;

    .line 661
    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 662
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 663
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 664
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 665
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 71
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 706
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 707
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 708
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "break"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 709
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/M;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/M;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 710
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 72
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 873
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 874
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 875
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " catch ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 876
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 877
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 878
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 73
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 800
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 801
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 802
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "continue"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 803
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/U;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/U;-><init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 804
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 74
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 805
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 806
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 807
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 808
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " while ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 810
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 811
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 672
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 673
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 76
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 615
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 616
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 617
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 619
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 623
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 624
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "super"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 625
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 626
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 674
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 675
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 676
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 677
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 78
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 812
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 813
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 814
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 815
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 817
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 818
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 819
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 79
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 820
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 821
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 822
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 823
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const-string v1, ", "

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 826
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 827
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 830
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 833
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 834
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 835
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 836
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 837
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 838
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 840
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 80
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 774
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 775
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 776
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 777
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 781
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 782
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    .line 783
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 784
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 787
    :goto_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 788
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 789
    :cond_3
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "else"

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 790
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 791
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "else "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 792
    :goto_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 793
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 81
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 667
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 668
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 670
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 82
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 642
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 643
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 83
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 644
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 645
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 646
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 84
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 717
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 718
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 719
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 721
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 85
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 682
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 683
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 684
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    if-ne v0, v1, :cond_0

    const-string v0, ":"

    goto :goto_0

    :cond_0
    const-string v0, " ->"

    .line 685
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "case "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 688
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 690
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 693
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ", default"

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 695
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 696
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " when "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 697
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 698
    :cond_5
    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 699
    :goto_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 700
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 701
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 702
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 703
    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 705
    :cond_6
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 86
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 678
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printSwitchNode(Lcom/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 87
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 846
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 847
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 848
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 849
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 851
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 88
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 841
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 842
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 843
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 844
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 845
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 89
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 852
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 853
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 854
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 855
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 857
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 858
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 860
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 862
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 865
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 867
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 868
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/CatchClause;

    .line 869
    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 870
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 871
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 872
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 90
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1017
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "???;"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 91
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 794
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 795
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 796
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 797
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 799
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 92
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 711
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 712
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 713
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "yield "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 714
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 715
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 93
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 254
    :goto_0
    instance-of v1, p1, Lcom/github/javaparser/ast/type/ArrayType;

    if-eqz v1, :cond_0

    .line 255
    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType;

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    goto :goto_0

    .line 258
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ArrayType;

    .line 260
    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 261
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 229
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 230
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 234
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 235
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->isUsingDiamondOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "<>"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 95
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 268
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 269
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 270
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, " & "

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 272
    :goto_1
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 96
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 250
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 251
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 252
    iget-object p2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 97
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 239
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 240
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 241
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 244
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 246
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " & "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 98
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 274
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 275
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 276
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 278
    :goto_1
    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 99
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 100
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 330
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 331
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 332
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "var"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 101
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 325
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 326
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 327
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 328
    iget-object p1, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "void"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 102
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 280
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 281
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 282
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 283
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 285
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrintVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " super "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 288
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
