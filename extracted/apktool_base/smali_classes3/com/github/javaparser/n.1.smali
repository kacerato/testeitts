.class public final synthetic Lcom/github/javaparser/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/JavaParser;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/JavaParser;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/n;->b:Lcom/github/javaparser/JavaParser;

    iput-object p2, p0, Lcom/github/javaparser/n;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/n;->b:Lcom/github/javaparser/JavaParser;

    iget-object v1, p0, Lcom/github/javaparser/n;->c:Ljava/io/File;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/JavaParser;->b(Lcom/github/javaparser/JavaParser;Ljava/io/File;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
