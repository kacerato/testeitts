.class public LVb/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_4

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JAVARuntime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_EDITOR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5, v0, v3}, LVb/a;->h(Ljava/io/File;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_3

    :cond_2
    invoke-static {v5, v0, v3}, LVb/a;->h(Ljava/io/File;Ljava/util/Map;Ljava/util/List;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
