.class public final Lcom/android/tools/r8/internal/rl;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final k:Lcom/android/tools/r8/internal/rl;

.field public static final l:Lcom/android/tools/r8/internal/pl;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/TI;

.field public d:I

.field public e:Lcom/android/tools/r8/internal/TI;

.field public f:I

.field public volatile g:Ljava/io/Serializable;

.field public volatile h:Ljava/io/Serializable;

.field public i:Lcom/android/tools/r8/internal/zR;

.field public j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    new-instance v0, Lcom/android/tools/r8/internal/pl;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pl;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/rl;->l:Lcom/android/tools/r8/internal/pl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/rl;->d:I

    .line 7
    iput v0, p0, Lcom/android/tools/r8/internal/rl;->f:I

    .line 8
    iput-byte v0, p0, Lcom/android/tools/r8/internal/rl;->j:B

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ql;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/rl;->d:I

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/rl;->f:I

    .line 4
    iput-byte p1, p0, Lcom/android/tools/r8/internal/rl;->j:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ql;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ql;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ql;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ql;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ql;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/ql;->a(Lcom/android/tools/r8/internal/rl;)Lcom/android/tools/r8/internal/ql;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/rl;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/rl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    iget-object v2, p1, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/DH;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    iget-object v3, p1, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/DH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_7
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v3, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    :cond_8
    move-object v1, v3

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_9
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    iput-object v4, p1, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    :cond_a
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    move v3, v0

    goto :goto_4

    :cond_c
    move v3, v2

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    move v4, v0

    goto :goto_5

    :cond_d
    move v4, v2

    :goto_5
    if-eq v3, v4, :cond_e

    return v2

    :cond_e
    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_f

    check-cast v1, Ljava/lang/String;

    goto :goto_6

    :cond_f
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    iput-object v3, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    :cond_10
    move-object v1, v3

    :goto_6
    iget-object v3, p1, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_11

    check-cast v3, Ljava/lang/String;

    goto :goto_7

    :cond_11
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_12

    iput-object v4, p1, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    :cond_12
    move-object v3, v4

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    iget-object v3, p1, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 8

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/DH;

    iget v5, v4, Lcom/android/tools/r8/internal/DH;->d:I

    const/16 v6, 0xa

    if-ge v1, v5, :cond_2

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v3, v4, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v3, v3, v1

    if-ltz v3, :cond_1

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v6

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    :goto_1
    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    if-ltz v2, :cond_3

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    move v3, v6

    :goto_2
    add-int/2addr v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput v2, p0, Lcom/android/tools/r8/internal/rl;->d:I

    move v2, v0

    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    move-object v5, v4

    check-cast v5, Lcom/android/tools/r8/internal/DH;

    iget v7, v5, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v2, v7, :cond_6

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v4, v5, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v4, v4, v2

    if-ltz v4, :cond_5

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v4

    goto :goto_5

    :cond_5
    sget-object v4, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    move v4, v6

    :goto_5
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr v1, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    if-ltz v3, :cond_7

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v6

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    :goto_6
    add-int/2addr v1, v6

    :cond_8
    iput v3, p0, Lcom/android/tools/r8/internal/rl;->f:I

    iget v2, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_9
    iget v2, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_a
    move v2, v0

    :goto_7
    iget-object v3, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/wz;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v1, v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

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
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->U:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v2, v1, Lcom/android/tools/r8/internal/DH;->d:I

    const/4 v3, 0x1

    const/16 v4, 0x35

    const/16 v5, 0x25

    if-lez v2, :cond_1

    invoke-static {v0, v5, v3, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DH;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v2, v1, Lcom/android/tools/r8/internal/DH;->d:I

    const/4 v6, 0x2

    if-lez v2, :cond_2

    invoke-static {v0, v5, v6, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DH;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-static {v0, v5, v1, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v2, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    :cond_4
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    invoke-static {v0, v5, v1, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_6
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v2, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    :cond_7
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x6

    invoke-static {v0, v5, v1, v4}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->V:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/rl;

    const-class v2, Lcom/android/tools/r8/internal/ql;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/rl;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/rl;->j:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/rl;->k:Lcom/android/tools/r8/internal/rl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rl;->a()Lcom/android/tools/r8/internal/ql;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ql;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ql;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rl;->a()Lcom/android/tools/r8/internal/ql;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rl;->a()Lcom/android/tools/r8/internal/ql;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rl;->getSerializedSize()I

    iget-object v0, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast v0, Lcom/android/tools/r8/internal/DH;

    iget v0, v0, Lcom/android/tools/r8/internal/DH;->d:I

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/rl;->d:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/rl;->c:Lcom/android/tools/r8/internal/TI;

    check-cast v2, Lcom/android/tools/r8/internal/DH;

    iget v3, v2, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v2, v2, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v1, v1, Lcom/android/tools/r8/internal/DH;->d:I

    if-lez v1, :cond_2

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    iget v1, p0, Lcom/android/tools/r8/internal/rl;->f:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/rl;->e:Lcom/android/tools/r8/internal/TI;

    check-cast v2, Lcom/android/tools/r8/internal/DH;

    iget v3, v2, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v2, v2, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->g:Ljava/io/Serializable;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/rl;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->h:Ljava/io/Serializable;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/rl;->i:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
