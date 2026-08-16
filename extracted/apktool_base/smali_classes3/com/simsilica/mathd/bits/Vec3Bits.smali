.class public final Lcom/simsilica/mathd/bits/Vec3Bits;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static log:Lorg/slf4j/Logger;


# instance fields
.field private final mask:J

.field private final totalBits:I

.field private final xBits:Lcom/simsilica/mathd/bits/FloatBits;

.field private final yBits:Lcom/simsilica/mathd/bits/FloatBits;

.field private final yShift:I

.field private final zBits:Lcom/simsilica/mathd/bits/FloatBits;

.field private final zShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/simsilica/mathd/bits/Vec3Bits;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/simsilica/mathd/bits/Vec3Bits;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/simsilica/mathd/bits/FloatBits;

    invoke-direct {v0, p1, p2, p3}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    new-instance v1, Lcom/simsilica/mathd/bits/FloatBits;

    invoke-direct {v1, p1, p2, p3}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    new-instance v2, Lcom/simsilica/mathd/bits/FloatBits;

    invoke-direct {v2, p1, p2, p3}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    invoke-direct {p0, v0, v1, v2}, Lcom/simsilica/mathd/bits/Vec3Bits;-><init>(Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->xBits:Lcom/simsilica/mathd/bits/FloatBits;

    .line 4
    invoke-virtual {p1}, Lcom/simsilica/mathd/bits/FloatBits;->getBitSize()I

    move-result v0

    iput v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yShift:I

    .line 5
    iput-object p2, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yBits:Lcom/simsilica/mathd/bits/FloatBits;

    .line 6
    invoke-virtual {p2}, Lcom/simsilica/mathd/bits/FloatBits;->getBitSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zShift:I

    .line 7
    iput-object p3, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zBits:Lcom/simsilica/mathd/bits/FloatBits;

    .line 8
    invoke-virtual {p3}, Lcom/simsilica/mathd/bits/FloatBits;->getBitSize()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->totalBits:I

    const/16 v3, 0x40

    if-gt v2, v3, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v3

    .line 10
    invoke-virtual {p2}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide p1

    shl-long/2addr p1, v0

    or-long/2addr p1, v3

    .line 11
    invoke-virtual {p3}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v3

    shl-long v0, v3, v1

    or-long/2addr p1, v0

    .line 12
    iput-wide p1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->mask:J

    .line 13
    sget-object p3, Lcom/simsilica/mathd/bits/Vec3Bits;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bit size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Total bit size exceeds 64"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 15

    new-instance p0, Lcom/simsilica/mathd/bits/FloatBits;

    const/16 v0, 0x10

    const v1, -0x3df1999a    # -35.6f

    const v2, 0x420e6666    # 35.6f

    invoke-direct {p0, v1, v2, v0}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    new-instance v0, Lcom/simsilica/mathd/bits/FloatBits;

    const/16 v1, 0x12

    const/4 v3, 0x0

    const/high16 v4, 0x43800000    # 256.0f

    invoke-direct {v0, v3, v4, v1}, Lcom/simsilica/mathd/bits/FloatBits;-><init>(FFI)V

    new-instance v1, Lcom/simsilica/mathd/bits/Vec3Bits;

    invoke-direct {v1, p0, v0, p0}, Lcom/simsilica/mathd/bits/Vec3Bits;-><init>(Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;Lcom/simsilica/mathd/bits/FloatBits;)V

    new-instance p0, Ljava/util/Random;

    const-wide/16 v5, 0x1

    invoke-direct {p0, v5, v6}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v5, 0x428e6666    # 71.2f

    mul-float/2addr v3, v5

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v7, v5

    sub-float/2addr v7, v2

    new-instance v5, Lcom/simsilica/mathd/Vec3d;

    float-to-double v9, v3

    float-to-double v11, v6

    float-to-double v13, v7

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    invoke-virtual {v1, v5}, Lcom/simsilica/mathd/bits/Vec3Bits;->toBits(Lcom/simsilica/mathd/Vec3d;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/simsilica/mathd/bits/Vec3Bits;->fromBits(J)Lcom/simsilica/mathd/Vec3d;

    move-result-object v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "   bits:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nrev:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\nerr:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lcom/simsilica/mathd/Vec3d;->subtract(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public fromBits(J)Lcom/simsilica/mathd/Vec3d;
    .locals 9

    iget-object v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->xBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v0}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v0

    and-long/2addr v0, p1

    iget v2, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yShift:I

    shr-long v2, p1, v2

    iget-object v4, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v4}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v4

    and-long/2addr v2, v4

    iget v4, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zShift:I

    shr-long/2addr p1, v4

    iget-object v4, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v4}, Lcom/simsilica/mathd/bits/FloatBits;->getMask()J

    move-result-wide v4

    and-long/2addr p1, v4

    iget-object v4, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->xBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v4, v0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v0

    iget-object v1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v1, v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result v1

    iget-object v2, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zBits:Lcom/simsilica/mathd/bits/FloatBits;

    invoke-virtual {v2, p1, p2}, Lcom/simsilica/mathd/bits/FloatBits;->fromBits(J)F

    move-result p1

    new-instance p2, Lcom/simsilica/mathd/Vec3d;

    float-to-double v3, v0

    float-to-double v5, v1

    float-to-double v7, p1

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object p2
.end method

.method public getBitSize()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->totalBits:I

    return v0
.end method

.method public getMask()J
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->mask:J

    return-wide v0
.end method

.method public getXBits()Lcom/simsilica/mathd/bits/FloatBits;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->xBits:Lcom/simsilica/mathd/bits/FloatBits;

    return-object v0
.end method

.method public getYBits()Lcom/simsilica/mathd/bits/FloatBits;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yBits:Lcom/simsilica/mathd/bits/FloatBits;

    return-object v0
.end method

.method public getZBits()Lcom/simsilica/mathd/bits/FloatBits;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zBits:Lcom/simsilica/mathd/bits/FloatBits;

    return-object v0
.end method

.method public toBits(Lcom/simsilica/mathd/Vec3d;)J
    .locals 7

    iget-object v0, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->xBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v2

    iget-object v4, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zBits:Lcom/simsilica/mathd/bits/FloatBits;

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    double-to-float p1, v5

    invoke-virtual {v4, p1}, Lcom/simsilica/mathd/bits/FloatBits;->toBits(F)J

    move-result-wide v4

    iget p1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->yShift:I

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iget p1, p0, Lcom/simsilica/mathd/bits/Vec3Bits;->zShift:I

    shl-long v2, v4, p1

    or-long/2addr v0, v2

    return-wide v0
.end method
