.class public final Lcom/android/tools/r8/internal/Mk;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final p:Lcom/android/tools/r8/internal/Mk;

.field public static final q:Lcom/android/tools/r8/internal/Kk;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public volatile d:Ljava/io/Serializable;

.field public e:Lcom/android/tools/r8/internal/zR;

.field public f:Lcom/android/tools/r8/internal/TI;

.field public g:Lcom/android/tools/r8/internal/TI;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Lcom/android/tools/r8/internal/Qk;

.field public m:Lcom/android/tools/r8/internal/sl;

.field public volatile n:Ljava/io/Serializable;

.field public o:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Mk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    new-instance v0, Lcom/android/tools/r8/internal/Kk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Mk;->q:Lcom/android/tools/r8/internal/Kk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/wz;->emptyIntList()Lcom/android/tools/r8/internal/TI;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    .line 10
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    .line 11
    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    .line 12
    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    .line 13
    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Lk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Lk;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Lk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lk;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Lk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Lk;->a(Lcom/android/tools/r8/internal/Mk;)Lcom/android/tools/r8/internal/Lk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Mk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Mk;

    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Mk;->b:I

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iget v4, p1, Lcom/android/tools/r8/internal/Mk;->b:I

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/DH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/DH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v1, :cond_12

    sget-object v1, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_12
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v3, :cond_13

    sget-object v3, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_13
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Qk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_15

    move v3, v0

    goto :goto_4

    :cond_15
    move v3, v2

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_16

    move v4, v0

    goto :goto_5

    :cond_16
    move v4, v2

    :goto_5
    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    :cond_18
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v3, :cond_19

    sget-object v3, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    :cond_19
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/sl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1b

    move v3, v0

    goto :goto_6

    :cond_1b
    move v3, v2

    :goto_6
    iget v4, p1, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1c

    move v4, v0

    goto :goto_7

    :cond_1c
    move v4, v2

    :goto_7
    if-eq v3, v4, :cond_1d

    return v2

    :cond_1d
    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1e

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_1e
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v3, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    :cond_1f
    move-object v1, v3

    :goto_8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_20

    check-cast v3, Ljava/lang/String;

    goto :goto_9

    :cond_20
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_21

    iput-object v4, p1, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    :cond_21
    move-object v3, v4

    :goto_9
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
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final getSerializedSize()I
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/wz;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/kW;

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v0, v4

    const/16 v3, 0x8

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_8
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    :cond_a
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    move v0, v2

    move v3, v0

    :goto_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast v4, Lcom/android/tools/r8/internal/DH;

    iget v5, v4, Lcom/android/tools/r8/internal/DH;->d:I

    const/16 v6, 0xa

    if-ge v0, v5, :cond_d

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v4, v4, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v4, v4, v0

    if-ltz v4, :cond_c

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v6

    goto :goto_7

    :cond_c
    sget-object v4, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    :goto_7
    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    add-int/2addr v1, v3

    add-int/2addr v1, v5

    move v0, v2

    :goto_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast v3, Lcom/android/tools/r8/internal/DH;

    iget v4, v3, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v2, v4, :cond_f

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v3, v3, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v3, v3, v2

    if-ltz v3, :cond_e

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v3

    goto :goto_9

    :cond_e
    sget-object v3, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    move v3, v6

    :goto_9
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    add-int/2addr v1, v0

    add-int/2addr v1, v4

    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
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
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->a:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v2, v1, Lcom/android/tools/r8/internal/DH;->d:I

    if-lez v2, :cond_4

    const/16 v2, 0xa

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DH;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v2, v1, Lcom/android/tools/r8/internal/DH;->d:I

    if-lez v2, :cond_5

    const/16 v2, 0xb

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DH;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_b

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v1, :cond_a

    sget-object v1, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Qk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_10

    const/16 v1, 0xc

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_e
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    iput-object v2, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    :cond_f
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->b:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Mk;

    const-class v2, Lcom/android/tools/r8/internal/Lk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Mk;->o:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/nk;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nk;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/jl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ek;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v2

    :cond_b
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Mk;->o:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->c()Lcom/android/tools/r8/internal/Lk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Lk;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Lk;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->c()Lcom/android/tools/r8/internal/Lk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->c()Lcom/android/tools/r8/internal/Lk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->d:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/zR;->g(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_7
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->m:Lcom/android/tools/r8/internal/sl;

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/tools/r8/internal/sl;->d:Lcom/android/tools/r8/internal/sl;

    :cond_9
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_a
    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    check-cast v2, Lcom/android/tools/r8/internal/DH;

    iget v3, v2, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v2, v2, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v2, v2, v1

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mk;->g:Lcom/android/tools/r8/internal/TI;

    check-cast v1, Lcom/android/tools/r8/internal/DH;

    iget v2, v1, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v0, v2, :cond_c

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/DH;->k(I)V

    iget-object v1, v1, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v1, v1, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/Mk;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
