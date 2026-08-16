.class public final synthetic Lcom/github/javaparser/ast/expr/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/g;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    iput-object p2, p0, Lcom/github/javaparser/ast/expr/g;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/g;->b:Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/g;->c:[Ljava/lang/String;

    check-cast p1, Lcom/github/javaparser/utils/Pair;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->m0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;Lcom/github/javaparser/utils/Pair;)Z

    move-result p1

    return p1
.end method
