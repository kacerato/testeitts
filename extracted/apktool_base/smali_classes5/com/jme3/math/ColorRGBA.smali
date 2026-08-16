.class public final Lcom/jme3/math/ColorRGBA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final Black:Lcom/jme3/math/ColorRGBA;

.field public static final BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

.field public static final Blue:Lcom/jme3/math/ColorRGBA;

.field public static final Brown:Lcom/jme3/math/ColorRGBA;

.field public static final Cyan:Lcom/jme3/math/ColorRGBA;

.field public static final DarkGray:Lcom/jme3/math/ColorRGBA;

.field static final GAMMA:F = 2.2f

.field public static final Gray:Lcom/jme3/math/ColorRGBA;

.field public static final Green:Lcom/jme3/math/ColorRGBA;

.field public static final LightGray:Lcom/jme3/math/ColorRGBA;

.field public static final Magenta:Lcom/jme3/math/ColorRGBA;

.field public static final Orange:Lcom/jme3/math/ColorRGBA;

.field public static final Pink:Lcom/jme3/math/ColorRGBA;

.field public static final Red:Lcom/jme3/math/ColorRGBA;

.field public static final White:Lcom/jme3/math/ColorRGBA;

.field public static final Yellow:Lcom/jme3/math/ColorRGBA;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Gray:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->LightGray:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Magenta:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Cyan:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3f7bfbfc

    const v4, 0x3f028283

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3e20a0a1

    const v4, 0x3dc8c8c9

    const v5, 0x3e828283

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Brown:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v2, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 5
    iput p2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 6
    iput p3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 7
    iput p4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 10
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 11
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 12
    iget p1, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 17
    invoke-virtual {p0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector4f;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method private fromByte(I)F
    .locals 1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public static fromRGBA255(IIII)Lcom/jme3/math/ColorRGBA;
    .locals 2

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    int-to-float p0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p0, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float p3, p3

    div-float/2addr p3, v1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v0
.end method

.method public static randomColor()Lcom/jme3/math/ColorRGBA;
    .locals 5

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    new-instance v3, Lcom/jme3/math/ColorRGBA;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v3
.end method

.method private toByte(F)B
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    return p1
.end method

.method private toInt(FFFF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    mul-float/2addr p2, v0

    float-to-int p2, p2

    and-int/lit16 p2, p2, 0xff

    mul-float/2addr p3, v0

    float-to-int p3, p3

    and-int/lit16 p3, p3, 0xff

    mul-float/2addr p4, v0

    float-to-int p4, p4

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    return p1
.end method


# virtual methods
.method public add(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 5

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->r:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->g:F

    add-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->b:F

    add-float/2addr v3, v4

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    add-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v0
.end method

.method public addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 4

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    add-float/2addr v2, v3

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->a:F

    add-float/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    return-object p0
.end method

.method public asBytesRGBA()[B
    .locals 6

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->toByte(F)B

    move-result v0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-direct {p0, v1}, Lcom/jme3/math/ColorRGBA;->toByte(F)B

    move-result v1

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {p0, v2}, Lcom/jme3/math/ColorRGBA;->toByte(F)B

    move-result v2

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {p0, v3}, Lcom/jme3/math/ColorRGBA;->toByte(F)B

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    return-object v4
.end method

.method public asIntABGR()I
    .locals 4

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/math/ColorRGBA;->toInt(FFFF)I

    move-result v0

    return v0
.end method

.method public asIntARGB()I
    .locals 4

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/math/ColorRGBA;->toInt(FFFF)I

    move-result v0

    return v0
.end method

.method public asIntRGBA()I
    .locals 4

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/math/ColorRGBA;->toInt(FFFF)I

    move-result v0

    return v0
.end method

.method public clamp()V
    .locals 3

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v0, v1, v2}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v0, v1, v2}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v0, v1, v2}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-void
.end method

.method public clone()Lcom/jme3/math/ColorRGBA;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/math/ColorRGBA;

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public fromIntABGR(I)Lcom/jme3/math/ColorRGBA;
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-direct {p0, p1}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    return-object p0
.end method

.method public fromIntARGB(I)Lcom/jme3/math/ColorRGBA;
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-direct {p0, p1}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    return-object p0
.end method

.method public fromIntRGBA(I)Lcom/jme3/math/ColorRGBA;
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {p0, p1}, Lcom/jme3/math/ColorRGBA;->fromByte(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return v0
.end method

.method public getAsSrgb()Lcom/jme3/math/ColorRGBA;
    .locals 5

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    float-to-double v1, v1

    const v3, 0x3ee8ba2e

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iput v1, v0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object v0
.end method

.method public getBlue()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    return v0
.end method

.method public getColorArray()[F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/ColorRGBA;->getColorArray([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getColorArray([F)[F
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/math/ColorRGBA;->toArray([F)[F

    move-result-object p1

    return-object p1
.end method

.method public getGreen()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    return v0
.end method

.method public getRed()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x57e

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public interpolateLocal(Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/math/ColorRGBA;
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1, p2}, Lcom/jme3/math/ColorRGBA;->interpolateLocal(Lcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public interpolateLocal(Lcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/math/ColorRGBA;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 2
    iget v1, p1, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 3
    iget v1, p1, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 4
    iget v1, p1, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 5
    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    mul-float/2addr v0, p1

    iget p1, p2, Lcom/jme3/math/ColorRGBA;->a:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public mult(F)Lcom/jme3/math/ColorRGBA;
    .locals 5

    .line 2
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    mul-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 5

    .line 1
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr v3, v4

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    mul-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v0
.end method

.method public multLocal(F)Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "r"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    const-string v0, "g"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    const-string v0, "b"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    const-string v0, "a"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-void
.end method

.method public set(FFFF)Lcom/jme3/math/ColorRGBA;
    .locals 0

    .line 1
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 2
    iput p2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 3
    iput p3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 4
    iput p4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 6
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 7
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 8
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 10
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 11
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 12
    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    :goto_0
    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 22
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 23
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    goto :goto_0

    .line 24
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 25
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 26
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    :goto_0
    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 14
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 15
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 16
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0

    .line 17
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 18
    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 19
    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 20
    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    :goto_0
    return-object p0
.end method

.method public setAlpha(F)Lcom/jme3/math/ColorRGBA;
    .locals 0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public setAsSrgb(FFFF)Lcom/jme3/math/ColorRGBA;
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    float-to-double v0, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iput p4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p0
.end method

.method public setBlue(F)Lcom/jme3/math/ColorRGBA;
    .locals 0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    return-object p0
.end method

.method public setGreen(F)Lcom/jme3/math/ColorRGBA;
    .locals 0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    return-object p0
.end method

.method public setRed(F)Lcom/jme3/math/ColorRGBA;
    .locals 0

    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    return-object p0
.end method

.method public toArray([F)[F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    aput v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVector3f()Lcom/jme3/math/Vector3f;
    .locals 4

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public toVector4f()Lcom/jme3/math/Vector4f;
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    const-string v1, "r"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    const-string v1, "g"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    const-string v1, "b"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    const-string v1, "a"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
