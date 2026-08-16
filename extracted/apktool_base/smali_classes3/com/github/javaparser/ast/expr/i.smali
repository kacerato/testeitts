.class public final synthetic Lcom/github/javaparser/ast/expr/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/javaparser/ast/expr/i;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/github/javaparser/ast/expr/i;->b:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->p0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
