.class public final synthetic Lcom/github/javaparser/ast/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/CompilationUnit$Storage;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/CompilationUnit$Storage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/v;->b:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/v;->b:Lcom/github/javaparser/ast/CompilationUnit$Storage;

    invoke-static {v0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->d(Lcom/github/javaparser/ast/CompilationUnit$Storage;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
