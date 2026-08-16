.class public Ld4/a;
.super LP4/b;
.source "SourceFile"


# static fields
.field public static final l:F = 0.016666668f

.field public static final m:F = 0.25f


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final f:Laa/e;

.field public final g:Laa/c;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final i:Laa/d;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:J


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LP4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p2}, LP4/b;-><init>(LP4/a;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ld4/a;->c:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ld4/a;->d:Ljava/util/HashMap;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p2, p0, Ld4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance p2, Laa/e;

    invoke-direct {p2}, Laa/e;-><init>()V

    iput-object p2, p0, Ld4/a;->f:Laa/e;

    new-instance p2, Laa/c;

    invoke-direct {p2}, Laa/c;-><init>()V

    iput-object p2, p0, Ld4/a;->g:Laa/c;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p2, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p2, Laa/d;

    invoke-direct {p2}, Laa/d;-><init>()V

    iput-object p2, p0, Ld4/a;->i:Laa/d;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Ld4/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld4/a;->k:J

    iput-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-void
.end method

.method public static synthetic h(Ld4/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ld4/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lo4/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editor3DViewer",
            "engineUpdateData"
        }
    .end annotation

    iget-object p2, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->renderBrushes()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->K:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Ld4/a;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltc/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Ld4/a;->d:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->ProceduralBrush:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->beginProceduralBrushStroke()V

    :cond_1
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v5, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, v5, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w(LJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-wide v3, p0, Ld4/a;->k:J

    iget-object v1, p0, Ld4/a;->d:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->endProceduralBrushStroke()V

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_5

    iget-object v5, p0, Ld4/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ld4/a;->j()F

    move-result v2

    iget-object v5, p0, Ld4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v1, v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v5, p0, Ld4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v5, p1, v2}, Ld4/a;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;F)V

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    iput-wide v3, p0, Ld4/a;->k:J

    iget-object v1, p0, Ld4/a;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->endProceduralBrushStroke()V

    :goto_2
    move-object v1, v0

    goto :goto_3

    :cond_5
    iput-wide v3, p0, Ld4/a;->k:J

    iget-object v0, p0, Ld4/a;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->endProceduralBrushStroke()V

    :cond_6
    :goto_3
    if-nez p2, :cond_7

    if-eqz v1, :cond_7

    iget-object p2, p0, Ld4/a;->d:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p2, p0, Ld4/a;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->K:Z

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "editor3DViewer",
            "brushDeltaSeconds"
        }
    .end annotation

    iget-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v0, v0, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, p0, Ld4/a;->i:Laa/d;

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;

    iget-object p1, p0, Ld4/a;->i:Laa/d;

    iget-object v0, p1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v2, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->I:F

    iget-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->y1:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Ld4/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget-object v2, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->v1:F

    iget-object v0, p0, Ld4/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    new-instance p2, Ld4/a$a;

    invoke-direct {p2, p0}, Ld4/a$a;-><init>(Ld4/a;)V

    invoke-virtual {p1, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->applyBrushPress(FLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld4/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public final j()F
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Ld4/a;->k:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const v5, 0x3c888889

    if-nez v4, :cond_0

    iput-wide v0, p0, Ld4/a;->k:J

    return v5

    :cond_0
    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput-wide v0, p0, Ld4/a;->k:J

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    return v5

    :cond_1
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_2

    return v0

    :cond_2
    return v2
.end method
