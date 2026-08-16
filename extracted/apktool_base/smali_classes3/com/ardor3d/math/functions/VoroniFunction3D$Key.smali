.class Lcom/ardor3d/math/functions/VoroniFunction3D$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/math/functions/VoroniFunction3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/functions/VoroniFunction3D$Key;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    iput v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    .line 4
    iget v0, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    iput v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    .line 5
    iget p1, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    iput p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;

    iget v1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    iget v3, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    iget v3, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    iget p1, p1, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
