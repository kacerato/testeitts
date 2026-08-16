.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
.source "SourceFile"


# static fields
.field public static final Y8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final Z8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# instance fields
.field public R8:Lf5/d;

.field public S8:Z

.field public T8:Z

.field public U8:Z

.field public V8:Z

.field public W8:Z

.field public X8:Lo5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->Y8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->Z8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->S8:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->U8:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->V8:Z

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->W8:Z

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setSolidColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderDistance",
            "fov",
            "minimalDistance",
            "showGizmo",
            "layer"
        }
    .end annotation

    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;-><init>(FFFZI)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->S8:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    .line 11
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->U8:Z

    .line 12
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->V8:Z

    .line 13
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->W8:Z

    .line 14
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setSolidColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method


# virtual methods
.method public allowPostProcessing()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createGizmo()V
    .locals 0

    return-void
.end method

.method public getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->y()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->SolidColor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->SolidColor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v0

    return-object v0
.end method

.method public getSolidColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->y()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->Z8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getSolidColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    return-object v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo5/b;->c()V

    :cond_0
    return-void
.end method

.method public overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->T8:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->Y8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    return-object v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->W8:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v1

    invoke-virtual {v1, v0}, LTb/a;->w(Lub/p;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    if-nez v0, :cond_1

    new-instance v0, Lo5/b;

    invoke-direct {v0, p0}, Lo5/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->X8:Lo5/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo5/b;->j(LTb/a;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    return-void
.end method

.method public renderFog()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->R8:Lf5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf5/d;->D()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;->U8:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderFog()Z

    move-result v0

    return v0
.end method

.method public renderGizmos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
