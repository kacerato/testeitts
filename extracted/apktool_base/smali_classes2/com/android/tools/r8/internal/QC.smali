.class public abstract Lcom/android/tools/r8/internal/QC;
.super Lcom/android/tools/r8/internal/XB;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# static fields
.field public static final synthetic c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/XB;-><init>()V

    return-void
.end method

.method public static varargs a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/OC;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/OC;-><init>(I)V

    :goto_0
    if-ge v0, p0, :cond_0

    .line 13
    aget-object p1, p2, v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/PC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/PC;->c()Lcom/android/tools/r8/internal/PC;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    aget-object p0, p2, v0

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 19
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;
    .locals 5

    .line 1
    array-length v0, p6

    const v1, 0x7ffffff9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 3
    aput-object p0, v4, v3

    .line 4
    aput-object p1, v4, v2

    const/4 p0, 0x2

    .line 5
    aput-object p2, v4, p0

    const/4 p0, 0x3

    .line 6
    aput-object p3, v4, p0

    const/4 p0, 0x4

    .line 7
    aput-object p4, v4, p0

    const/4 p0, 0x5

    .line 8
    aput-object p5, v4, p0

    .line 9
    array-length p0, p6

    invoke-static {p6, v3, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-static {v0, v0, v4}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the total number of elements must fit in an int"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;
    .locals 4

    .line 20
    instance-of v0, p0, Lcom/android/tools/r8/internal/QC;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/QC;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_3

    .line 24
    check-cast p0, Ljava/util/EnumSet;

    .line 25
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/bC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bC;-><init>(Ljava/util/EnumSet;)V

    return-object v0

    .line 28
    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 30
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object p0

    .line 31
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of p0, p0, Ljava/util/Set;

    if-eqz p0, :cond_4

    .line 33
    array-length p0, v0

    array-length v1, v0

    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0

    .line 34
    :cond_4
    array-length p0, v0

    .line 35
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    if-ltz p0, :cond_6

    int-to-double v2, p0

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 37
    sget-object v3, Lcom/android/tools/r8/internal/XH;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 38
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    mul-int v1, v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :pswitch_1
    mul-int v1, v2, v2

    :goto_0
    sub-int/2addr v1, p0

    not-int v1, v1

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    add-int/2addr v2, v1

    goto :goto_1

    :pswitch_2
    mul-int v1, v2, v2

    if-ne v1, p0, :cond_5

    :goto_1
    :pswitch_3
    const/4 v1, 0x4

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0

    .line 41
    :cond_5
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string v1, "x ("

    const-string v2, ") must be >= 0"

    invoke-static {p0, v1, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h()Lcom/android/tools/r8/internal/IC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    return-object v0
.end method

.method public static j(I)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/QC;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QC;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QC;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QC;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bC;

    return v0
.end method
