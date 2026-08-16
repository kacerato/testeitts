.class public Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/y;->i(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$fileType",
            "val$listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-interface {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;->a(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/y$d;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;->onFinish()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
