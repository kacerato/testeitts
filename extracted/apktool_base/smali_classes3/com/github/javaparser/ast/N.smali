.class public final synthetic Lcom/github/javaparser/ast/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;

    check-cast p2, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;

    invoke-static {p1, p2}, Lcom/github/javaparser/ast/Node;->R(Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;)I

    move-result p1

    return p1
.end method
