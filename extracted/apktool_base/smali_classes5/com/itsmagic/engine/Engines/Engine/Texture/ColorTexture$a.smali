.class public Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->E0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->r0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->s0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    move-result-object v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->B0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    goto :goto_6

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->r0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->s0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    move-result-object v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    :cond_4
    monitor-exit v3

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_6
    return-void

    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->r0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_5
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->s0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v6

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_6
    :goto_8
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    move-result-object v1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z

    :cond_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->B0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    :cond_8
    throw v3

    :goto_9
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0
.end method
