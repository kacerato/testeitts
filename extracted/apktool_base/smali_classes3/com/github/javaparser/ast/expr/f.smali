.class public final synthetic Lcom/github/javaparser/ast/expr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/f;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/f;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->o0([Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;

    move-result-object p1

    return-object p1
.end method
