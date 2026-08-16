.class public Lcom/github/javaparser/printer/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/ConfigurablePrinter;


# instance fields
.field private configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

.field visitorFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/printer/configuration/PrinterConfiguration;",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->createDefaultConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

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

    .line 2
    invoke-static {}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->createDefaultVisitor()Ljava/util/function/Function;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;-><init>(Ljava/util/function/Function;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visitorFactory",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/printer/configuration/PrinterConfiguration;",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/github/javaparser/printer/configuration/PrinterConfiguration;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    .line 5
    iput-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->visitorFactory:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/ast/visitor/VoidVisitor;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->lambda$createDefaultVisitor$0(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/ast/visitor/VoidVisitor;

    move-result-object p0

    return-object p0
.end method

.method private static createDefaultConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;-><init>()V

    return-object v0
.end method

.method private static createDefaultVisitor()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/printer/configuration/PrinterConfiguration;",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/d;

    invoke-direct {v0}, Lcom/github/javaparser/printer/d;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$createDefaultVisitor$0(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/ast/visitor/VoidVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "config"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    new-instance v1, Lcom/github/javaparser/printer/SourcePrinter;

    invoke-direct {v1, p0}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/printer/SourcePrinter;)V

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object v0
.end method

.method public print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->visitorFactory:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/visitor/VoidVisitor;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setConfiguration(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method
