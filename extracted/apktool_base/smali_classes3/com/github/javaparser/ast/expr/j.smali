.class public final synthetic Lcom/github/javaparser/ast/expr/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/j;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/j;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->n0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
