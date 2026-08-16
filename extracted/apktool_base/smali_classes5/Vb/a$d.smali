.class public LVb/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:LSb/a;

.field public c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

.field public final synthetic k:Ljava/util/concurrent/Semaphore;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Ljava/util/concurrent/Semaphore;Ljava/lang/String;Ljava/lang/StringBuilder;)V
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
            "val$semaphore",
            "val$tag",
            "val$errors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVb/a$d;->d:Ljava/lang/String;

    iput-object p2, p0, LVb/a$d;->e:Ljava/lang/String;

    iput-object p3, p0, LVb/a$d;->f:Ljava/util/Map;

    iput-object p4, p0, LVb/a$d;->g:Ljava/util/Map;

    iput-object p5, p0, LVb/a$d;->h:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object p6, p0, LVb/a$d;->i:Ljava/lang/String;

    iput-object p7, p0, LVb/a$d;->j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-object p8, p0, LVb/a$d;->k:Ljava/util/concurrent/Semaphore;

    iput-object p9, p0, LVb/a$d;->l:Ljava/lang/String;

    iput-object p10, p0, LVb/a$d;->m:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LVb/a$d;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, LVb/a$d;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LVb/a$d;->c:Z

    :try_start_0
    iget-object v1, p0, LVb/a$d;->d:Ljava/lang/String;

    iget-object v2, p0, LVb/a$d;->e:Ljava/lang/String;

    iget-object v3, p0, LVb/a$d;->f:Ljava/util/Map;

    iget-object v4, p0, LVb/a$d;->g:Ljava/util/Map;

    iget-object v5, p0, LVb/a$d;->h:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v6, p0, LVb/a$d;->i:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, LVb/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, LVb/a$d;->j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iget-object v1, p0, LVb/a$d;->h:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v1, p0, LVb/a$d;->f:Ljava/util/Map;

    invoke-static {}, Loc/a;->l()Loc/b;

    move-result-object v2

    invoke-static {v1, v2}, LVb/a;->b(Ljava/util/Map;Loc/b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->f:Ljava/util/List;

    iget-object v0, p0, LVb/a$d;->j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-static {}, Loc/a;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->d(J)V

    iget-object v0, p0, LVb/a$d;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_0
    iget-object v1, p0, LVb/a$d;->j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    iget-object v0, p0, LVb/a$d;->b:LSb/a;

    if-nez v0, :cond_1

    new-instance v0, LSb/a;

    new-instance v1, LVb/a$d$a;

    invoke-direct {v1, p0}, LVb/a$d$a;-><init>(LVb/a$d;)V

    invoke-direct {v0, v1}, LSb/a;-><init>(LSb/a$b;)V

    iput-object v0, p0, LVb/a$d;->b:LSb/a;

    invoke-virtual {v0}, LSb/a;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, LVb/a$d;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    :goto_2
    return-void
.end method
