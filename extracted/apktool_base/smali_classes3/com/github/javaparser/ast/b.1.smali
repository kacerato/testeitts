.class public final synthetic Lcom/github/javaparser/ast/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/CompilationUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/b;->b:Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/b;->b:Lcom/github/javaparser/ast/CompilationUnit;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->m0(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
