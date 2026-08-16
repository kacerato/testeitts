.class public LQ4/b;
.super LQ4/a;
.source "SourceFile"


# instance fields
.field public h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public final i:Laa/e;

.field public final j:Laa/c;

.field public final k:Laa/d;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LP4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectPool",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LQ4/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LP4/a;)V

    new-instance p2, Laa/e;

    invoke-direct {p2}, Laa/e;-><init>()V

    iput-object p2, p0, LQ4/b;->i:Laa/e;

    new-instance p2, Laa/c;

    invoke-direct {p2}, Laa/c;-><init>()V

    iput-object p2, p0, LQ4/b;->j:Laa/c;

    new-instance p2, Laa/d;

    invoke-direct {p2}, Laa/d;-><init>()V

    iput-object p2, p0, LQ4/b;->k:Laa/d;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p2, p0, LQ4/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, LQ4/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method


# virtual methods
.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "editor3DViewer"
        }
    .end annotation

    iget-object v0, p0, LQ4/b;->j:Laa/c;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, p0, LQ4/b;->k:Laa/d;

    invoke-virtual {p2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;

    move-result-object p1

    iput-object p1, v0, Laa/c;->b:Laa/d;

    iget-object p1, p0, LQ4/b;->i:Laa/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Laa/e;->o(Z)V

    iget-object p1, p0, LQ4/b;->i:Laa/e;

    invoke-virtual {p1, p2}, Laa/e;->n(Z)V

    iget-object p1, p0, LQ4/b;->i:Laa/e;

    iget-object p2, p0, LQ4/b;->j:Laa/c;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Laa/e;->B(Laa/c;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LQ4/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LQ4/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyBrushPress()V

    :cond_0
    return-void
.end method
