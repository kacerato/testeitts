.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-static {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->a(Lcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    return-object p1
.end method
