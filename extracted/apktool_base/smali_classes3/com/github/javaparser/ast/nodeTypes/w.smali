.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->O(Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z

    move-result p1

    return p1
.end method
