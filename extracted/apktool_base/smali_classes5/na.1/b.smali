.class public final Lna/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 24.0f

.field public static final b:F = 6.2831855f

.field public static final c:F = 0.2617994f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->n(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    :cond_0
    return-object v1
.end method

.method public static b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->n(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    :cond_0
    return-object v1
.end method

.method public static c(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p0}, Lna/b;->h(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static d(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p0}, Lna/b;->h(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static e(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p0}, Lna/b;->h(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static f(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p0}, Lna/b;->h(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static g()Ljava/lang/Float;
    .locals 5

    invoke-static {}, Lna/b;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->getCurrentTimeOfDay()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lna/b;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->getLongitude()F

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->getOrientationOffset()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    :cond_3
    invoke-static {v0, v3, v1}, LZ8/a;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static h(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    invoke-static {p0}, LZ8/a;->h(F)F

    move-result p0

    const/high16 v0, 0x41400000    # 12.0f

    sub-float/2addr p0, v0

    const v0, 0x3e860a92

    mul-float/2addr p0, v0

    return p0
.end method
