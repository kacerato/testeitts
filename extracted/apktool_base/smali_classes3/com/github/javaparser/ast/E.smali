.class public final synthetic Lcom/github/javaparser/ast/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/E;->b:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/E;->b:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/Node;->P(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;

    move-result-object p1

    return-object p1
.end method
