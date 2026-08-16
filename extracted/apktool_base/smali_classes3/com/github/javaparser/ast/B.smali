.class public final synthetic Lcom/github/javaparser/ast/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/B;->b:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/B;->b:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/ast/Node;->d0(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    return-object v0
.end method
