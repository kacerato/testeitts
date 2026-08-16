.class public Ljavax/vecmath/Point4d;
.super Ljavax/vecmath/Tuple4d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x180e87814afb5935L


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

.method public constructor <init>(Ljavax/vecmath/Point4d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point4f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 9

    .line 7
    iget-wide v1, p1, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v5, p1, Ljavax/vecmath/Tuple3d;->z:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

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

.method public constructor <init>([D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>([D)V

    return-void
.end method


# virtual methods
.method public final distance(Ljavax/vecmath/Point4d;)D
    .locals 10

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceL1(Ljavax/vecmath/Point4d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final distanceLinf(Ljavax/vecmath/Point4d;)D
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceSquared(Ljavax/vecmath/Point4d;)D
    .locals 10

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    return-wide v0
.end method

.method public final project(Ljavax/vecmath/Point4d;)V
    .locals 6

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

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

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method
