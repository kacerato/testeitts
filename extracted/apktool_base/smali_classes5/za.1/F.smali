.class public Lza/F;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lga/F;


# static fields
.field public static final p:Ljava/lang/String; = "SmoothDisplacementNode"

.field public static final q:F = 1.0E-4f

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lza/F$a;

    invoke-direct {v0}, Lza/F$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Object"

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OBJECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "meters"

    sget-object v3, Lga/H;->FLOAT3:Lga/H;

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_METERS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "seconds"

    sget-object v4, Lga/H;->NUMBER:Lga/H;

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_SECONDS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lza/F;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "SmoothDisplacementNode"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method private M0(FFFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentVelocity",
            "targetVelocity",
            "mass",
            "dt"
        }
    .end annotation

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    cmpg-float p1, p4, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p2, p3

    div-float/2addr p2, p4

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public E0()V
    .locals 12

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lza/F;->L0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lza/F;->n:F

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1

    iget v0, p0, Lza/F;->k:F

    iget v1, p0, Lza/F;->l:F

    iget v3, p0, Lza/F;->m:F

    invoke-virtual {p0, v2, v0, v1, v3}, Lza/F;->H0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V

    invoke-virtual {p0}, Lza/F;->J0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :cond_1
    invoke-static {}, LK8/d;->b()F

    move-result v0

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lza/F;->n:F

    iget v3, p0, Lza/F;->o:F

    sub-float/2addr v1, v3

    cmpg-float v3, v1, v7

    if-gtz v3, :cond_3

    iget v0, p0, Lza/F;->k:F

    iget v1, p0, Lza/F;->l:F

    iget v3, p0, Lza/F;->m:F

    invoke-virtual {p0, v2, v0, v1, v3}, Lza/F;->H0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V

    invoke-virtual {p0}, Lza/F;->J0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    return-void

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v3, p0, Lza/F;->k:F

    div-float v9, v3, v1

    iget v3, p0, Lza/F;->l:F

    div-float v10, v3, v1

    iget v3, p0, Lza/F;->m:F

    div-float v11, v3, v1

    move-object v1, p0

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lza/F;->G0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFFF)V

    mul-float/2addr v9, v8

    mul-float/2addr v10, v8

    mul-float/2addr v11, v8

    invoke-virtual {p0, v9, v10, v11}, Lza/F;->K0(FFF)V

    iget v1, p0, Lza/F;->o:F

    add-float/2addr v1, v0

    iput v1, p0, Lza/F;->o:F

    add-float/2addr v1, v7

    iget v0, p0, Lza/F;->n:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lza/F;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_5

    iget v0, p0, Lza/F;->l:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_5

    iget v0, p0, Lza/F;->m:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lza/F;->J0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t()V

    :cond_5
    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lza/F;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final G0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "desiredVX",
            "desiredVY",
            "desiredVZ",
            "dt"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-direct {p0, v1, p2, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p2

    invoke-static {p2}, LIc/A;->b(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-direct {p0, v1, p3, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p3

    invoke-static {p3}, LIc/A;->b(F)F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-direct {p0, p1, p4, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p1

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(FFF)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->mass:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-direct {p0, v1, p2, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p2

    invoke-static {p2}, LIc/A;->b(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-direct {p0, v1, p3, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p3

    invoke-static {p3}, LIc/A;->b(F)F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-direct {p0, p1, p4, v2, p5}, Lza/F;->M0(FFFF)F

    move-result p1

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->addForce(FFF)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setForwardSpeed(F)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setSideSpeed(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    mul-float/2addr p3, p5

    invoke-virtual {p1, v3, p3, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o4(FFF)V

    return-void

    :cond_4
    mul-float/2addr p2, p5

    mul-float/2addr p3, p5

    mul-float/2addr p4, p5

    invoke-virtual {p0, p1, p2, p3, p4}, Lza/F;->H0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V

    return-void
.end method

.method public final H0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o4(FFF)V

    return-void
.end method

.method public final I0(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requested",
            "remaining"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final J0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lza/F;->k:F

    iput v0, p0, Lza/F;->l:F

    iput v0, p0, Lza/F;->m:F

    return-void
.end method

.method public final K0(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget v0, p0, Lza/F;->k:F

    invoke-virtual {p0, p1, v0}, Lza/F;->I0(FF)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lza/F;->k:F

    iget p1, p0, Lza/F;->l:F

    invoke-virtual {p0, p2, p1}, Lza/F;->I0(FF)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lza/F;->l:F

    iget p1, p0, Lza/F;->m:F

    invoke-virtual {p0, p3, p1}, Lza/F;->I0(FF)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lza/F;->m:F

    iget p1, p0, Lza/F;->k:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, p2

    const/4 p3, 0x0

    if-gez p1, :cond_0

    iput p3, p0, Lza/F;->k:F

    :cond_0
    iget p1, p0, Lza/F;->l:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iput p3, p0, Lza/F;->l:F

    :cond_1
    iget p1, p0, Lza/F;->m:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iput p3, p0, Lza/F;->m:F

    :cond_2
    return-void
.end method

.method public final L0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lza/F;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Smooth Displacement"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Owner"

    return-object p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p1, "1.0"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public m0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lza/F;->L0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lza/F;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->h(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lza/F;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lza/F;->n:F

    iput v2, p0, Lza/F;->o:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Lza/F;->h:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Lza/F;->i:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iput v1, p0, Lza/F;->j:F

    iget v2, p0, Lza/F;->h:F

    iput v2, p0, Lza/F;->k:F

    iget v2, p0, Lza/F;->i:F

    iput v2, p0, Lza/F;->l:F

    iput v1, p0, Lza/F;->m:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->q0(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SMOOTH_DISPLACEMENT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
