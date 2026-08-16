.class public Lcom/itsmagic/engine/Activities/Editor/Utils/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

.field public d:Ltc/h;

.field public e:Ltc/h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DViewer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-void
.end method


# virtual methods
.method public a(Ltc/h;Ltc/h;)V
    .locals 5
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

    invoke-virtual {p1}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p2}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    add-float/2addr p1, p2

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    :goto_3
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v3, v1}, Li4/e;->c(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {v3}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v4, v1}, Li4/e;->c(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a(Ltc/h;Ltc/h;)V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    goto :goto_3

    :cond_8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->d:Ltc/h;

    :cond_a
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->e:Ltc/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    :cond_c
    :goto_3
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b()V

    return-void
.end method
