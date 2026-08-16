.class public final Lcom/android/tools/r8/internal/Ek;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final o:Lcom/android/tools/r8/internal/Ek;

.field public static final p:Lcom/android/tools/r8/internal/Ak;


# instance fields
.field public b:I

.field public volatile c:Ljava/io/Serializable;

.field public d:I

.field public e:I

.field public f:I

.field public volatile g:Ljava/io/Serializable;

.field public volatile h:Ljava/io/Serializable;

.field public volatile i:Ljava/io/Serializable;

.field public j:I

.field public volatile k:Ljava/io/Serializable;

.field public l:Lcom/android/tools/r8/internal/Jk;

.field public m:Z

.field public n:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ek;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ek;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    new-instance v0, Lcom/android/tools/r8/internal/Ak;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ak;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ek;->p:Lcom/android/tools/r8/internal/Ak;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Ek;->n:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 7
    iput v1, p0, Lcom/android/tools/r8/internal/Ek;->f:I

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Bk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Ek;->n:B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Ek;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Ek;

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Ek;->b:I

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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_6

    move v4, v0

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    iget v5, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_7

    move v6, v0

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    if-eq v4, v6, :cond_8

    return v2

    :cond_8
    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    iget v4, p1, Lcom/android/tools/r8/internal/Ek;->d:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    move v3, v0

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    and-int/lit8 v4, v5, 0x4

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

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->e:I

    iget v3, p1, Lcom/android/tools/r8/internal/Ek;->e:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->f:I

    iget v3, p1, Lcom/android/tools/r8/internal/Ek;->f:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->j:I

    iget v3, p1, Lcom/android/tools/r8/internal/Ek;->j:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_18

    move v3, v0

    goto :goto_6

    :cond_18
    move v3, v2

    :goto_6
    iget v4, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_19

    move v4, v0

    goto :goto_7

    :cond_19
    move v4, v2

    :goto_7
    if-eq v3, v4, :cond_1a

    return v2

    :cond_1a
    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1b

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_1b
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_1c

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    :cond_1c
    move-object v1, v3

    :goto_8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1d

    check-cast v3, Ljava/lang/String;

    goto :goto_9

    :cond_1d
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_1e

    iput-object v4, p1, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    :cond_1e
    move-object v3, v4

    :goto_9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v3

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v1, :cond_21

    sget-object v1, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_21
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v3, :cond_22

    sget-object v3, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_22
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Jk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_24

    move v3, v0

    goto :goto_a

    :cond_24
    move v3, v2

    :goto_a
    iget v4, p1, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_25

    move v4, v0

    goto :goto_b

    :cond_25
    move v4, v2

    :goto_b
    if-eq v3, v4, :cond_26

    return v2

    :cond_26
    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Ek;->m:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/Ek;->m:Z

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

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

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

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
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->e:I

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_4
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->f:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v4

    invoke-static {v2, v4, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_8
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->j:I

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_c

    const/16 v2, 0x11

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_c
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

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/zl;->k:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->e:I

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->f:I

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->j:I

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_9
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    :cond_a
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Jk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_f

    const/16 v1, 0x11

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Ek;->m:Z

    sget-object v2, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_e

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_e
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    :cond_f
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/zl;->l:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Ek;

    const-class v2, Lcom/android/tools/r8/internal/Bk;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Ek;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Ek;->n:B

    return v2

    :cond_3
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Ek;->n:B

    return v1
.end method

.method public final j()Lcom/android/tools/r8/internal/Bk;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Bk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bk;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Bk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Bk;->a(Lcom/android/tools/r8/internal/Ek;)Lcom/android/tools/r8/internal/Bk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ek;->o:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->j()Lcom/android/tools/r8/internal/Bk;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Bk;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Bk;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->j()Lcom/android/tools/r8/internal/Bk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->j()Lcom/android/tools/r8/internal/Bk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->c:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->h:Ljava/io/Serializable;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/tools/r8/internal/Ek;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->g:Ljava/io/Serializable;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->i:Ljava/io/Serializable;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_7
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->j:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ek;->k:Ljava/io/Serializable;

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/Ek;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Ek;->m:Z

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
