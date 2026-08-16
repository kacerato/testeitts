.class public Lcom/itsmagic/engine/Engines/Engine/Vector/b;
.super LK8/f;
.source "SourceFile"


# static fields
.field public static final j:[F


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public final g:[F

.field public final i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->j:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "xMin",
            "xMax",
            "yMin",
            "yMax",
            "zMin",
            "zMax"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x4

    .line 1
    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p4, v2, p2

    const/4 p4, 0x2

    aput p6, v2, p4

    const/4 p6, 0x3

    aput v0, v2, p6

    new-array v1, v1, [F

    aput p3, v1, v3

    aput p5, v1, p2

    aput p7, v1, p4

    aput v0, v1, p6

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->j:[F

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;-><init>(Ljava/lang/String;[F[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "min",
            "max",
            "modelMatrix"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    aget v0, p2, p1

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x2

    aget p2, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    new-array v6, v5, [F

    aput v0, v6, p1

    aput v2, v6, v1

    aput p2, v6, v3

    const/4 p2, 0x3

    aput v4, v6, p2

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->c:[F

    .line 5
    aget v0, p3, p1

    aget v2, p3, v1

    aget p3, p3, v3

    new-array v6, v5, [F

    aput v0, v6, p1

    aput v2, v6, v1

    aput p3, v6, v3

    aput v4, v6, p2

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->d:[F

    .line 6
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->e:[F

    .line 7
    new-array p1, v5, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    .line 8
    new-array p1, v5, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->p()V

    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/d;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "d",
            "modelMatrix"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o()[F

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n()[F

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;-><init>(Ljava/lang/String;[F[F[F)V

    return-object v0
.end method


# virtual methods
.method public e()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    return-object v0
.end method

.method public f()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    return-object v0
.end method

.method public h()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public i()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public j()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public k()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public m()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public n(FFF)Z
    .locals 0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->o(FFF)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public o(FFF)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->h()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i()F

    move-result v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->k()F

    move-result p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->j()F

    move-result p1

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->m()F

    move-result p1

    cmpg-float p1, p3, p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->l()F

    move-result p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final p()V
    .locals 12

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->e:[F

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->g:[F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->c:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i:[F

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->e:[F

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->d:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundingBox{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", xMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/b;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
