.class public Lh4/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/k;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loadedProject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$e;->c:Lh4/k;

    iput-object p2, p0, Lh4/k$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->h()Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;->enableVCS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v0}, Lh4/k;->m(Lh4/k;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lh4/k$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v0}, Lh4/k;->n(Lh4/k;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v7, p0, Lh4/k$e;->c:Lh4/k;

    new-instance v8, Lh4/f;

    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v1}, Lh4/k;->m(Lh4/k;)Ljava/io/File;

    move-result-object v1

    const-string v5, "Table/"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lh4/k$e;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v1}, Lh4/k;->q(Lh4/k;)Lh4/m;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lh4/f;-><init>(ZLjava/io/File;Ljava/io/File;Ljava/lang/String;Lh4/m;)V

    invoke-static {v7, v8}, Lh4/k;->p(Lh4/k;Lh4/f;)Lh4/f;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v0}, Lh4/k;->r(Lh4/k;)V

    iget-object v0, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v0}, Lh4/k;->e(Lh4/k;)V

    iget-object v0, p0, Lh4/k$e;->c:Lh4/k;

    invoke-static {v0}, Lh4/k;->f(Lh4/k;)Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_3
    return-void
.end method
