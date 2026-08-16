.class public abstract Ljavax/vecmath/Tuple4i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x6feb43eeddfcd490L


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 18
    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 19
    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 20
    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 3
    iput p2, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 4
    iput p3, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 5
    iput p4, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4i;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 13
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 14
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 15
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    const/4 v0, 0x1

    .line 8
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    const/4 v0, 0x2

    .line 9
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    const/4 v0, 0x3

    .line 10
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method


# virtual methods
.method public final absolute()V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final absolute(Ljavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4i;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4i;Ljavax/vecmath/Tuple4i;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final clamp(II)V
    .locals 1

    .line 17
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    if-le v0, p2, :cond_0

    .line 18
    iput p2, p0, Ljavax/vecmath/Tuple4i;->x:I

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    .line 19
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    if-le v0, p2, :cond_2

    .line 21
    iput p2, p0, Ljavax/vecmath/Tuple4i;->y:I

    goto :goto_1

    :cond_2
    if-ge v0, p1, :cond_3

    .line 22
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 23
    :cond_3
    :goto_1
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    if-le v0, p2, :cond_4

    .line 24
    iput p2, p0, Ljavax/vecmath/Tuple4i;->z:I

    goto :goto_2

    :cond_4
    if-ge v0, p1, :cond_5

    .line 25
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 26
    :cond_5
    :goto_2
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    if-le v0, p2, :cond_6

    .line 27
    iput p2, p0, Ljavax/vecmath/Tuple4i;->w:I

    goto :goto_3

    :cond_6
    if-ge v0, p1, :cond_7

    .line 28
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    :cond_7
    :goto_3
    return-void
.end method

.method public final clamp(IILjavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p3, Ljavax/vecmath/Tuple4i;->x:I

    if-le v0, p2, :cond_0

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple4i;->x:I

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    .line 3
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 5
    :goto_0
    iget v0, p3, Ljavax/vecmath/Tuple4i;->y:I

    if-le v0, p2, :cond_2

    .line 6
    iput p2, p0, Ljavax/vecmath/Tuple4i;->y:I

    goto :goto_1

    :cond_2
    if-ge v0, p1, :cond_3

    .line 7
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    goto :goto_1

    .line 8
    :cond_3
    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 9
    :goto_1
    iget v0, p3, Ljavax/vecmath/Tuple4i;->z:I

    if-le v0, p2, :cond_4

    .line 10
    iput p2, p0, Ljavax/vecmath/Tuple4i;->z:I

    goto :goto_2

    :cond_4
    if-ge v0, p1, :cond_5

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    goto :goto_2

    .line 12
    :cond_5
    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 13
    :goto_2
    iget p3, p3, Ljavax/vecmath/Tuple4i;->w:I

    if-le p3, p2, :cond_6

    .line 14
    iput p2, p0, Ljavax/vecmath/Tuple4i;->w:I

    goto :goto_3

    :cond_6
    if-ge p3, p1, :cond_7

    .line 15
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    goto :goto_3

    .line 16
    :cond_7
    iput p3, p0, Ljavax/vecmath/Tuple4i;->w:I

    :goto_3
    return-void
.end method

.method public final clampMax(I)V
    .locals 1

    .line 13
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    if-le v0, p1, :cond_0

    .line 14
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 15
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    if-le v0, p1, :cond_1

    .line 16
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 17
    :cond_1
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    if-le v0, p1, :cond_2

    .line 18
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 19
    :cond_2
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    if-le v0, p1, :cond_3

    .line 20
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    :cond_3
    return-void
.end method

.method public final clampMax(ILjavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->x:I

    if-le v0, p1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 4
    :goto_0
    iget v0, p2, Ljavax/vecmath/Tuple4i;->y:I

    if-le v0, p1, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    :goto_1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->z:I

    if-le v0, p1, :cond_2

    .line 8
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    goto :goto_2

    .line 9
    :cond_2
    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 10
    :goto_2
    iget v0, p2, Ljavax/vecmath/Tuple4i;->w:I

    if-le v0, p1, :cond_3

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    goto :goto_3

    .line 12
    :cond_3
    iget p1, p2, Ljavax/vecmath/Tuple4i;->z:I

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    :goto_3
    return-void
.end method

.method public final clampMin(I)V
    .locals 1

    .line 13
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    if-ge v0, p1, :cond_0

    .line 14
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 15
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    if-ge v0, p1, :cond_1

    .line 16
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 17
    :cond_1
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    if-ge v0, p1, :cond_2

    .line 18
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 19
    :cond_2
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    if-ge v0, p1, :cond_3

    .line 20
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    :cond_3
    return-void
.end method

.method public final clampMin(ILjavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->x:I

    if-ge v0, p1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 4
    :goto_0
    iget v0, p2, Ljavax/vecmath/Tuple4i;->y:I

    if-ge v0, p1, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    :goto_1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->z:I

    if-ge v0, p1, :cond_2

    .line 8
    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    goto :goto_2

    .line 9
    :cond_2
    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 10
    :goto_2
    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    if-ge p2, p1, :cond_3

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    goto :goto_3

    .line 12
    :cond_3
    iput p2, p0, Ljavax/vecmath/Tuple4i;->w:I

    :goto_3
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple4i;

    iget v1, p0, Ljavax/vecmath/Tuple4i;->x:I

    iget v2, p1, Ljavax/vecmath/Tuple4i;->x:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4i;->y:I

    iget v2, p1, Ljavax/vecmath/Tuple4i;->y:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4i;->z:I

    iget v2, p1, Ljavax/vecmath/Tuple4i;->z:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4i;->w:I

    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Tuple4i;)V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    iput v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    iput v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    iput v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    iput v0, p1, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final get([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget v1, p0, Ljavax/vecmath/Tuple4i;->x:I

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ljavax/vecmath/Tuple4i;->y:I

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 3
    iget v1, p0, Ljavax/vecmath/Tuple4i;->z:I

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 4
    iget v1, p0, Ljavax/vecmath/Tuple4i;->w:I

    aput v1, p1, v0

    return-void
.end method

.method public final getW()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    return v0
.end method

.method public final getZ()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Tuple4i;->y:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Tuple4i;->z:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Tuple4i;->w:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final negate()V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final negate(Ljavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    neg-int v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    neg-int p1, p1

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final scale(I)V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final scale(ILjavax/vecmath/Tuple4i;)V
    .locals 1

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p2, Ljavax/vecmath/Tuple4i;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p2, Ljavax/vecmath/Tuple4i;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    mul-int/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final scaleAdd(ILjavax/vecmath/Tuple4i;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    mul-int/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    mul-int/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    mul-int/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4i;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    mul-int/2addr p1, v0

    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final scaleAdd(ILjavax/vecmath/Tuple4i;Ljavax/vecmath/Tuple4i;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4i;->x:I

    mul-int/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p2, Ljavax/vecmath/Tuple4i;->y:I

    mul-int/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p2, Ljavax/vecmath/Tuple4i;->z:I

    mul-int/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4i;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    mul-int/2addr p1, p2

    iget p2, p3, Ljavax/vecmath/Tuple4i;->w:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final set(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iput p3, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iput p4, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4i;)V
    .locals 1

    .line 9
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 10
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 11
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 12
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final set([I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    const/4 v0, 0x1

    .line 6
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    const/4 v0, 0x2

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    const/4 v0, 0x3

    .line 8
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final setW(I)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final setX(I)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->x:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->y:I

    return-void
.end method

.method public final setZ(I)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4i;->z:I

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4i;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    iget v1, p1, Ljavax/vecmath/Tuple4i;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4i;Ljavax/vecmath/Tuple4i;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4i;->x:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->x:I

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4i;->y:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->y:I

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4i;->z:I

    iget v1, p2, Ljavax/vecmath/Tuple4i;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4i;->z:I

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4i;->w:I

    iget p2, p2, Ljavax/vecmath/Tuple4i;->w:I

    sub-int/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4i;->w:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple4i;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Tuple4i;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Tuple4i;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple4i;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
