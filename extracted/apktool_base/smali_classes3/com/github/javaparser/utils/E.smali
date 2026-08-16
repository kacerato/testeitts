.class public final synthetic Lcom/github/javaparser/utils/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/utils/SourceRoot;

.field public final synthetic b:Lcom/github/javaparser/ParserConfiguration;

.field public final synthetic c:Lcom/github/javaparser/utils/SourceRoot$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/E;->a:Lcom/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lcom/github/javaparser/utils/E;->b:Lcom/github/javaparser/ParserConfiguration;

    iput-object p3, p0, Lcom/github/javaparser/utils/E;->c:Lcom/github/javaparser/utils/SourceRoot$Callback;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/utils/E;->a:Lcom/github/javaparser/utils/SourceRoot;

    iget-object v1, p0, Lcom/github/javaparser/utils/E;->b:Lcom/github/javaparser/ParserConfiguration;

    iget-object v2, p0, Lcom/github/javaparser/utils/E;->c:Lcom/github/javaparser/utils/SourceRoot$Callback;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->n(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
