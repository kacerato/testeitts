.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "DepthOfField"

.field public static final J:Ljava/lang/Class;

.field public static final K:I = 0x20


# instance fields
.field public H:LJAVARuntime/Component;

.field private autoFocus:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private focusDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maxApertureDiameterCm:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private scale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private usePhysicsLaser:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private useVertexLaser:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "DepthOfField"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    return-void
.end method


# virtual methods
.method public applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/View;->j()Lcom/google/android/filament/View$f;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/filament/View$f;->d:Z

    sget-object p2, Lcom/google/android/filament/View$f$a;->MEDIAN:Lcom/google/android/filament/View$f$a;

    iput-object p2, p1, Lcom/google/android/filament/View$f;->e:Lcom/google/android/filament/View$f$a;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    iput p2, p1, Lcom/google/android/filament/View$f;->a:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    iput p2, p1, Lcom/google/android/filament/View$f;->c:F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/filament/View;->c0(Lcom/google/android/filament/View$f;)V

    return-void
.end method

.method public applyInPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;

    iget-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    const/high16 p5, 0x40800000    # 4.0f

    if-eqz p4, :cond_3

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->d:F

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_2

    iget-object v1, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->a:LU8/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, LU8/a;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZLcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    iget-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->a:LU8/a;

    invoke-virtual {p4}, LU8/a;->e()F

    move-result p4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getNearPlane()F

    move-result p1

    add-float/2addr p4, p1

    iput p4, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->c:F

    goto :goto_0

    :cond_2
    invoke-static {}, LK8/d;->e()F

    move-result p1

    sub-float/2addr p4, p1

    iput p4, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->d:F

    :goto_0
    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->b:F

    iget p4, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->c:F

    invoke-static {}, LK8/d;->e()F

    move-result v0

    mul-float/2addr v0, p5

    invoke-static {p1, p4, v0}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->b:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->setFocusDistance(F)V

    goto :goto_1

    :cond_3
    iget p1, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->b:F

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    invoke-static {}, LK8/d;->e()F

    move-result v0

    mul-float/2addr v0, p5

    invoke-static {p1, p4, v0}, LNc/b;->N0(FFF)F

    move-result p1

    iput p1, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;->b:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->setFocusDistance(F)V

    :goto_1
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disableFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view"
        }
    .end annotation

    return-void
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "DepthOfField"

    return-object v0
.end method

.method public getFocusDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v5, "auto focus"

    invoke-direct {v2, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v6, "Scale"

    invoke-direct {v2, v3, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v6, "scale"

    invoke-virtual {v2, v1, p0, v6, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$d;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    const-string v7, "Max aperture diameter cm"

    invoke-direct {v2, v6, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v6, "maxApertureDiameterCm"

    invoke-virtual {v2, v1, p0, v6, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->isAutoFocus()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    const-string v4, "Focus distance"

    invoke-direct {p1, v2, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v2, "focusDistance"

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    const-string v2, "Use physics laser"

    invoke-direct {p1, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    const-string v2, "Use vertex laser"

    invoke-direct {p1, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getMaxApertureDiameterCm()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "DepthOfField"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdvancedRendererRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAutoFocus()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    return v0
.end method

.method public isUsePhysicsLaser()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    return v0
.end method

.method public isUseVertexLaser()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    return v0
.end method

.method public newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newCacheInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField$i;

    move-result-object v0

    return-object v0
.end method

.method public setAutoFocus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoFocus"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->autoFocus:Z

    return-void
.end method

.method public setFocusDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusDistance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->focusDistance:F

    return-void
.end method

.method public setMaxApertureDiameterCm(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxApertureDiameterCm"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->maxApertureDiameterCm:F

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->H:LJAVARuntime/Component;

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->scale:F

    return-void
.end method

.method public setUsePhysicsLaser(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usePhysicsLaser"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->usePhysicsLaser:Z

    return-void
.end method

.method public setUseVertexLaser(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useVertexLaser"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->useVertexLaser:Z

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->H:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/DepthOfField;

    invoke-direct {v0, p0}, LJAVARuntime/DepthOfField;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField;->H:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
