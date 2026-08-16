.class public Lcom/itsmagic/engine/Engines/Engine/Vector/h;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public transient e:LJAVARuntime/Point3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->a0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public constructor <init>(III)V
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

    .line 4
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, LK8/f;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public static B(IF)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "divisor"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static C(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "divisor"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static r0()Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->y(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public D(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->E(III)F

    move-result p1

    return p1
.end method

.method public E(III)F
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int/2addr p1, p3

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method public F(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-float p1, v0

    return p1
.end method

.method public G(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->H(III)Z

    move-result p1

    return p1
.end method

.method public H(III)Z
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    return v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return v0
.end method

.method public M()F
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->lengthF()F

    move-result v0

    return v0
.end method

.method public N(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->O(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public O(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1, p4}, LNc/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float p1, p1

    invoke-static {p1, p2, p4}, LNc/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    invoke-static {p1, p3, p4}, LNc/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/Vector/h;F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "speed"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float v1, v1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->O(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public Q(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->S(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public S(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int/2addr p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public T(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public U(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->V(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public V(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->V(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public Y()Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->Z()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-object p0
.end method

.method public Z()Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->lengthF()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public a0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public d0(LJAVARuntime/Point3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e:LJAVARuntime/Point3;

    return-void
.end method

.method public e(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    add-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public e0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    return p1
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public f0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    return p1
.end method

.method public g0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return p1
.end method

.method public h(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->i(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public h0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->sqrtLength()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->k0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->sqrtLength()F

    move-result p1

    :goto_0
    return p1
.end method

.method public i(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public i0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->j0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public j0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    sub-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->i(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public l(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m0(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public lengthF()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->sqrtLength()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public m(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1, p4}, LNc/b;->z(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float p1, p1

    invoke-static {p1, p2, p4}, LNc/b;->z(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    invoke-static {p1, p3, p4}, LNc/b;->z(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public m0(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/Vector/h;F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "blend"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v0, v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float v1, v1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public n0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m0(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v0

    return-object v0
.end method

.method public p0()LJAVARuntime/Point3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e:LJAVARuntime/Point3;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Point3;

    invoke-direct {v0, p0}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e:LJAVARuntime/Point3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e:LJAVARuntime/Point3;

    return-object v0
.end method

.method public q(III)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    mul-int v2, v1, p3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    mul-int v4, v3, p2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    mul-int/2addr p3, v4

    sub-int/2addr v3, p3

    int-to-float p3, v3

    mul-int/2addr v4, p2

    mul-int/2addr v1, p1

    sub-int/2addr v4, v1

    int-to-float p1, v4

    invoke-direct {v0, v2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public q0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p1

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->q(III)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->lengthF()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->k0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->lengthF()F

    move-result p1

    :goto_0
    return p1
.end method

.method public sqrtLength()F
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    int-to-float v2, v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    int-to-float v2, v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->v(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public v(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    invoke-static {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result p2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-static {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-static {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    return-object v0
.end method

.method public x(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->y(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    return-object p1
.end method

.method public y(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->B(IF)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->B(IF)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->B(IF)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method

.method public z(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->C(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d:I

    return-object p0
.end method
