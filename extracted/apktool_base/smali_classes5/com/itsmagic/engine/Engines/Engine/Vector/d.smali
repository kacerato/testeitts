.class public Lcom/itsmagic/engine/Engines/Engine/Vector/d;
.super LK8/f;
.source "SourceFile"


# static fields
.field public static final q:Ljava/text/DecimalFormat;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public g:F

.field public i:F

.field public final j:[F

.field public final k:[F

.field public final l:[F

.field public m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public n:F

.field public o:F

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->q:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    const v1, -0x800001

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 5
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    .line 6
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    .line 7
    new-array v1, v1, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3
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
            "leftPt",
            "rightPt",
            "topPt",
            "bottomPt",
            "nearPt",
            "farPt"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 12
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    .line 13
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    .line 14
    new-array v1, v1, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 16
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n:F

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    .line 18
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    .line 19
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    .line 20
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    .line 21
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    .line 22
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    .line 23
    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    .line 24
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k()F

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->r()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->s()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->r()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m()F

    move-result v5

    add-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->s()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e()F

    move-result v6

    add-float/2addr v1, v6

    div-float/2addr v1, v5

    aput v1, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k()F

    move-result v6

    add-float/2addr v1, v6

    div-float/2addr v1, v5

    aput v1, v0, v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    aget v2, v1, v2

    aget v3, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->o:F

    :cond_0
    return-void
.end method

.method public final e()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    return v0
.end method

.method public f()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->s()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->r()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public h()[F
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->s()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p()F

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    aput v0, v3, v1

    return-object v3
.end method

.method public i()[F
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->r()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k()F

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    aput v0, v3, v1

    return-object v3
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public final k()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    return v0
.end method

.method public l()F
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->getWidth()F

    move-result v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final m()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    return v0
.end method

.method public n()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    return-object v0
.end method

.method public o()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    return-object v0
.end method

.method public final p()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    return v0
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/Vector/d;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l()F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final r()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    return v0
.end method

.method public final s()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dimensions{min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->j:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v1, v0

    const/4 v4, 0x2

    aput v3, v1, v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->k:[F

    aput v3, v1, v2

    aput v3, v1, v0

    aput v3, v1, v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->l:[F

    aput v3, v1, v2

    aput v3, v1, v0

    aput v3, v1, v4

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    const v1, -0x800001

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    return-void
.end method

.method public v(F)Lcom/itsmagic/engine/Engines/Engine/Vector/d;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    mul-float v1, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    mul-float v2, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    mul-float v3, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    mul-float v4, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    mul-float v5, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    mul-float v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;-><init>(FFFFFF)V

    return-object v7
.end method

.method public w([F)Lcom/itsmagic/engine/Engines/Engine/Vector/d;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    add-float v3, v0, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    const/4 v1, 0x1

    aget v1, p1, v1

    add-float v4, v0, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    add-float v5, v0, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    const/4 v1, 0x2

    aget p1, p1, v1

    add-float v6, v0, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    add-float/2addr p1, v0

    move-object v0, v7

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;-><init>(FFFFFF)V

    return-object v7
.end method

.method public x(FFF)V
    .locals 2
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->c:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->b:F

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d:F

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->e:F

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->i:F

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_5

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->g:F

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n:F

    goto :goto_0

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->length(FFF)F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_7

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->n:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_7
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->p:Z

    return-void
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->x(FFF)V

    return-void
.end method
