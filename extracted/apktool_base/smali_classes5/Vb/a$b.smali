.class public LVb/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a;->G()V
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
    .locals 14

    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_1
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_2
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d(J)V

    iput-boolean v0, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, LVb/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v5, v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    iput-object v12, v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->name:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->g:Ljava/util/List;

    invoke-static {v6, v8, v9, v5, v12}, LVb/d;->f(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4}, LVb/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, LVb/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Loc/a;->l()Loc/b;

    move-result-object v7

    iget-object v4, v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->f(Ljava/lang/String;)V

    new-instance v13, LVb/a$g;

    move-object v4, v13

    move-object v5, v3

    invoke-direct/range {v4 .. v12}, LVb/a$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Loc/b;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, LVb/a;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_3

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5

    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to load shader text"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b:Ljava/lang/String;

    invoke-static {}, LJ4/d;->E1()V

    const-string v5, "Custom material shader error"

    invoke-static {v5}, LJ4/d;->M1(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ4/d;->M1(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepare params from JSON:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ4/d;->M1(Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
