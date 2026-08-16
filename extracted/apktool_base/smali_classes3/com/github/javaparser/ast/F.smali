.class public final synthetic Lcom/github/javaparser/ast/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/F;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/ast/F;->c:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/F;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/ast/F;->c:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-static {v0, v1}, Lcom/github/javaparser/ast/Node;->f0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    return-object v0
.end method
