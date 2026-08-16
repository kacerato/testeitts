.class public Lo5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo5/b$b;
    }
.end annotation


# static fields
.field public static final A:F = 1.5f

.field public static final y:I = 0x14

.field public static final z:I = 0xc8


# instance fields
.field public final a:F

.field public final b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

.field public c:Lub/n;

.field public d:Lub/n;

.field public e:Lub/n;

.field public final f:Laa/e;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Z

.field public final i:Ljava/lang/Object;

.field public j:Lo5/a;

.field public final k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final l:Ljava/lang/Object;

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q:[F

.field public r:Z

.field public s:F

.field public t:F

.field public volatile u:F

.field public volatile v:I

.field public volatile w:I

.field public volatile x:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorCamera"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo5/b;->a:F

    new-instance v1, Laa/e;

    invoke-direct {v1}, Laa/e;-><init>()V

    iput-object v1, p0, Lo5/b;->f:Laa/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laa/e;->n(Z)V

    invoke-virtual {v1, v2}, Laa/e;->o(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo5/b;->i:Ljava/lang/Object;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lo5/b;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo5/b;->l:Ljava/lang/Object;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lo5/b;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lo5/b;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lo5/b;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lo5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lo5/b;->q:[F

    iput v0, p0, Lo5/b;->u:F

    const/16 v0, 0x14

    iput v0, p0, Lo5/b;->v:I

    iput-object p1, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    int-to-float p1, p1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalPosition"
        }
    .end annotation

    iget-object v0, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lo5/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lo5/b;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lo5/b;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lo5/b;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->right()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lo5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->up()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getViewMatrix()[F

    move-result-object p1

    iget-object v2, p0, Lo5/b;->q:[F

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lo5/b;->t:F

    iget-object p1, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageRatio()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lo5/b;->s:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo5/b;->r:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 5

    iget v0, p0, Lo5/b;->u:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lo5/b;->w:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lo5/b;->h()Lo5/b$b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    iget-object v0, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    :try_start_1
    iget v1, p0, Lo5/b;->v:I

    invoke-virtual {p0, v1}, Lo5/b;->e(I)Lub/n;

    move-result-object v3

    invoke-virtual {p0, v1}, Lo5/b;->d(I)Lo5/a;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v1}, Lo5/b;->i(Lo5/b$b;Lo5/a;I)V

    invoke-virtual {p0, v0, v4, v1}, Lo5/b;->g(Lo5/b$b;Lo5/a;I)V

    invoke-virtual {p0, v3, v4, v1}, Lo5/b;->k(Lub/n;Lo5/a;I)V

    invoke-static {v0}, Lo5/b$b;->a(Lo5/b$b;)I

    move-result v0

    iget v4, p0, Lo5/b;->x:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lo5/b;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v3, p0, Lo5/b;->e:Lub/n;

    iput v1, p0, Lo5/b;->w:I

    invoke-virtual {p0, v1}, Lo5/b;->a(I)I

    move-result v1

    iput v1, p0, Lo5/b;->v:I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public final d(I)Lo5/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lo5/b;->j:Lo5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo5/a;->a()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lo5/a;

    invoke-direct {v0, p1}, Lo5/a;-><init>(I)V

    iput-object v0, p0, Lo5/b;->j:Lo5/a;

    :cond_1
    iget-object p1, p0, Lo5/b;->j:Lo5/a;

    return-object p1
.end method

.method public final e(I)Lub/n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-boolean v0, p0, Lo5/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/b;->c:Lub/n;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo5/b;->d:Lub/n;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v1

    if-eq v1, p1, :cond_3

    :cond_1
    new-instance v0, Lub/n;

    invoke-direct {v0, p1, p1}, Lub/n;-><init>(II)V

    iget-boolean p1, p0, Lo5/b;->h:Z

    if-eqz p1, :cond_2

    iput-object v0, p0, Lo5/b;->c:Lub/n;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lo5/b;->d:Lub/n;

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lo5/b;->h:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo5/b;->h:Z

    return-object v0
.end method

.method public f(LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraFBO"
        }
    .end annotation

    return-void
.end method

.method public final g(Lo5/b$b;Lo5/a;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "snapshot",
            "buffer",
            "resolution"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-static {p1}, Lo5/b$b;->g(Lo5/b$b;)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_1

    iget-object v4, p2, Lo5/a;->c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    iget-object v5, p2, Lo5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-static {p1}, Lo5/b$b;->c(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    const v6, -0x41666666    # -0.3f

    invoke-static {v4, v6}, LNc/b;->S0(FF)F

    move-result v4

    const v6, 0x3e99999a    # 0.3f

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-virtual {v0, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    invoke-virtual {v6, v7, v8, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->S(FFF)V

    iget-object v5, p2, Lo5/a;->d:[[I

    aget-object v5, v5, v2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v4, v5, v3

    goto :goto_2

    :cond_0
    iget-object v4, p2, Lo5/a;->d:[[I

    aget-object v4, v4, v2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h()Lo5/b$b;
    .locals 6

    iget-object v0, p0, Lo5/b;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo5/b;->r:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lo5/b$b;

    invoke-direct {v1, v2}, Lo5/b$b;-><init>(Lo5/b$a;)V

    invoke-static {v1}, Lo5/b$b;->c(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lo5/b;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lo5/b$b;->d(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lo5/b;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lo5/b$b;->e(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lo5/b;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lo5/b$b;->f(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lo5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lo5/b;->q:[F

    invoke-static {v1}, Lo5/b$b;->g(Lo5/b$b;)[F

    move-result-object v3

    invoke-static {v1}, Lo5/b$b;->g(Lo5/b$b;)[F

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lo5/b;->s:F

    invoke-static {v1, v2}, Lo5/b$b;->i(Lo5/b$b;F)F

    iget v2, p0, Lo5/b;->t:F

    invoke-static {v1, v2}, Lo5/b$b;->k(Lo5/b$b;F)F

    iget v2, p0, Lo5/b;->x:I

    invoke-static {v1, v2}, Lo5/b$b;->b(Lo5/b$b;I)I

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Lo5/b$b;Lo5/a;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "snapshot",
            "buffer",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_1

    int-to-float v3, v1

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    int-to-float v7, v2

    div-float/2addr v7, v4

    mul-float/2addr v7, v5

    sub-float/2addr v7, v6

    neg-float v3, v3

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lo5/b$b;->h(Lo5/b$b;)F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {p1}, Lo5/b$b;->j(Lo5/b$b;)F

    move-result v5

    mul-float/2addr v7, v5

    invoke-static {p1}, Lo5/b$b;->e(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-static {p1}, Lo5/b$b;->f(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-static {p1}, Lo5/b$b;->d(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    new-instance v5, Laa/c;

    new-instance v6, Laa/d;

    invoke-static {p1}, Lo5/b$b;->c(Lo5/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 v3, 0x0

    invoke-direct {v5, v6, v3}, Laa/c;-><init>(Laa/d;F)V

    iget-object v3, p0, Lo5/b;->f:Laa/e;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p2, Lo5/a;->c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v5, v5, v1

    invoke-virtual {v3}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p2, Lo5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v5, v5, v1

    invoke-virtual {v3}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    aput-object v3, v5, v2

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    iget-object v3, p2, Lo5/a;->c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v3, v3, v1

    aput-object v4, v3, v2

    iget-object v3, p2, Lo5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v3, v3, v1

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p2, Lo5/a;->c:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v3, v3, v1

    aput-object v4, v3, v2

    iget-object v3, p2, Lo5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v3, v3, v1

    aput-object v4, v3, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public j(LTb/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraFBO"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LTb/a;->w(Lub/p;)V

    iget-object v1, p0, Lo5/b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lo5/b;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez v2, :cond_0

    iget-object v2, p0, Lo5/b;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    iput v2, p0, Lo5/b;->u:F

    const/16 v2, 0x14

    iput v2, p0, Lo5/b;->v:I

    const/4 v2, 0x0

    iput v2, p0, Lo5/b;->w:I

    iget v2, p0, Lo5/b;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo5/b;->x:I

    iget-object v2, p0, Lo5/b;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v0, p0, Lo5/b;->e:Lub/n;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lo5/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lo5/b;->u:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lo5/b;->w:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_2

    :cond_1
    iget v0, p0, Lo5/b;->u:F

    invoke-static {}, LK8/d;->e()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lo5/b;->u:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lo5/b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget v0, p0, Lo5/b;->u:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lo5/b;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lo5/b;->e:Lub/n;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lub/n;->J()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo5/b;->e:Lub/n;

    invoke-virtual {p1, v1}, LTb/a;->w(Lub/p;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public final k(Lub/n;Lo5/a;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "buffer",
            "resolution"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_0

    iget-object v4, p2, Lo5/a;->d:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v2, v3, v0}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lub/n;->apply()V

    return-void
.end method
