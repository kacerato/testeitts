.class public final synthetic Lcom/github/javaparser/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/nio/file/Path;

.field public final synthetic c:Ljava/nio/charset/Charset;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/p;->b:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/github/javaparser/p;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/p;->b:Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/github/javaparser/p;->c:Ljava/nio/charset/Charset;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/JavaParser;->a(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
