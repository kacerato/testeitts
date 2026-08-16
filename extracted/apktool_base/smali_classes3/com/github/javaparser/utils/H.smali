.class public final synthetic Lcom/github/javaparser/utils/H;
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

    check-cast p1, Lcom/github/javaparser/ParseResult;

    invoke-static {p1}, Lcom/github/javaparser/utils/SourceRoot;->f(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p1

    return-object p1
.end method
