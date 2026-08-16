.class public final Lcom/android/tools/r8/internal/OC;
.super Lcom/android/tools/r8/internal/PC;
.source "SourceFile"


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/PC;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/OC;->d:I

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/OC;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/OC;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/PC;-><init>(Lcom/android/tools/r8/internal/PC;)V

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    .line 7
    iget v0, p1, Lcom/android/tools/r8/internal/OC;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/OC;->d:I

    .line 8
    iget v0, p1, Lcom/android/tools/r8/internal/OC;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/OC;->e:I

    .line 9
    iget p1, p1, Lcom/android/tools/r8/internal/OC;->f:I

    iput p1, p0, Lcom/android/tools/r8/internal/OC;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PC;->b(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/OC;->a(I)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 6
    iget v1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/OC;->c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/PC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OC;->c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 6

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 12
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/ef0;

    iget v3, p0, Lcom/android/tools/r8/internal/OC;->f:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/android/tools/r8/internal/ef0;-><init>(II[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 16
    :cond_2
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 17
    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0
.end method

.method public final a(I)V
    .locals 9

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/QC;->j(I)I

    move-result p1

    .line 20
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/OC;->e:I

    if-le p1, v1, :cond_3

    array-length p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_3

    .line 22
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    .line 24
    new-array v2, p1, [Ljava/lang/Object;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 25
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v6

    :goto_1
    and-int v7, v6, v3

    .line 27
    aget-object v8, v2, v7

    if-nez v8, :cond_1

    .line 28
    aput-object v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iput-object v2, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    .line 30
    :goto_2
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1}, Lcom/android/tools/r8/internal/YH;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    .line 31
    iput v0, p0, Lcom/android/tools/r8/internal/OC;->d:I

    int-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 32
    iput p1, p0, Lcom/android/tools/r8/internal/OC;->e:I

    :cond_3
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/PC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/OC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/OC;-><init>(Lcom/android/tools/r8/internal/OC;)V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/PC;
    .locals 12

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->j(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/PC;->b:I

    .line 17
    new-array v4, v0, [Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_2

    .line 18
    aget-object v7, v1, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v8

    :goto_1
    and-int v9, v8, v5

    .line 20
    aget-object v10, v4, v9

    if-nez v10, :cond_1

    .line 21
    aput-object v7, v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iput-object v4, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    .line 23
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0}, Lcom/android/tools/r8/internal/YH;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    .line 24
    iput v1, p0, Lcom/android/tools/r8/internal/OC;->d:I

    int-to-double v0, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 25
    iput v0, p0, Lcom/android/tools/r8/internal/OC;->e:I

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    .line 27
    array-length v1, v0

    .line 28
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v1}, Lcom/android/tools/r8/internal/YH;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    .line 29
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    .line 30
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_8

    if-ne v3, v4, :cond_5

    .line 31
    aget-object v5, v0, v3

    if-nez v5, :cond_5

    add-int v4, v3, v1

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    .line 32
    aget-object v5, v0, v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    :goto_3
    move v3, v4

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    add-int/lit8 v5, v3, -0x1

    :goto_4
    if-lt v5, v4, :cond_7

    and-int v6, v5, v2

    .line 33
    aget-object v6, v0, v6

    if-nez v6, :cond_6

    add-int/lit8 v4, v5, 0x1

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 34
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/NC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NC;-><init>(Lcom/android/tools/r8/internal/PC;)V

    return-object v0

    :cond_8
    :goto_5
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    sub-int v4, v3, v1

    .line 5
    iget v5, p0, Lcom/android/tools/r8/internal/OC;->d:I

    if-ge v4, v5, :cond_2

    and-int v4, v3, v2

    .line 6
    iget-object v5, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PC;->b(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/OC;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 9
    iget p1, p0, Lcom/android/tools/r8/internal/OC;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/OC;->f:I

    .line 10
    iget p1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OC;->a(I)V

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/NC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NC;-><init>(Lcom/android/tools/r8/internal/PC;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/NC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object p1

    return-object p1
.end method
