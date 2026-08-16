.class public final synthetic Lc0/A3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    check-cast p2, Lcom/github/javaparser/Range;

    invoke-static {p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->B3(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
