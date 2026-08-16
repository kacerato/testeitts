.class public LQ4/c;
.super LQ4/a;
.source "SourceFile"


# instance fields
.field public h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

.field public i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final j:Laa/c;

.field public final k:Laa/d;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LP4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectPool",
            "terrain",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, LQ4/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LP4/a;)V

    new-instance p3, Laa/c;

    invoke-direct {p3}, Laa/c;-><init>()V

    iput-object p3, p0, LQ4/c;->j:Laa/c;

    new-instance p3, Laa/d;

    invoke-direct {p3}, Laa/d;-><init>()V

    iput-object p3, p0, LQ4/c;->k:Laa/d;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p3, p0, LQ4/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, LQ4/c;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iput-object p2, p0, LQ4/c;->i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

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

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, p0, LQ4/c;->k:Laa/d;

    invoke-virtual {p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;

    iget-object p1, p0, LQ4/c;->k:Laa/d;

    iget-object p2, p1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LQ4/c;->i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, LQ4/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LQ4/c;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LQ4/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LQ4/c;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyBrushPress()V

    :cond_0
    return-void
.end method
