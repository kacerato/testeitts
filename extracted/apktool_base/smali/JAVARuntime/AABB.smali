.class public final LJAVARuntime/AABB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 11
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "xn",
            "yn",
            "zn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "xn",
            "yn",
            "zn"
        }
    .end annotation

    .line 6
    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(FFFFFFFFF)V

    move-object v0, p0

    invoke-direct {p0, v10}, LJAVARuntime/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 11
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "xn",
            "yn",
            "zn",
            "cx",
            "cy",
            "cz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "xn",
            "yn",
            "zn",
            "cx",
            "cy",
            "cz"
        }
    .end annotation

    .line 7
    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(FFFFFFFFF)V

    move-object v0, p0

    invoke-direct {p0, v10}, LJAVARuntime/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 8
    invoke-virtual {p2}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v5

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LJAVARuntime/AABB;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 10
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "center",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "center",
            "max"
        }
    .end annotation

    .line 9
    invoke-virtual {p3}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p3}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p3}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v5

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result v6

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getX()F

    move-result v7

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getY()F

    move-result v8

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getZ()F

    move-result v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, LJAVARuntime/AABB;-><init>(FFFFFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->S(LJAVARuntime/AABB;)V

    return-void
.end method


# virtual methods
.method public copy()LJAVARuntime/AABB;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a copy of the current class instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia da inst\u00e2ncia da classe atual."
    .end annotation

    new-instance v0, LJAVARuntime/AABB;

    iget-object v1, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-object v0
.end method

.method public getCenter()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the center position of the AABB."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o central do AABB."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getLengthMax()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length of the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento do m\u00e1ximo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->H()F

    move-result v0

    return v0
.end method

.method public getLengthMin()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length of the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento do m\u00ednimo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->I()F

    move-result v0

    return v0
.end method

.method public getMax()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o m\u00e1ximo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getMin()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o m\u00ednimo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X of the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o X do m\u00e1ximo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    return v0
.end method

.method public getXN()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X of the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o X do m\u00ednimo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y of the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Y do m\u00e1ximo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    return v0
.end method

.method public getYN()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y of the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Y do m\u00ednimo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    return v0
.end method

.method public getZ()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Z of the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Z do m\u00e1ximo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return v0
.end method

.method public getZN()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Z of the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Z do m\u00ednimo das bordas."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    return v0
.end method

.method public isInside(LJAVARuntime/Vector3;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the point is inside the AABB, otherwise returns false."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se o ponto estiver dentro do AABB, caso contr\u00e1rio, retorna falso."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Point can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lengthMax()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length of the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento do m\u00e1ximo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->H()F

    move-result v0

    return v0
.end method

.method public lengthMin()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length of the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento do m\u00ednimo das bordas/limites."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->I()F

    move-result v0

    return v0
.end method

.method public maxDistanceFromCenter()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum distance from the center."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia m\u00e1xima do centro."
    .end annotation

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    return v0
.end method

.method public setMax(LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the maximum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o m\u00e1ximo das bordas/limites."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return-void
.end method

.method public setMin(LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the minimum of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o m\u00ednimo das bordas/limites."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the maximum X of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o X do m\u00e1ximo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    return-void
.end method

.method public setXN(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the minimum X of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o X do m\u00ednimoo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    return-void
.end method

.method public setY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the maximum Y of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o Y do m\u00e1ximo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    return-void
.end method

.method public setYN(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the minimum Y of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o Y do m\u00ednimoo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    return-void
.end method

.method public setZ(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the maximum Z of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o Z do m\u00e1ximo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return-void
.end method

.method public setZN(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Changes the minimum Z of the bounds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Altera o Z do m\u00ednimoo das bordas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AABB;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    return-void
.end method
