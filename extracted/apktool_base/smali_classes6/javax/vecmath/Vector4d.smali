.class public Ljavax/vecmath/Vector4d;
.super Ljavax/vecmath/Tuple4d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x36a70663a02a5ffcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Ljavax/vecmath/Tuple4d;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 9

    .line 7
    iget-wide v1, p1, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v5, p1, Ljavax/vecmath/Tuple3d;->z:D

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljavax/vecmath/Tuple4d;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector4d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector4f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>([D)V

    return-void
.end method


# virtual methods
.method public final angle(Ljavax/vecmath/Vector4d;)D
    .locals 6

    invoke-virtual {p0, p1}, Ljavax/vecmath/Vector4d;->dot(Ljavax/vecmath/Vector4d;)D

    move-result-wide v0

    invoke-virtual {p0}, Ljavax/vecmath/Vector4d;->length()D

    move-result-wide v2

    invoke-virtual {p1}, Ljavax/vecmath/Vector4d;->length()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final dot(Ljavax/vecmath/Vector4d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final length()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSquared()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final normalize()V
    .locals 4

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Vector4d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 5
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple3d;)V
    .locals 2

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method
