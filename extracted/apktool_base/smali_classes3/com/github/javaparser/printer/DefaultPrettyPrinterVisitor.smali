.class public Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;
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


# static fields
.field private static RTRIM:Ljava/util/regex/Pattern;


# instance fields
.field protected final configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

.field protected final printer:Lcom/github/javaparser/printer/SourcePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->RTRIM:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/SourcePrinter;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configuration",
            "printer"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    .line 4
    iput-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$5(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$13(Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$doPrintAsArrayOfAnnotations$6(Lcom/github/javaparser/ast/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$10(Ljava/lang/Void;Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method private doPrintAsArrayOfAnnotations(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "n"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_PRINT_ARRAYS_OF_ANNOTATIONS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/s;

    invoke-direct {v0}, Lcom/github/javaparser/printer/s;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic e(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$11(Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$14(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$null$4(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method public static synthetic i(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$7(Ljava/lang/String;)V

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

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$8(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$15(Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public static synthetic l(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$1(Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method

.method private static synthetic lambda$doPrintAsArrayOfAnnotations$6(Lcom/github/javaparser/ast/expr/Expression;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    return p0
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

    invoke-virtual {p0, v1, v2, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

.method private synthetic lambda$visit$10(Ljava/lang/Void;Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
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

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method private synthetic lambda$visit$11(Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V
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

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method

.method private synthetic lambda$visit$12(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private static synthetic lambda$visit$14(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)Z
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

.method private synthetic lambda$visit$15(Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
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

    new-instance v0, Lcom/github/javaparser/printer/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/javaparser/printer/q;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$visit$7(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "line"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method private static synthetic lambda$visit$8(Lcom/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;
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

.method private synthetic lambda$visit$9(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V
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

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->reindentWithAlignToCursor()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method public static synthetic m(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$12(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method public static synthetic n(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$9(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public static synthetic o(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$printComment$0(Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method

.method public static synthetic p(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->lambda$visit$3(Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

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

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "switch("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->indentIf(Z)V

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
    sget-object p1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->unindentIf(Z)V

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    return-void
.end method


# virtual methods
.method public getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cOption"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
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

    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ","

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_5
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    new-instance v0, Lcom/github/javaparser/printer/m;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/printer/m;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public printImports(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imports",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;-><init>()V

    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SORT_IMPORTS_STRATEGY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v1}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;

    :cond_0
    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;->setSortImportsAlphabetically(Z)V

    :cond_1
    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;->sortImports(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_3
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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

.method public printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x1

    move v3, p1

    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    instance-of v2, v2, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge p1, v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object p3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object p3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p3, p4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)V

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

    .line 265
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 266
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 267
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 104
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 105
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParsed()Lcom/github/javaparser/ast/Node$Parsedness;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/Node$Parsedness;->UNPARSABLE:Lcom/github/javaparser/ast/Node$Parsedness;

    if-ne v0, v1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printImports(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 110
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/r;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/r;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)V

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

    .line 991
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 992
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 993
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "import "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 994
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 996
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 997
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 998
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ".*"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 999
    :cond_1
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1000
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Void;)V

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

    .line 345
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 346
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
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

    .line 989
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 990
    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)V

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

    .line 117
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 118
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 119
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 120
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 121
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 122
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 123
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 124
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)V

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

    .line 895
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 896
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 897
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 898
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 899
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 900
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 902
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 903
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 905
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 906
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)V

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

    .line 907
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 908
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 909
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 910
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 911
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 913
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 914
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 915
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 917
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 918
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 140
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 141
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 142
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 143
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 148
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 171
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 174
    :cond_7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 175
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 176
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Void;)V

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

    .line 564
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 565
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 566
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 567
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 568
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 569
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->isGeneric()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " throws "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 574
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 576
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 580
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V

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

    .line 538
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 539
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 540
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 541
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 542
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 543
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;->isGeneric()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 547
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/k;

    invoke-direct {v2, p0, p2, p1}, Lcom/github/javaparser/printer/k;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 548
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/Parameter;

    .line 551
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 552
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 555
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 557
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 559
    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 560
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 563
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)V

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

    .line 773
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 774
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 775
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 776
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 779
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 781
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 782
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 783
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 784
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)V

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

    .line 736
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 737
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 738
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 739
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 740
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 741
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 742
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 744
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 745
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 747
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 748
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " {"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 751
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 752
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    .line 754
    invoke-virtual {p0, v2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    .line 756
    invoke-interface {v2}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asInteger()Ljava/lang/Integer;

    move-result-object v2

    .line 757
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 758
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/x;

    invoke-direct {v2}, Lcom/github/javaparser/printer/x;-><init>()V

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

    .line 759
    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 760
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 762
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 763
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    .line 764
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, ","

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 765
    :cond_5
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 766
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 767
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 768
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_4

    .line 769
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 770
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 771
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 772
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)V

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

    .line 292
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 293
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 294
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 295
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 296
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/github/javaparser/printer/l;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/l;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 299
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "???"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 302
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 304
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 307
    :cond_2
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)V

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

    .line 785
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 786
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 787
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 789
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V

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

    .line 581
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 582
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 583
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 584
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 585
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 586
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 588
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 590
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 592
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/printer/w;

    invoke-direct {v2, p0, p2, p1}, Lcom/github/javaparser/printer/w;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 593
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 594
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/Parameter;

    .line 596
    invoke-virtual {v3, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 600
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 602
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 604
    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 606
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 607
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 608
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 610
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V

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

    .line 611
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 612
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 613
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 614
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 615
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 616
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 618
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->isUnknownType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 621
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)V

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

    .line 622
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 623
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 624
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 625
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 627
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Void;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 179
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 180
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 181
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "record "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 182
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeParameters(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 184
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 185
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    .line 188
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 192
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 201
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 204
    :cond_4
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 205
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 206
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

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

    .line 308
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 309
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 310
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 311
    const-class v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/javaparser/printer/n;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 312
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 314
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)V

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

    .line 950
    sget-object p2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    .line 952
    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {p2, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 954
    const-string v0, "\\R"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 955
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/BlockComment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    const/4 v0, 0x0

    .line 956
    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 958
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v2}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 960
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 208
    sget-object p2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    .line 209
    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 210
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/JavadocComment;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 211
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    .line 212
    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {p2, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    const-string v0, "\\R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 218
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    :cond_0
    invoke-static {v5}, Lcom/github/javaparser/utils/Utils;->trimTrailingSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/github/javaparser/printer/p;

    invoke-direct {v1}, Lcom/github/javaparser/printer/p;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    .line 223
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

    .line 224
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_2

    move v1, v4

    goto :goto_1

    .line 225
    :cond_3
    const-string v3, " *"

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v3}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move v1, v2

    .line 227
    :cond_4
    iget-object v7, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v7, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz p2, :cond_5

    .line 228
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v6}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 229
    :cond_5
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v5}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move v3, v2

    goto :goto_1

    .line 230
    :cond_6
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)V

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

    .line 947
    sget-object p2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 948
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/LineComment;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object p2

    sget-object v0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->RTRIM:Ljava/util/regex/Pattern;

    .line 949
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)V

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

    .line 347
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 348
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 349
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 351
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 352
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)V

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

    .line 353
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 354
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 355
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 356
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 357
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

    .line 358
    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 361
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V
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

    .line 315
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 316
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 317
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 318
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->doPrintAsArrayOfAnnotations(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Z

    move-result v0

    .line 320
    const-string v1, " "

    if-eqz v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 322
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 323
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 325
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/expr/Expression;

    .line 327
    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v0, :cond_2

    const-string v4, ","

    goto :goto_2

    :cond_2
    const-string v4, ", "

    :goto_2
    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v0, :cond_1

    .line 330
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 331
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 332
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 333
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 334
    :cond_4
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 335
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 336
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V
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

    .line 362
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 363
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 364
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/ast/expr/AssignExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 368
    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 370
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V
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

    .line 371
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 372
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 373
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 374
    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 377
    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 379
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)V

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

    .line 448
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 449
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 450
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)V

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

    .line 380
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 381
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 382
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 383
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 385
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)V

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

    .line 422
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 423
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 424
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 425
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 426
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)V

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

    .line 386
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 387
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 388
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 389
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)V

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

    .line 390
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 391
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 392
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 394
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 396
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)V

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

    .line 427
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 428
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 429
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)V

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

    .line 397
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 398
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 399
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 400
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 401
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)V

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

    .line 402
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 403
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 404
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 406
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)V

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

    .line 407
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 408
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 411
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)V

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

    .line 430
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 431
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 432
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)V

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

    .line 961
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 962
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 963
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 964
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "("

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 966
    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 967
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/body/Parameter;

    .line 968
    invoke-virtual {v2, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 969
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 971
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 973
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    .line 974
    instance-of v0, p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz v0, :cond_4

    .line 975
    check-cast p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 976
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)V

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

    .line 433
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 434
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 435
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)V

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

    .line 919
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 920
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 921
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 922
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)V

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

    .line 942
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 943
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 944
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 946
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)V

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

    .line 466
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 467
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 468
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 469
    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->getOption(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-class v2, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    const/4 v3, 0x1

    const-class v4, Lcom/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    if-eqz v1, :cond_1

    .line 470
    const-class v1, Lcom/github/javaparser/ast/stmt/Statement;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lcom/github/javaparser/printer/y;

    invoke-direct {v5}, Lcom/github/javaparser/printer/y;-><init>()V

    .line 471
    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 472
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    move-object v5, p1

    .line 475
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/github/javaparser/printer/f;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 476
    invoke-virtual {v1, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/g;

    invoke-direct {v7, v4}, Lcom/github/javaparser/printer/g;-><init>(Ljava/lang/Class;)V

    .line 477
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/C;

    invoke-direct {v7}, Lcom/github/javaparser/printer/C;-><init>()V

    .line 478
    invoke-virtual {v6, v7}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/github/javaparser/printer/h;

    invoke-direct {v7, v5}, Lcom/github/javaparser/printer/h;-><init>(Lcom/github/javaparser/ast/Node;)V

    .line 479
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 480
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/javaparser/ast/Node;

    .line 482
    invoke-virtual {v5}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    .line 483
    :cond_0
    new-instance v5, Lcom/github/javaparser/printer/f;

    invoke-direct {v5, v2}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 484
    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 485
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 487
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 488
    :cond_2
    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/f;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    .line 489
    invoke-virtual {v5, v6}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/g;

    invoke-direct {v6, v4}, Lcom/github/javaparser/printer/g;-><init>(Ljava/lang/Class;)V

    .line 490
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/C;

    invoke-direct {v6}, Lcom/github/javaparser/printer/C;-><init>()V

    .line 491
    invoke-virtual {v5, v6}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/h;

    invoke-direct {v6, v1}, Lcom/github/javaparser/printer/h;-><init>(Lcom/github/javaparser/ast/Node;)V

    .line 492
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 493
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 494
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lcom/github/javaparser/printer/z;

    invoke-direct {v5}, Lcom/github/javaparser/printer/z;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    .line 496
    instance-of v5, v1, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .line 497
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    :cond_3
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 499
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 500
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    .line 501
    :goto_1
    new-instance v5, Lcom/github/javaparser/printer/A;

    invoke-direct {v5, v4}, Lcom/github/javaparser/printer/A;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 502
    new-instance v5, Lcom/github/javaparser/printer/B;

    invoke-direct {v5, v4}, Lcom/github/javaparser/printer/B;-><init>(Ljava/lang/Class;)V

    .line 503
    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/printer/C;

    invoke-direct {v6}, Lcom/github/javaparser/printer/C;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 504
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

    .line 505
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_4
    move-object v1, v5

    goto :goto_1

    .line 506
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/github/javaparser/printer/D;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/printer/D;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 508
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 509
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->duplicateIndent()V

    .line 510
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 511
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 513
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)V

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

    .line 977
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 978
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 979
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 980
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "::"

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 983
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    if-eqz v1, :cond_1

    .line 984
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Void;)V

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

    .line 129
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 130
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 131
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "."

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 135
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)V

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

    .line 125
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 126
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 127
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)V

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

    .line 930
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 931
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 932
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 933
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 935
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/MemberValuePair;

    .line 938
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 939
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 941
    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)V

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

    .line 451
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 452
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 453
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)V

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

    .line 514
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 515
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 516
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 521
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 525
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 527
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 528
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMembers(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 529
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 530
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Void;)V

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

    .line 418
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 419
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 420
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V
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

    .line 136
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 137
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 138
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)V

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

    .line 923
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 924
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 925
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 926
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 928
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 929
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)V

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

    .line 436
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 437
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 438
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 439
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 440
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)V

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

    .line 460
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 461
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 462
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)V

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

    .line 693
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printSwitchNode(Lcom/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)V

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

    .line 441
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 442
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 443
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "\"\"\""

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 444
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 445
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndentOfLines()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/v;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/v;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 446
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 447
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)V

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

    .line 454
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 455
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 456
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 458
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "."

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)V

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

    .line 985
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 986
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 987
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 988
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Void;)V

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

    .line 414
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 415
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 417
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)V

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

    .line 531
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 532
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 533
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 535
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 536
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 537
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)V

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

    .line 640
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 641
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 642
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

    .line 643
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 645
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 646
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/j;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/printer/j;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 649
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 651
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 652
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)V

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

    .line 1001
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printMemberAnnotations(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1002
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "open "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "module "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1005
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1006
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 1007
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1008
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)V

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

    .line 1013
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "exports "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1014
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1015
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " to "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printPrePostFixOptionalList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)V

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

    .line 1024
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "opens "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1025
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1026
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " to "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printPrePostFixOptionalList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)V

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

    .line 1017
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "provides "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1018
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v5, ", "

    const-string v6, ""

    const-string v4, " with "

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printPrePostFixRequiredList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)V

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

    .line 1009
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "requires "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1010
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printModifiers(Lcom/github/javaparser/ast/NodeList;)V

    .line 1011
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1012
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)V

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

    .line 1021
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "uses "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 1022
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1023
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)V

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

    .line 660
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 661
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 662
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 663
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 664
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 666
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)V

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

    .line 668
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 669
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 670
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 671
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 673
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

    .line 674
    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 675
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsEnding(Lcom/github/javaparser/ast/Node;)V

    .line 677
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 678
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)V

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

    .line 719
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 720
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 721
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "break"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 722
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/e;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/e;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 723
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)V

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

    .line 889
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 890
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 891
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " catch ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 892
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 894
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)V

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

    .line 816
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 817
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 818
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v0, "continue"

    invoke-virtual {p2, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 819
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/printer/o;

    invoke-direct {p2, p0}, Lcom/github/javaparser/printer/o;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 820
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)V

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

    .line 821
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 822
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 823
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 824
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " while ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 826
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 827
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)V

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

    .line 684
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 685
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 686
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)V

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

    .line 628
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 629
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 630
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 632
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 636
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 637
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "super"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 638
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printArguments(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 639
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)V

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

    .line 687
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 688
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 689
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 690
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)V

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

    .line 828
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 829
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 830
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 831
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 833
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 835
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)V

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

    .line 836
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 837
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 838
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 839
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const-string v1, ", "

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 842
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 843
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 846
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 849
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 850
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 852
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 853
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 854
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 856
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)V

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

    .line 790
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 791
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 792
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 793
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_0

    .line 795
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 797
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 798
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    .line 799
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 800
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 803
    :goto_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 804
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 805
    :cond_3
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "else"

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 806
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 807
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, "else "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 808
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

    .line 809
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)V

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

    .line 679
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 680
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 681
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 683
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)V

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

    .line 654
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 655
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 656
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Void;)V

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

    .line 657
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 658
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 659
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)V

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

    .line 729
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 730
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 731
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 732
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 734
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 735
    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)V

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

    .line 695
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 696
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 697
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    if-ne v0, v1, :cond_0

    const-string v0, ":"

    goto :goto_0

    :cond_0
    const-string v0, " ->"

    .line 698
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, "case "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 701
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 703
    invoke-interface {v2, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 704
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 706
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 707
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, ", default"

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 708
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 709
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v2, " when "

    invoke-virtual {v1, v2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 710
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 711
    :cond_5
    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 712
    :goto_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    .line 713
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 714
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 715
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

    .line 716
    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 718
    :cond_6
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)V

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

    .line 691
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printSwitchNode(Lcom/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)V

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

    .line 862
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 863
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 864
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 865
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 867
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)V

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

    .line 857
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 858
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 859
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 860
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 861
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)V

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

    .line 868
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 869
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 870
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 871
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 872
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 873
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 874
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 875
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v3, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 876
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 877
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 878
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    if-eqz v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/SourcePrinter;->indent()Lcom/github/javaparser/printer/SourcePrinter;

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 880
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 881
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 883
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 884
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

    .line 885
    invoke-virtual {v1, p0, p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 886
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 887
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 888
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)V

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

    .line 1028
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)V

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

    .line 810
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 811
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 812
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 813
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 815
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)V

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

    .line 724
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 725
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 726
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "yield "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 727
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 728
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V

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

    .line 256
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 257
    :goto_0
    instance-of v1, p1, Lcom/github/javaparser/ast/type/ArrayType;

    if-eqz v1, :cond_0

    .line 258
    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType;

    .line 259
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ArrayType;

    .line 263
    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 264
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V

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

    .line 231
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 232
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 233
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 237
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 238
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->isUsingDiamondOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string p2, "<>"

    invoke-virtual {p1, p2}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printTypeArgs(Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)V

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

    .line 270
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 271
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 272
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 273
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

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v4, " & "

    invoke-virtual {v3, v4}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 275
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V

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

    .line 252
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 253
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 254
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 255
    iget-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)V

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

    .line 241
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 242
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 243
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 244
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 247
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 249
    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)V

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

    .line 276
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 277
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 278
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 279
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

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 281
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Void;)V

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

    .line 341
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 342
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 343
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 344
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V

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

    .line 337
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 338
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 339
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 340
    iget-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V

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

    .line 282
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printOrphanCommentsBeforeThisChildNode(Lcom/github/javaparser/ast/Node;)V

    .line 283
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 284
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printAnnotations(Lcom/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 285
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 286
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 288
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->printer:Lcom/github/javaparser/printer/SourcePrinter;

    const-string v1, " super "

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 291
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
