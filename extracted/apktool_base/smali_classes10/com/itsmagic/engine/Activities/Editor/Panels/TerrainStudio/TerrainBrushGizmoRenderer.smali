.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;
.super Ljava/lang/Object;
.source "TerrainBrushGizmoRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final centerPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private innerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field private innerRadius:F

.field private final normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private radius:F

.field private ringColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->visible:Z

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->centerPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 18
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->radius:F

    .line 19
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->innerRadius:F

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xdc

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0xff

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->ringColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xb4

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->innerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 24
    return-void
.end method


# virtual methods
.method public getCenterPos()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->centerPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getInnerRadius()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->innerRadius:F

    return v0
.end method

.method public getNormal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->radius:F

    return v0
.end method

.method public getRingColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->ringColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->visible:Z

    return v0
.end method

.method public setRingColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->ringColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 65
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->visible:Z

    .line 37
    return-void
.end method

.method public updateGizmo(FFFFFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->centerPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)V

    .line 28
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p4, p5, p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)V

    .line 29
    iput p7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->radius:F

    .line 30
    if-eqz p8, :cond_0

    .line 31
    const p1, 0x3e99999a    # 0.3f

    mul-float p7, p7, p1

    iput p7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainBrushGizmoRenderer;->innerRadius:F

    .line 33
    :cond_0
    return-void
.end method
