.class public Ljavax/vecmath/Vector2d;
.super Ljavax/vecmath/Tuple2d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x76f828730ce7b0b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple2d;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/vecmath/Tuple2d;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector2d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector2f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>([D)V

    return-void
.end method


# virtual methods
.method public final angle(Ljavax/vecmath/Vector2d;)D
    .locals 6

    invoke-virtual {p0, p1}, Ljavax/vecmath/Vector2d;->dot(Ljavax/vecmath/Vector2d;)D

    move-result-wide v0

    invoke-virtual {p0}, Ljavax/vecmath/Vector2d;->length()D

    move-result-wide v2

    invoke-virtual {p1}, Ljavax/vecmath/Vector2d;->length()D

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

.method public final dot(Ljavax/vecmath/Vector2d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final length()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSquared()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final normalize()V
    .locals 4

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Vector2d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method
