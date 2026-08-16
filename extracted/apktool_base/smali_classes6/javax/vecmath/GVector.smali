.class public Ljavax/vecmath/GVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x1369b6b27719fba8L


# instance fields
.field private length:I

.field values:[D


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/GVector;->length:I

    .line 3
    new-array v0, p1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/GVector;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Ljavax/vecmath/GVector;->length:I

    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 11
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 15
    iget v2, p1, Ljavax/vecmath/Tuple2f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 16
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    float-to-double v2, p1

    const/4 p1, 0x1

    aput-wide v2, v1, p1

    .line 17
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 25
    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 26
    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x1

    .line 27
    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->y:D

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    .line 28
    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->z:D

    aput-wide v3, v1, v2

    .line 29
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3f;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 19
    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 20
    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 21
    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    .line 22
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v2, p1

    const/4 p1, 0x2

    aput-wide v2, v1, p1

    .line 23
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 38
    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 39
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x1

    .line 40
    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->y:D

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    .line 41
    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->z:D

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    .line 42
    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->w:D

    aput-wide v3, v1, v2

    .line 43
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    new-array v1, v0, [D

    iput-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    .line 32
    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 33
    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    .line 34
    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v2, v2

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    .line 35
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, p1

    const/4 p1, 0x3

    aput-wide v2, v1, p1

    .line 36
    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    return-void
.end method

.method public constructor <init>([D)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p1

    iput v0, p0, Ljavax/vecmath/GVector;->length:I

    .line 7
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Ljavax/vecmath/GVector;->length:I

    .line 46
    new-array v0, p2, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 47
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final LUDBackSolve(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;)V
    .locals 11

    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int/2addr v0, v1

    new-array v1, v0, [D

    new-array v2, v0, [D

    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v3

    new-array v3, v3, [I

    iget v4, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v5

    if-ne v4, v5, :cond_8

    iget v4, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-virtual {p3}, Ljavax/vecmath/GVector;->getSize()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget v4, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v5, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v5, v6, :cond_1

    move v6, v4

    :goto_1
    iget v7, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v6, v7, :cond_0

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    iget-object v8, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v5

    aget-wide v9, v8, v6

    aput-wide v9, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_2

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_3
    iget v5, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v5, :cond_3

    iget v5, p1, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int/2addr v5, v0

    iget-object v6, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v7, v6, v0

    aput-wide v7, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move p2, v4

    :goto_4
    iget v0, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge p2, v0, :cond_4

    iget-object v0, p3, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v0, p2

    double-to-int v0, v5

    aput v0, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    iget p2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-static {p2, v1, v3, v2}, Ljavax/vecmath/GMatrix;->luBacksubstitution(I[D[I[D)V

    :goto_5
    iget p2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, p2, :cond_5

    iget-object p2, p0, Ljavax/vecmath/GVector;->values:[D

    iget p3, p1, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int/2addr p3, v4

    aget-wide v0, v2, p3

    aput-wide v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector25"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector24"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector16"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final SVDBackSolve(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GVector;)V
    .locals 3

    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-virtual {p4}, Ljavax/vecmath/GVector;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_1

    iget v1, p2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_1

    iget v1, p2, Ljavax/vecmath/GMatrix;->nCol:I

    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget v2, p3, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v1, v2, :cond_0

    iget v2, p3, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v1, v2, :cond_0

    new-instance v2, Ljavax/vecmath/GMatrix;

    invoke-direct {v2, v0, v1}, Ljavax/vecmath/GMatrix;-><init>(II)V

    invoke-virtual {v2, p1, p3}, Ljavax/vecmath/GMatrix;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    invoke-virtual {v2, p1, p2}, Ljavax/vecmath/GMatrix;->mulTransposeRight(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    invoke-virtual {v2}, Ljavax/vecmath/GMatrix;->invert()V

    invoke-virtual {p0, v2, p4}, Ljavax/vecmath/GVector;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GVector;)V

    return-void

    :cond_0
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector23"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector15"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(Ljavax/vecmath/GVector;)V
    .locals 7

    .line 1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v0

    add-double/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GVector4"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;)V
    .locals 7

    .line 5
    iget v0, p1, Ljavax/vecmath/GVector;->length:I

    iget v1, p2, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_2

    .line 6
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    iget-object v2, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v0

    add-double/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector5"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final angle(Ljavax/vecmath/GVector;)D
    .locals 6

    invoke-virtual {p0, p1}, Ljavax/vecmath/GVector;->dot(Ljavax/vecmath/GVector;)D

    move-result-wide v0

    invoke-virtual {p0}, Ljavax/vecmath/GVector;->norm()D

    move-result-wide v2

    invoke-virtual {p1}, Ljavax/vecmath/GVector;->norm()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/GVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    new-array v1, v1, [D

    iput-object v1, v0, Ljavax/vecmath/GVector;->values:[D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Ljavax/vecmath/GVector;->values:[D

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final dot(Ljavax/vecmath/GVector;)D
    .locals 8

    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v2

    iget-object v3, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v6, v3, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GVector14"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public epsilonEquals(Ljavax/vecmath/GVector;D)Z
    .locals 7

    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v1, v0

    iget-object v1, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v1, v0

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    neg-double v3, v3

    :cond_1
    cmpl-double v1, v3, p2

    if-lez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    .line 4
    :try_start_0
    check-cast p1, Ljavax/vecmath/GVector;

    .line 5
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    iget v2, p1, Ljavax/vecmath/GVector;->length:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 6
    :goto_0
    iget v2, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v1

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v2, v3, v5

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public equals(Ljavax/vecmath/GVector;)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    iget v2, p1, Ljavax/vecmath/GVector;->length:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v1

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v2, v3, v5

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public final getElement(I)D
    .locals 3

    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x1f

    mul-long/2addr v0, v3

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final interpolate(Ljavax/vecmath/GVector;D)V
    .locals 7

    .line 9
    iget v0, p1, Ljavax/vecmath/GVector;->length:I

    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p2

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v0

    mul-double/2addr v5, p2

    add-double/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector22"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final interpolate(Ljavax/vecmath/GVector;F)V
    .locals 2

    float-to-double v0, p2

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Ljavax/vecmath/GVector;->interpolate(Ljavax/vecmath/GVector;D)V

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;D)V
    .locals 7

    .line 3
    iget v0, p2, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_2

    .line 4
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v0

    mul-double/2addr v2, v5

    iget-object v4, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v0

    mul-double/2addr v5, p3

    add-double/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector21"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector20"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final interpolate(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;F)V
    .locals 2

    float-to-double v0, p3

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/vecmath/GVector;->interpolate(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;D)V

    return-void
.end method

.method public final mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GVector;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljavax/vecmath/GMatrix;->getNumCol()I

    move-result v0

    iget v1, p2, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_4

    .line 2
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    invoke-virtual {p1}, Ljavax/vecmath/GMatrix;->getNumRow()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-eq p2, p0, :cond_0

    .line 3
    iget-object v0, p2, Ljavax/vecmath/GVector;->values:[D

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 5
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 6
    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 7
    iget v2, p2, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 8
    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v1

    iget-object v6, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v2

    aget-wide v9, v0, v2

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector11"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector10"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mul(Ljavax/vecmath/GVector;Ljavax/vecmath/GMatrix;)V
    .locals 11

    .line 11
    invoke-virtual {p2}, Ljavax/vecmath/GMatrix;->getNumRow()I

    move-result v0

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_4

    .line 12
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    invoke-virtual {p2}, Ljavax/vecmath/GMatrix;->getNumCol()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-eq p1, p0, :cond_0

    .line 13
    iget-object v0, p1, Ljavax/vecmath/GVector;->values:[D

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 15
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 16
    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 17
    iget v2, p1, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 18
    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v1

    iget-object v6, p2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    aget-wide v9, v0, v2

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void

    .line 19
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector13"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector12"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final negate()V
    .locals 6

    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final norm()D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final normSquared()D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final normalize()V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_0
    iget v4, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v3, v4, :cond_0

    .line 9
    iget-object v4, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v3

    mul-double/2addr v5, v5

    add-double/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    .line 11
    :goto_1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v0, :cond_1

    .line 12
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v0, v2

    mul-double/2addr v5, v3

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final normalize(Ljavax/vecmath/GVector;)V
    .locals 7

    .line 1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 2
    :goto_0
    iget v4, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v3, v4, :cond_0

    .line 3
    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 5
    :goto_1
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v0

    mul-double/2addr v5, v3

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GVector0"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scale(D)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scale(DLjavax/vecmath/GVector;)V
    .locals 5

    .line 1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p3, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p3, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    mul-double/2addr v3, p1

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scaleAdd(DLjavax/vecmath/GVector;Ljavax/vecmath/GVector;)V
    .locals 7

    iget v0, p4, Ljavax/vecmath/GVector;->length:I

    iget v1, p3, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p3, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    mul-double/2addr v3, p1

    iget-object v2, p4, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v0

    add-double/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector3"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(Ljavax/vecmath/GVector;)V
    .locals 5

    .line 3
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 4
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 5
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 6
    :goto_0
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v0, :cond_2

    .line 7
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v1, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    iget v0, p1, Ljavax/vecmath/GVector;->length:I

    if-ge v2, v0, :cond_1

    .line 9
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v1, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    :goto_2
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, p1, :cond_2

    .line 11
    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple2f;)V
    .locals 5

    .line 12
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 13
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 14
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 15
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget v2, p1, Ljavax/vecmath/Tuple2f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 16
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    float-to-double v2, p1

    const/4 p1, 0x1

    aput-wide v2, v0, p1

    .line 17
    :goto_0
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple3d;)V
    .locals 5

    .line 25
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 26
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 27
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 28
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 29
    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->y:D

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v2, 0x2

    .line 30
    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->z:D

    aput-wide v3, v0, v2

    .line 31
    :goto_0
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple3f;)V
    .locals 5

    .line 18
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 19
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 20
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 21
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 22
    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 23
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v2, p1

    const/4 p1, 0x2

    aput-wide v2, v0, p1

    .line 24
    :goto_0
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4d;)V
    .locals 5

    .line 40
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 41
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 42
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 43
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 44
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v2, 0x2

    .line 45
    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->z:D

    aput-wide v3, v0, v2

    const/4 v2, 0x3

    .line 46
    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->w:D

    aput-wide v3, v0, v2

    .line 47
    :goto_0
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4f;)V
    .locals 5

    .line 32
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 33
    iput v1, p0, Ljavax/vecmath/GVector;->length:I

    .line 34
    new-array v0, v1, [D

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    .line 35
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    .line 36
    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 37
    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v2, v2

    const/4 v4, 0x2

    aput-wide v2, v0, v4

    .line 38
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, p1

    const/4 p1, 0x3

    aput-wide v2, v0, p1

    .line 39
    :goto_0
    iget p1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set([D)V
    .locals 4

    .line 1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setElement(ID)V
    .locals 1

    iget-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public final setSize(I)V
    .locals 6

    new-array v0, p1, [D

    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v4, v3, v2

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Ljavax/vecmath/GVector;->length:I

    iput-object v0, p0, Ljavax/vecmath/GVector;->values:[D

    return-void
.end method

.method public final sub(Ljavax/vecmath/GVector;)V
    .locals 7

    .line 1
    iget v0, p0, Ljavax/vecmath/GVector;->length:I

    iget v1, p1, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v0

    sub-double/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GVector7"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sub(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;)V
    .locals 7

    .line 5
    iget v0, p1, Ljavax/vecmath/GVector;->length:I

    iget v1, p2, Ljavax/vecmath/GVector;->length:I

    if-ne v0, v1, :cond_2

    .line 6
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    iget-object v2, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v2, v0

    sub-double/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GVector8"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zero()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljavax/vecmath/GVector;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/vecmath/GVector;->values:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
