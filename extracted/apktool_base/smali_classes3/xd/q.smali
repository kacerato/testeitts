.class public Lxd/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxd/q;->a:F

    .line 3
    iput v0, p0, Lxd/q;->b:F

    .line 4
    iput v0, p0, Lxd/q;->c:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lxd/q;->a:F

    .line 7
    iput p2, p0, Lxd/q;->b:F

    .line 8
    iput p3, p0, Lxd/q;->c:F

    return-void
.end method

.method public constructor <init>(Lxd/q;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lxd/q;->a:F

    .line 11
    iput v0, p0, Lxd/q;->b:F

    .line 12
    iput v0, p0, Lxd/q;->c:F

    .line 13
    iget v0, p1, Lxd/q;->a:F

    iput v0, p0, Lxd/q;->a:F

    .line 14
    iget v0, p1, Lxd/q;->b:F

    iput v0, p0, Lxd/q;->b:F

    .line 15
    iget p1, p1, Lxd/q;->c:F

    iput p1, p0, Lxd/q;->c:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxd/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lxd/q;

    iget v1, p0, Lxd/q;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget v3, p1, Lxd/q;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lxd/q;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget v3, p1, Lxd/q;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lxd/q;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget p1, p1, Lxd/q;->c:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lxd/q;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lxd/q;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lxd/q;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
