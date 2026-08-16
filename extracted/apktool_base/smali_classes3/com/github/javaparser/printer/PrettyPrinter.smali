.class public Lcom/github/javaparser/printer/PrettyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/ConfigurablePrinter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

.field private visitorFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;",
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
    new-instance v0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/PrettyPrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V
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
    new-instance v0, Lcom/github/javaparser/printer/a0;

    invoke-direct {v0}, Lcom/github/javaparser/printer/a0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/PrettyPrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configuration",
            "visitorFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/printer/PrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    .line 5
    iput-object p2, p0, Lcom/github/javaparser/printer/PrettyPrinter;->visitorFactory:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

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

    iget-object v0, p0, Lcom/github/javaparser/printer/PrettyPrinter;->visitorFactory:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/github/javaparser/printer/PrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    check-cast v1, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/javaparser/printer/PrettyPrinter;->configuration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PrettyPrinter must be configured with a PrettyPrinterConfiguration class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
