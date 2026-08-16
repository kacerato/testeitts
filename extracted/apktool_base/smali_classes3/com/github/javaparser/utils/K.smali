.class public final synthetic Lcom/github/javaparser/utils/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/utils/SourceRoot;

.field public final synthetic c:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/K;->b:Lcom/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lcom/github/javaparser/utils/K;->c:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/utils/K;->b:Lcom/github/javaparser/utils/SourceRoot;

    iget-object v1, p0, Lcom/github/javaparser/utils/K;->c:Ljava/nio/file/Path;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/utils/SourceRoot;->b(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
