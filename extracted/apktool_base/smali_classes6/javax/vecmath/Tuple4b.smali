.class public abstract Ljavax/vecmath/Tuple4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x722b354b4a8cb763L


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    .line 18
    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    .line 19
    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    .line 20
    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->x:B

    .line 3
    iput-byte p2, p0, Ljavax/vecmath/Tuple4b;->y:B

    .line 4
    iput-byte p3, p0, Ljavax/vecmath/Tuple4b;->z:B

    .line 5
    iput-byte p4, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4b;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->x:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    .line 13
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->y:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    .line 14
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->z:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    .line 15
    iget-byte p1, p1, Ljavax/vecmath/Tuple4b;->w:B

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    const/4 v0, 0x1

    .line 8
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    const/4 v0, 0x2

    .line 9
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    const/4 v0, 0x3

    .line 10
    aget-byte p1, p1, v0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method


# virtual methods
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

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple4b;

    .line 3
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->x:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->x:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->y:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->y:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->z:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->z:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->w:B

    iget-byte p1, p1, Ljavax/vecmath/Tuple4b;->w:B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Tuple4b;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->x:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->x:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->y:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->y:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->z:B

    iget-byte v2, p1, Ljavax/vecmath/Tuple4b;->z:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->w:B

    iget-byte p1, p1, Ljavax/vecmath/Tuple4b;->w:B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Tuple4b;)V
    .locals 1

    .line 5
    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    iput-byte v0, p1, Ljavax/vecmath/Tuple4b;->x:B

    .line 6
    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    iput-byte v0, p1, Ljavax/vecmath/Tuple4b;->y:B

    .line 7
    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    iput-byte v0, p1, Ljavax/vecmath/Tuple4b;->z:B

    .line 8
    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->w:B

    iput-byte v0, p1, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public final get([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->x:B

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    .line 2
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->y:B

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    .line 3
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->z:B

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 4
    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->w:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public final getW()B
    .locals 1

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->w:B

    return v0
.end method

.method public final getX()B
    .locals 1

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    return v0
.end method

.method public final getY()B
    .locals 1

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    return v0
.end method

.method public final getZ()B
    .locals 1

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->y:B

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->z:B

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->w:B

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final set(Ljavax/vecmath/Tuple4b;)V
    .locals 1

    .line 1
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->x:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    .line 2
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->y:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    .line 3
    iget-byte v0, p1, Ljavax/vecmath/Tuple4b;->z:B

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    .line 4
    iget-byte p1, p1, Ljavax/vecmath/Tuple4b;->w:B

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public final set([B)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    const/4 v0, 0x1

    .line 6
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    const/4 v0, 0x2

    .line 7
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    const/4 v0, 0x3

    .line 8
    aget-byte p1, p1, v0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public final setW(B)V
    .locals 0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method

.method public final setX(B)V
    .locals 0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->x:B

    return-void
.end method

.method public final setY(B)V
    .locals 0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->y:B

    return-void
.end method

.method public final setZ(B)V
    .locals 0

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->z:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->x:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljavax/vecmath/Tuple4b;->y:B

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljavax/vecmath/Tuple4b;->z:B

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->w:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
