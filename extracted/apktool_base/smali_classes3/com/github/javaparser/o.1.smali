.class public final synthetic Lcom/github/javaparser/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/JavaParser;

.field public final synthetic c:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/JavaParser;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/o;->b:Lcom/github/javaparser/JavaParser;

    iput-object p2, p0, Lcom/github/javaparser/o;->c:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/o;->b:Lcom/github/javaparser/JavaParser;

    iget-object v1, p0, Lcom/github/javaparser/o;->c:Ljava/nio/file/Path;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/JavaParser;->d(Lcom/github/javaparser/JavaParser;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
