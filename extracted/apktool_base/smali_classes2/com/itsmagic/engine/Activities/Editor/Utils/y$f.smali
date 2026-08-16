.class public Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/y;->k(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$allowInsideMeta",
            "val$fileType",
            "val$listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->b:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->d:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JAVARuntime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_EDITOR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->b:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".meta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->b:Z

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->d:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-static {v4, v5, v3, v6, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->b(ZLjava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->c:Ljava/lang/String;

    invoke-static {v4, v5}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->d:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-interface {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;->a(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$f;->d:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;->onFinish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
