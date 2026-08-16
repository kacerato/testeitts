.class Lcom/github/javaparser/utils/SourceRoot$ParallelParse;
.super Ljava/util/concurrent/RecursiveAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/SourceRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParallelParse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final callback:Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

.field private final root:Lcom/github/javaparser/utils/SourceRoot;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/RecursiveAction;-><init>()V

    new-instance v0, Lcom/github/javaparser/utils/SourceRoot;

    invoke-direct {v0, p1}, Lcom/github/javaparser/utils/SourceRoot;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->root:Lcom/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->callback:Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    return-void
.end method

.method public static synthetic access$200(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->root:Lcom/github/javaparser/utils/SourceRoot;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;)Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->callback:Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    return-object p0
.end method


# virtual methods
.method public compute()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;->root:Lcom/github/javaparser/utils/SourceRoot;

    invoke-virtual {v1}, Lcom/github/javaparser/utils/SourceRoot;->getRoot()Ljava/nio/file/Path;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse$1;-><init>(Lcom/github/javaparser/utils/SourceRoot$ParallelParse;Ljava/nio/file/Path;Ljava/util/List;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    return-void
.end method
