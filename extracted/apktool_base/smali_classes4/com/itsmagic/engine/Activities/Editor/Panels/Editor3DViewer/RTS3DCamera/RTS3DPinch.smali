.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# instance fields
.field public E:Z

.field public F:F

.field public G:F

.field public final H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public I:Ltc/h;

.field public J:Ltc/h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DViewer"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    return-void
.end method


# virtual methods
.method public calculate(Ltc/h;Ltc/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t0",
            "t1"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :try_start_0
    invoke-virtual {p1, v1}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    invoke-static {}, LK8/c;->b()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-static {}, LK8/c;->a()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    invoke-static {}, LK8/c;->b()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-static {}, LK8/c;->a()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->G:F

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    sub-float p2, p1, p2

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->F:F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->G:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public check()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v3, v1}, Li4/e;->c(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {v3}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v4, v1}, Li4/e;->c(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->E:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->calculate(Ltc/h;Ltc/h;)V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->E:Z

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->G:F

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->F:F

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->E:Z

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->G:F

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->F:F

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    goto :goto_3

    :cond_8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->E:Z

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->G:F

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->F:F

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->I:Ltc/h;

    :cond_a
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->J:Ltc/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->E:Z

    :cond_c
    :goto_3
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;->check()V

    return-void
.end method
