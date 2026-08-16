.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/nodeTypes/O;->b:Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    iput p2, p0, Lcom/github/javaparser/ast/nodeTypes/O;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/nodeTypes/O;->b:Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    iget v1, p0, Lcom/github/javaparser/ast/nodeTypes/O;->c:I

    check-cast p1, Lcom/github/javaparser/ast/type/Type;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->l(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILcom/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
