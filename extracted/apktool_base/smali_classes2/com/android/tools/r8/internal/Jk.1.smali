.class public final Lcom/android/tools/r8/internal/Jk;
.super Lcom/android/tools/r8/internal/iz;
.source "SourceFile"


# static fields
.field public static final l:Lcom/android/tools/r8/internal/Jk;

.field public static final m:Lcom/android/tools/r8/internal/Fk;


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/List;

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    new-instance v0, Lcom/android/tools/r8/internal/Fk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Fk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Jk;->m:Lcom/android/tools/r8/internal/Fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/iz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Jk;->k:B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/Jk;->d:I

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/Jk;->f:I

    .line 7
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Gk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iz;-><init>(Lcom/android/tools/r8/internal/hz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Jk;->k:B

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/Gk;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Gk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gk;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Gk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Gk;->a(Lcom/android/tools/r8/internal/Jk;)Lcom/android/tools/r8/internal/Gk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Jk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Jk;

    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->d:I

    iget v3, p1, Lcom/android/tools/r8/internal/Jk;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Jk;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/Jk;->e:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_8

    move v4, v0

    goto :goto_2

    :cond_8
    move v4, v2

    :goto_2
    iget v5, p1, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_9

    move v6, v0

    goto :goto_3

    :cond_9
    move v6, v2

    :goto_3
    if-eq v4, v6, :cond_a

    return v2

    :cond_a
    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->f:I

    iget v4, p1, Lcom/android/tools/r8/internal/Jk;->f:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    move v4, v2

    :goto_4
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_d

    move v6, v0

    goto :goto_5

    :cond_d
    move v6, v2

    :goto_5
    if-eq v4, v6, :cond_e

    return v2

    :cond_e
    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->g:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Jk;->g:Z

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_10

    move v4, v0

    goto :goto_6

    :cond_10
    move v4, v2

    :goto_6
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_11

    move v6, v0

    goto :goto_7

    :cond_11
    move v6, v2

    :goto_7
    if-eq v4, v6, :cond_12

    return v2

    :cond_12
    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->h:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Jk;->h:Z

    if-eq v3, v4, :cond_13

    return v2

    :cond_13
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_14

    move v3, v0

    goto :goto_8

    :cond_14
    move v3, v2

    :goto_8
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_15

    move v4, v0

    goto :goto_9

    :cond_15
    move v4, v2

    :goto_9
    if-eq v3, v4, :cond_16

    return v2

    :cond_16
    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Jk;->i:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/Jk;->i:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Jk;->d:I

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    invoke-static {v4, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_3
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_4
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->f:I

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_5
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->b()I

    move-result v1

    add-int/2addr v1, v0

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
    .locals 8

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->C:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->d:I

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v1

    const/16 v2, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Jk;->e:Z

    sget-object v6, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_4

    const/4 v6, 0x6

    invoke-static {v0, v4, v6, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v6, p0, Lcom/android/tools/r8/internal/Jk;->f:I

    add-int/2addr v0, v6

    :cond_4
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    invoke-static {v0, v4, v6, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/Jk;->g:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    add-int/2addr v0, v6

    :cond_6
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_8

    const/4 v6, 0x3

    invoke-static {v0, v4, v6, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/Jk;->h:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v6, :cond_7

    move v6, v5

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    add-int/2addr v0, v6

    :cond_8
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Jk;->i:Z

    sget-object v6, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_9

    move v2, v5

    :cond_9
    add-int/2addr v0, v2

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0x3e7

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/K0;->hashFields(ILjava/util/Map;)I

    move-result v0

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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->D:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Jk;

    const-class v2, Lcom/android/tools/r8/internal/Gk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Jk;->k:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Jk;->k:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Jk;->k:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Jk;->k:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->b()Lcom/android/tools/r8/internal/Gk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Gk;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gk;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jk;->b()Lcom/android/tools/r8/internal/Gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jk;->b()Lcom/android/tools/r8/internal/Gk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Kw;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/uR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hn0;

    new-instance v2, Lcom/android/tools/r8/internal/fn0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hn0;->b:Lcom/android/tools/r8/internal/in0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/fn0;-><init>(Lcom/android/tools/r8/internal/in0;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/uR;-><init>(Lcom/android/tools/r8/internal/fn0;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Kw;->a:Lcom/android/tools/r8/internal/in0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hn0;

    new-instance v1, Lcom/android/tools/r8/internal/fn0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hn0;->b:Lcom/android/tools/r8/internal/in0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/fn0;-><init>(Lcom/android/tools/r8/internal/in0;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->d:I

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->e:Z

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_3
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->h:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_4
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->g:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_5
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    iget v4, p0, Lcom/android/tools/r8/internal/Jk;->f:I

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_6
    iget v3, p0, Lcom/android/tools/r8/internal/Jk;->c:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Jk;->i:Z

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_7
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/tools/r8/internal/Jk;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/kW;

    const/16 v5, 0x3e7

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v3, v3, Lcom/android/tools/r8/internal/Ek;->d:I

    const/high16 v4, 0x20000000

    if-ge v3, v4, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
