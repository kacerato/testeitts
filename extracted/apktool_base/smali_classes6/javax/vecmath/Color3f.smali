.class public Ljavax/vecmath/Color3f;
.super Ljavax/vecmath/Tuple3f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x19d66ada4e8c089bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljavax/vecmath/Tuple3f;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljavax/vecmath/Tuple3f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 8
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 9
    invoke-direct {p0, v0, v2, p1}, Ljavax/vecmath/Tuple3f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Color3f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>([F)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/awt/Color;
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v3, Ljava/awt/Color;

    invoke-direct {v3, v0, v2, v1}, Ljava/awt/Color;-><init>(III)V

    return-object v3
.end method

.method public final set(Ljava/awt/Color;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method
