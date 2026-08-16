.class public abstract Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[D

.field public static final b:Lcom/jme3/math/Vector4f;

.field public static final c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public static d:I

.field public static e:I

.field public static final f:[F

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lhc/a;->a:[D

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    sput-object v0, Lhc/a;->b:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    sput-object v0, Lhc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lhc/a;->f:[F

    const/4 v0, 0x0

    sput-object v0, Lhc/a;->g:Ljava/util/List;

    sput-object v0, Lhc/a;->h:Ljava/util/List;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->determineImageResolutionPercentage()I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getViewMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getInverseViewMatrix()[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getInverseFrustumMatrix()[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v3, Lhc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFilamentCamera()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getView()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resetPostProcessingeBeforeRender()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PP - before render"

    invoke-static {v4}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    move v6, v5

    :goto_2
    :try_start_0
    sget-object v7, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    sget-object v7, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;->isAttached(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;->beforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    move v6, v5

    :goto_5
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v7

    instance-of v8, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v8

    if-eqz v8, :cond_6

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->preRender()V

    invoke-virtual {v7, p0, v2, v10, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    invoke-virtual {v3, v10}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Objects rendering"

    invoke-static {v4}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v1

    :goto_6
    const/4 v6, 0x1

    invoke-static {v6, v6}, LQb/a;->b(ZZ)V

    invoke-static {v10}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    invoke-virtual {v3}, LTb/a;->z()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v1, "PP - after render"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    :cond_9
    move v4, v5

    :goto_7
    :try_start_1
    sget-object v6, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    sget-object v6, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;->isAttached(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;->afterRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v4

    goto :goto_9

    :cond_a
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :goto_9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    move v11, v5

    :goto_a
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v11, v4, :cond_d

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    instance-of v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_c

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getCacheBuffer()LTb/a;

    move-result-object v9

    move-object v5, p0

    move-object v6, v2

    move-object v7, v10

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->applyAfterRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)V

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_d
    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    :cond_e
    invoke-static {v3}, LOb/a$a;->a(LTb/a;)V

    :cond_f
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    :cond_10
    :goto_b
    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputWorld"
        }
    .end annotation

    const-class p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lhc/a;->h:Ljava/util/List;

    const-class p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {p0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lhc/a;->g:Ljava/util/List;

    invoke-static {}, LK8/c;->b()I

    move-result p0

    sput p0, Lhc/a;->d:I

    invoke-static {}, LK8/c;->a()I

    move-result p0

    sput p0, Lhc/a;->e:I

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "PP - pre render"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    :try_start_0
    sget-object v3, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lhc/a;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Manager/RenderEffectArea;->preRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Cameras loop"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_4

    :cond_3
    move-object p0, v0

    :goto_4
    sget-object v2, Lhc/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lhc/a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lhc/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    sput-object v0, Lhc/a;->h:Ljava/util/List;

    sput-object v0, Lhc/a;->g:Ljava/util/List;

    invoke-static {}, LOb/a$a;->c()V

    return-void
.end method
