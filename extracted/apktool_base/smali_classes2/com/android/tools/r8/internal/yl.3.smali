.class public final Lcom/android/tools/r8/internal/yl;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final k:Lcom/android/tools/r8/internal/yl;

.field public static final l:Lcom/android/tools/r8/internal/tl;


# instance fields
.field public b:I

.field public c:Ljava/util/List;

.field public volatile d:Ljava/io/Serializable;

.field public e:J

.field public f:J

.field public g:D

.field public h:Lcom/android/tools/r8/internal/m8;

.field public volatile i:Ljava/io/Serializable;

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yl;->k:Lcom/android/tools/r8/internal/yl;

    new-instance v0, Lcom/android/tools/r8/internal/tl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yl;->l:Lcom/android/tools/r8/internal/tl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/yl;->j:B

    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    iput-object v1, p0, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ul;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/yl;->j:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ul;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/yl;->k:Lcom/android/tools/r8/internal/yl;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ul;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ul;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ul;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ul;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/ul;->a(Lcom/android/tools/r8/internal/yl;)Lcom/android/tools/r8/internal/ul;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/yl;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/yl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_6
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v3, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    :cond_7
    move-object v1, v3

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_8
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    iput-object v4, p1, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    :cond_9
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_b

    move v4, v0

    goto :goto_4

    :cond_b
    move v4, v2

    :goto_4
    iget v5, p1, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_c

    move v6, v0

    goto :goto_5

    :cond_c
    move v6, v2

    :goto_5
    if-eq v4, v6, :cond_d

    return v2

    :cond_d
    if-eqz v3, :cond_e

    iget-wide v3, p0, Lcom/android/tools/r8/internal/yl;->e:J

    iget-wide v6, p1, Lcom/android/tools/r8/internal/yl;->e:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_e

    return v2

    :cond_e
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_f

    move v4, v0

    goto :goto_6

    :cond_f
    move v4, v2

    :goto_6
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_10

    move v6, v0

    goto :goto_7

    :cond_10
    move v6, v2

    :goto_7
    if-eq v4, v6, :cond_11

    return v2

    :cond_11
    if-eqz v3, :cond_12

    iget-wide v3, p0, Lcom/android/tools/r8/internal/yl;->f:J

    iget-wide v6, p1, Lcom/android/tools/r8/internal/yl;->f:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_12

    return v2

    :cond_12
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_13

    move v3, v0

    goto :goto_8

    :cond_13
    move v3, v2

    :goto_8
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_14

    move v4, v0

    goto :goto_9

    :cond_14
    move v4, v2

    :goto_9
    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    if-eqz v1, :cond_16

    iget-wide v3, p0, Lcom/android/tools/r8/internal/yl;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/tools/r8/internal/yl;->g:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_17

    move v3, v0

    goto :goto_a

    :cond_17
    move v3, v2

    :goto_a
    iget v4, p1, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_18

    move v4, v0

    goto :goto_b

    :cond_18
    move v4, v2

    :goto_b
    if-eq v3, v4, :cond_19

    return v2

    :cond_19
    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    iget-object v3, p1, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/m8;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1b

    move v3, v0

    goto :goto_c

    :cond_1b
    move v3, v2

    :goto_c
    iget v4, p1, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1c

    move v4, v0

    goto :goto_d

    :cond_1c
    move v4, v2

    :goto_d
    if-eq v3, v4, :cond_1d

    return v2

    :cond_1d
    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1e

    check-cast v1, Ljava/lang/String;

    goto :goto_e

    :cond_1e
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v3, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    :cond_1f
    move-object v1, v3

    :goto_e
    iget-object v3, p1, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_20

    check-cast v3, Ljava/lang/String;

    goto :goto_f

    :cond_20
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_21

    iput-object v4, p1, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    :cond_21
    move-object v3, v4

    :goto_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    return v2

    :cond_23
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/yl;->k:Lcom/android/tools/r8/internal/yl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/yl;->k:Lcom/android/tools/r8/internal/yl;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/tools/r8/internal/yl;->e:J

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v0

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/android/tools/r8/internal/yl;->f:J

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v0

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v1

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/m8;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->O:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v4, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    :cond_3
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v4, v1, 0x2

    const/16 v5, 0x20

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-wide v6, p0, Lcom/android/tools/r8/internal/yl;->e:J

    ushr-long v8, v6, v5

    xor-long/2addr v6, v8

    long-to-int v4, v6

    add-int/2addr v0, v4

    :cond_5
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-wide v6, p0, Lcom/android/tools/r8/internal/yl;->f:J

    ushr-long v8, v6, v5

    xor-long/2addr v6, v8

    long-to-int v4, v6

    add-int/2addr v0, v4

    :cond_6
    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-wide v6, p0, Lcom/android/tools/r8/internal/yl;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long v8, v6, v5

    xor-long/2addr v6, v8

    long-to-int v1, v6

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_b

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_9
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v2, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    :cond_a
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->P:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/yl;

    const-class v2, Lcom/android/tools/r8/internal/ul;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/yl;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/yl;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/yl;->j:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/yl;->k:Lcom/android/tools/r8/internal/yl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yl;->a()Lcom/android/tools/r8/internal/ul;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ul;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ul;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yl;->a()Lcom/android/tools/r8/internal/ul;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yl;->a()Lcom/android/tools/r8/internal/ul;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yl;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->d:Ljava/io/Serializable;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/android/tools/r8/internal/yl;->e:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Ie;->b(IJ)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/android/tools/r8/internal/yl;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/Ie;->b(IJ)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/android/tools/r8/internal/yl;->g:D

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/tools/r8/internal/Ie;->a(IJ)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->h:Lcom/android/tools/r8/internal/m8;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/m8;)V

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/yl;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/yl;->i:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
