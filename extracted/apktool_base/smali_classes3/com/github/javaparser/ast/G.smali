.class public final synthetic Lcom/github/javaparser/ast/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Lcom/github/javaparser/ast/Node$TreeTraversal;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node$TreeTraversal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/G;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/ast/G;->c:Lcom/github/javaparser/ast/Node$TreeTraversal;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/G;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/ast/G;->c:Lcom/github/javaparser/ast/Node$TreeTraversal;

    invoke-static {v0, v1}, Lcom/github/javaparser/ast/Node;->c0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
