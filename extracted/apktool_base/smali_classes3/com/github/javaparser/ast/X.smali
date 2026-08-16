.class public final synthetic Lcom/github/javaparser/ast/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/NodeList;

    invoke-static {p1, p2}, Lcom/github/javaparser/ast/NodeList;->b(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    return-object p1
.end method
