.class public Lcom/ardor3d/util/geom/VertKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _color:Lcom/ardor3d/math/ColorRGBA;

.field private _hashCode:I

.field private final _norm:Lcom/ardor3d/math/Vector3;

.field private final _options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final _smoothGroup:J

.field private final _texs:[Lcom/ardor3d/math/Vector2;

.field private final _vert:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/ColorRGBA;[Lcom/ardor3d/math/Vector2;Ljava/util/EnumSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/math/Vector3;",
            "Lcom/ardor3d/math/Vector3;",
            "Lcom/ardor3d/math/ColorRGBA;",
            "[",
            "Lcom/ardor3d/math/Vector2;",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/ardor3d/util/geom/VertKey;-><init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/ColorRGBA;[Lcom/ardor3d/math/Vector2;Ljava/util/EnumSet;J)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/ColorRGBA;[Lcom/ardor3d/math/Vector2;Ljava/util/EnumSet;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/math/Vector3;",
            "Lcom/ardor3d/math/Vector3;",
            "Lcom/ardor3d/math/ColorRGBA;",
            "[",
            "Lcom/ardor3d/math/Vector2;",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    .line 4
    iput-object p1, p0, Lcom/ardor3d/util/geom/VertKey;->_vert:Lcom/ardor3d/math/Vector3;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-class p1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    .line 6
    sget-object p1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Normal:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    .line 7
    sget-object p1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Color:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    iput-object p3, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    .line 8
    sget-object p1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->UVs:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p4, v0

    :goto_3
    iput-object p4, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    .line 9
    sget-object p1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Group:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const-wide/16 p6, 0x0

    :goto_4
    iput-wide p6, p0, Lcom/ardor3d/util/geom/VertKey;->_smoothGroup:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/util/geom/VertKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/util/geom/VertKey;

    iget-object v1, p1, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    iget-object v3, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/ardor3d/util/geom/VertKey;->_vert:Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/util/geom/VertKey;->_vert:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v3, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Normal:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p1, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v3, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Color:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p1, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v3, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->UVs:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    if-eqz v1, :cond_c

    iget-object v3, p1, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    if-eqz v3, :cond_b

    array-length v3, v3

    array-length v1, v1

    if-eq v3, v1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    array-length v4, v3

    if-ge v1, v4, :cond_d

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    iget-object v4, p1, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_9
    iget-object v3, p1, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    :goto_1
    return v2

    :cond_c
    iget-object v1, p1, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v3, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Group:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v3, p1, Lcom/ardor3d/util/geom/VertKey;->_smoothGroup:J

    iget-wide v5, p0, Lcom/ardor3d/util/geom/VertKey;->_smoothGroup:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_vert:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Normal:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v4, v0, 0x1f

    ushr-long v5, v2, v1

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v4, v0, 0x1f

    ushr-long v5, v2, v1

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_norm:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v4, v0, 0x1f

    ushr-long v5, v2, v1

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v2, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Color:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_color:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v3, v2, 0x1f

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v2, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->UVs:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget v4, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v5, v4, 0x1f

    ushr-long v6, v2, v1

    xor-long/2addr v2, v6

    long-to-int v2, v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    iget-object v2, p0, Lcom/ardor3d/util/geom/VertKey;->_texs:[Lcom/ardor3d/math/Vector2;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget v4, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    mul-int/lit8 v5, v4, 0x1f

    ushr-long v6, v2, v1

    xor-long/2addr v2, v6

    long-to-int v2, v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/util/geom/VertKey;->_options:Ljava/util/EnumSet;

    sget-object v1, Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;->Group:Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    int-to-long v1, v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/ardor3d/util/geom/VertKey;->_smoothGroup:J

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    iput v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    :cond_5
    iget v0, p0, Lcom/ardor3d/util/geom/VertKey;->_hashCode:I

    return v0
.end method
