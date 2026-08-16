.class public LTa/x;
.super LFa/e;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "Normalize"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTa/x$a;

    invoke-direct {v0}, LTa/x$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Normalize"

    invoke-direct {p0, v0}, LFa/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G0(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, p1, v0

    :goto_0
    return v0
.end method

.method public m0()V
    .locals 7

    invoke-virtual {p0}, LFa/e;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    goto :goto_2

    :cond_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v5

    div-float/2addr v5, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v6

    div-float/2addr v6, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v0

    div-float/2addr v0, v2

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    :goto_0
    move-object v0, v3

    goto :goto_2

    :cond_1
    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    goto :goto_2

    :cond_2
    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v2, v2

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    div-float/2addr v4, v2

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    div-float/2addr v0, v2

    invoke-direct {v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v0

    cmpl-float v2, v0, v3

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v3, v0, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, LFa/e;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    invoke-virtual {p0}, LFa/e;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_NORMALIZE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
