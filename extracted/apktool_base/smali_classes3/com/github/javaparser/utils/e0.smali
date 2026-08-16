.class public final synthetic Lcom/github/javaparser/utils/e0;
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

    check-cast p1, Lcom/github/javaparser/ast/expr/UnaryExpr;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->b(Lcom/github/javaparser/ast/expr/UnaryExpr;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
