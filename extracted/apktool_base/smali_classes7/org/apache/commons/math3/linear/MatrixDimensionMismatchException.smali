.class public Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_2x2:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getExpectedColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getExpectedRowDimension()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongRowDimension()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method
