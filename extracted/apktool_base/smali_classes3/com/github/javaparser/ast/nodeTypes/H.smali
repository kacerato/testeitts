.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/Parameter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/nodeTypes/H;->b:Lcom/github/javaparser/ast/body/Parameter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/nodeTypes/H;->b:Lcom/github/javaparser/ast/body/Parameter;

    invoke-static {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->B(Lcom/github/javaparser/ast/body/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
