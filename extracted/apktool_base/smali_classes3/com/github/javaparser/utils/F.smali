.class public final synthetic Lcom/github/javaparser/utils/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/utils/SourceRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/SourceRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/F;->a:Lcom/github/javaparser/utils/SourceRoot;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/F;->a:Lcom/github/javaparser/utils/SourceRoot;

    invoke-static {v0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->p(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
