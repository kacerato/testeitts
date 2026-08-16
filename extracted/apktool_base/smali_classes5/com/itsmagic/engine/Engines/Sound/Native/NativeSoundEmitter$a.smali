.class public Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
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
.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointerToDelete"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->e()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->access$100()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->f()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->nativeDeleteBuffer(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
