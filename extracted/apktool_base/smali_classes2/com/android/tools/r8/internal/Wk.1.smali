.class public final Lcom/android/tools/r8/internal/Wk;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final j:Lcom/android/tools/r8/internal/Wk;

.field public static final k:Lcom/android/tools/r8/internal/Uk;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public volatile d:Ljava/io/Serializable;

.field public volatile e:Ljava/io/Serializable;

.field public f:Lcom/android/tools/r8/internal/al;

.field public g:Z

.field public h:Z

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Wk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    new-instance v0, Lcom/android/tools/r8/internal/Uk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Uk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Wk;->k:Lcom/android/tools/r8/internal/Uk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Wk;->i:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Wk;->i:B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/android/tools/r8/internal/Vk;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Vk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vk;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Vk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Vk;->a(Lcom/android/tools/r8/internal/Wk;)Lcom/android/tools/r8/internal/Vk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Wk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Wk;

    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Wk;->b:I

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iget v4, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v4, v0

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    move v3, v0

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b

    move v4, v0

    goto :goto_5

    :cond_b
    move v4, v2

    :goto_5
    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v1, :cond_f

    sget-object v1, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_f
    iget-object v3, p1, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v3, :cond_10

    sget-object v3, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_10
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_12

    move v4, v0

    goto :goto_6

    :cond_12
    move v4, v2

    :goto_6
    iget v5, p1, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_13

    move v6, v0

    goto :goto_7

    :cond_13
    move v6, v2

    :goto_7
    if-eq v4, v6, :cond_14

    return v2

    :cond_14
    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Wk;->g:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Wk;->g:Z

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_16

    move v3, v0

    goto :goto_8

    :cond_16
    move v3, v2

    :goto_8
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_17

    move v4, v0

    goto :goto_9

    :cond_17
    move v4, v2

    :goto_9
    if-eq v3, v4, :cond_18

    return v2

    :cond_18
    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Wk;->h:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/Wk;->h:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    const/4 v4, 0x3

    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_4
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_6
    iget v2, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
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
    sget-object v0, Lcom/android/tools/r8/internal/zl;->w:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/al;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v2, v1, 0x10

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Wk;->g:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_6

    move v2, v6

    goto :goto_0

    :cond_6
    move v2, v5

    :goto_0
    add-int/2addr v0, v2

    :cond_7
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Wk;->h:Z

    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    add-int/2addr v0, v5

    :cond_9
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->x:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Wk;

    const-class v2, Lcom/android/tools/r8/internal/Vk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Wk;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/al;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Wk;->i:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Wk;->i:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Wk;->j:Lcom/android/tools/r8/internal/Wk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->d()Lcom/android/tools/r8/internal/Vk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Vk;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Vk;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->d()Lcom/android/tools/r8/internal/Vk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wk;->d()Lcom/android/tools/r8/internal/Vk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->d:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->e:Ljava/io/Serializable;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wk;->f:Lcom/android/tools/r8/internal/al;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/al;->h:Lcom/android/tools/r8/internal/al;

    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Wk;->g:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/Wk;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Wk;->h:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
