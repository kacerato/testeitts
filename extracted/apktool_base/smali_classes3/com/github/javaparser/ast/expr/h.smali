.class public final synthetic Lcom/github/javaparser/ast/expr/h;
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

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/h;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/h;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    check-cast p1, Lcom/github/javaparser/utils/Pair;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->l0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/utils/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
