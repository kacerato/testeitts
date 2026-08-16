.class public LVb/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

.field public final synthetic j:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$shaderCode",
            "val$vertexCode",
            "val$UNIFORMS",
            "val$SAMPLERS",
            "val$materialConfig",
            "val$debugIpp",
            "val$materialShader",
            "val$semaphore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVb/a$e;->c:Ljava/lang/String;

    iput-object p2, p0, LVb/a$e;->d:Ljava/lang/String;

    iput-object p3, p0, LVb/a$e;->e:Ljava/util/Map;

    iput-object p4, p0, LVb/a$e;->f:Ljava/util/Map;

    iput-object p5, p0, LVb/a$e;->g:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object p6, p0, LVb/a$e;->h:Ljava/lang/String;

    iput-object p7, p0, LVb/a$e;->i:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-object p8, p0, LVb/a$e;->j:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LVb/a$e;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, LVb/a$e;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LVb/a$e;->b:Z

    :try_start_0
    iget-object v1, p0, LVb/a$e;->c:Ljava/lang/String;

    iget-object v2, p0, LVb/a$e;->d:Ljava/lang/String;

    iget-object v3, p0, LVb/a$e;->e:Ljava/util/Map;

    iget-object v4, p0, LVb/a$e;->f:Ljava/util/Map;

    iget-object v5, p0, LVb/a$e;->g:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v6, p0, LVb/a$e;->h:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, LVb/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, LVb/a$e;->i:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iget-object v1, p0, LVb/a$e;->g:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v1, p0, LVb/a$e;->e:Ljava/util/Map;

    invoke-static {}, Loc/a;->l()Loc/b;

    move-result-object v2

    invoke-static {v1, v2}, LVb/a;->b(Ljava/util/Map;Loc/b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->f:Ljava/util/List;

    iget-object v0, p0, LVb/a$e;->i:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-static {}, Loc/a;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d(J)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, LVb/a$e;->i:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, LVb/a$e;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    :goto_2
    iget-object v1, p0, LVb/a$e;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :cond_1
    :goto_3
    return-void
.end method
