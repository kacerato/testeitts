.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->r(LE3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LE3/a;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;LE3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$candidate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "downloadedBytes",
            "totalBytes"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, LE3/a;->j(I)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;Ljava/io/File;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    sget-object v0, LE3/d;->Done:LE3/d;

    invoke-virtual {p1, v0}, LE3/a;->k(LE3/d;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    sget-object v0, LE3/d;->Failed:LE3/d;

    invoke-virtual {p1, v0}, LE3/a;->k(LE3/d;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    const-string v0, "failed to download, a new attempt will happen soon."

    invoke-virtual {p1, v0}, LE3/a;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;)V

    invoke-static {p1}, LO9/b;->d(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
