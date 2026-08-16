.class public final synthetic Lcom/github/javaparser/ast/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/CompilationUnit$Storage;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/CompilationUnit$Storage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/u;->b:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/u;->b:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->c(Lcom/github/javaparser/ast/CompilationUnit$Storage;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
