.class public final Lcom/android/tools/r8/internal/Qk;
.super Lcom/android/tools/r8/internal/iz;
.source "SourceFile"


# static fields
.field public static final A:Lcom/android/tools/r8/internal/Nk;

.field public static final z:Lcom/android/tools/r8/internal/Qk;


# instance fields
.field public c:I

.field public volatile d:Ljava/io/Serializable;

.field public volatile e:Ljava/io/Serializable;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public volatile j:Ljava/io/Serializable;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public volatile q:Ljava/io/Serializable;

.field public volatile r:Ljava/io/Serializable;

.field public volatile s:Ljava/io/Serializable;

.field public volatile t:Ljava/io/Serializable;

.field public volatile u:Ljava/io/Serializable;

.field public volatile v:Ljava/io/Serializable;

.field public volatile w:Ljava/io/Serializable;

.field public x:Ljava/util/List;

.field public y:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Qk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    new-instance v0, Lcom/android/tools/r8/internal/Nk;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nk;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Qk;->A:Lcom/android/tools/r8/internal/Nk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/iz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Qk;->y:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/android/tools/r8/internal/Qk;->i:I

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    .line 9
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Qk;->p:Z

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    .line 15
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    .line 17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ok;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iz;-><init>(Lcom/android/tools/r8/internal/hz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Qk;->y:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ok;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Ok;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ok;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ok;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ok;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ok;->a(Lcom/android/tools/r8/internal/Qk;)Lcom/android/tools/r8/internal/Ok;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Qk;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Qk;

    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget v4, p1, Lcom/android/tools/r8/internal/Qk;->c:I

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
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    :cond_6
    move-object v1, v3

    :goto_2
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_7
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    :cond_8
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    move v3, v0

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    iget v4, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    move v4, v0

    goto :goto_5

    :cond_b
    move v4, v2

    :goto_5
    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_d

    check-cast v1, Ljava/lang/String;

    goto :goto_6

    :cond_d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    :cond_e
    move-object v1, v3

    :goto_6
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_f

    check-cast v3, Ljava/lang/String;

    goto :goto_7

    :cond_f
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    :cond_10
    move-object v3, v4

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_12

    move v4, v0

    goto :goto_8

    :cond_12
    move v4, v2

    :goto_8
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_13

    move v6, v0

    goto :goto_9

    :cond_13
    move v6, v2

    :goto_9
    if-eq v4, v6, :cond_14

    return v2

    :cond_14
    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->f:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->f:Z

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_16

    move v4, v0

    goto :goto_a

    :cond_16
    move v4, v2

    :goto_a
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_17

    move v6, v0

    goto :goto_b

    :cond_17
    move v6, v2

    :goto_b
    if-eq v4, v6, :cond_18

    return v2

    :cond_18
    if-eqz v3, :cond_19

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->g:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->g:Z

    if-eq v3, v4, :cond_19

    return v2

    :cond_19
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1a

    move v4, v0

    goto :goto_c

    :cond_1a
    move v4, v2

    :goto_c
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_1b

    move v6, v0

    goto :goto_d

    :cond_1b
    move v6, v2

    :goto_d
    if-eq v4, v6, :cond_1c

    return v2

    :cond_1c
    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->h:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->h:Z

    if-eq v3, v4, :cond_1d

    return v2

    :cond_1d
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_1e

    move v4, v0

    goto :goto_e

    :cond_1e
    move v4, v2

    :goto_e
    and-int/lit8 v6, v5, 0x20

    if-eqz v6, :cond_1f

    move v6, v0

    goto :goto_f

    :cond_1f
    move v6, v2

    :goto_f
    if-eq v4, v6, :cond_20

    return v2

    :cond_20
    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->i:I

    iget v4, p1, Lcom/android/tools/r8/internal/Qk;->i:I

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_22

    move v3, v0

    goto :goto_10

    :cond_22
    move v3, v2

    :goto_10
    and-int/lit8 v4, v5, 0x40

    if-eqz v4, :cond_23

    move v4, v0

    goto :goto_11

    :cond_23
    move v4, v2

    :goto_11
    if-eq v3, v4, :cond_24

    return v2

    :cond_24
    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_25

    check-cast v1, Ljava/lang/String;

    goto :goto_12

    :cond_25
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    :cond_26
    move-object v1, v3

    :goto_12
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_27

    check-cast v3, Ljava/lang/String;

    goto :goto_13

    :cond_27
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_28

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    :cond_28
    move-object v3, v4

    :goto_13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_2a

    move v4, v0

    goto :goto_14

    :cond_2a
    move v4, v2

    :goto_14
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_2b

    move v6, v0

    goto :goto_15

    :cond_2b
    move v6, v2

    :goto_15
    if-eq v4, v6, :cond_2c

    return v2

    :cond_2c
    if-eqz v3, :cond_2d

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->k:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->k:Z

    if-eq v3, v4, :cond_2d

    return v2

    :cond_2d
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_2e

    move v4, v0

    goto :goto_16

    :cond_2e
    move v4, v2

    :goto_16
    and-int/lit16 v6, v5, 0x100

    if-eqz v6, :cond_2f

    move v6, v0

    goto :goto_17

    :cond_2f
    move v6, v2

    :goto_17
    if-eq v4, v6, :cond_30

    return v2

    :cond_30
    if-eqz v3, :cond_31

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->l:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->l:Z

    if-eq v3, v4, :cond_31

    return v2

    :cond_31
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_32

    move v4, v0

    goto :goto_18

    :cond_32
    move v4, v2

    :goto_18
    and-int/lit16 v6, v5, 0x200

    if-eqz v6, :cond_33

    move v6, v0

    goto :goto_19

    :cond_33
    move v6, v2

    :goto_19
    if-eq v4, v6, :cond_34

    return v2

    :cond_34
    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->m:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->m:Z

    if-eq v3, v4, :cond_35

    return v2

    :cond_35
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_36

    move v4, v0

    goto :goto_1a

    :cond_36
    move v4, v2

    :goto_1a
    and-int/lit16 v6, v5, 0x400

    if-eqz v6, :cond_37

    move v6, v0

    goto :goto_1b

    :cond_37
    move v6, v2

    :goto_1b
    if-eq v4, v6, :cond_38

    return v2

    :cond_38
    if-eqz v3, :cond_39

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->n:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->n:Z

    if-eq v3, v4, :cond_39

    return v2

    :cond_39
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_3a

    move v4, v0

    goto :goto_1c

    :cond_3a
    move v4, v2

    :goto_1c
    and-int/lit16 v6, v5, 0x800

    if-eqz v6, :cond_3b

    move v6, v0

    goto :goto_1d

    :cond_3b
    move v6, v2

    :goto_1d
    if-eq v4, v6, :cond_3c

    return v2

    :cond_3c
    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->o:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->o:Z

    if-eq v3, v4, :cond_3d

    return v2

    :cond_3d
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_3e

    move v4, v0

    goto :goto_1e

    :cond_3e
    move v4, v2

    :goto_1e
    and-int/lit16 v6, v5, 0x1000

    if-eqz v6, :cond_3f

    move v6, v0

    goto :goto_1f

    :cond_3f
    move v6, v2

    :goto_1f
    if-eq v4, v6, :cond_40

    return v2

    :cond_40
    if-eqz v3, :cond_41

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->p:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/Qk;->p:Z

    if-eq v3, v4, :cond_41

    return v2

    :cond_41
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_42

    move v3, v0

    goto :goto_20

    :cond_42
    move v3, v2

    :goto_20
    and-int/lit16 v4, v5, 0x2000

    if-eqz v4, :cond_43

    move v4, v0

    goto :goto_21

    :cond_43
    move v4, v2

    :goto_21
    if-eq v3, v4, :cond_44

    return v2

    :cond_44
    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_45

    check-cast v1, Ljava/lang/String;

    goto :goto_22

    :cond_45
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_46

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    :cond_46
    move-object v1, v3

    :goto_22
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_47

    check-cast v3, Ljava/lang/String;

    goto :goto_23

    :cond_47
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_48

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    :cond_48
    move-object v3, v4

    :goto_23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_4a

    move v3, v0

    goto :goto_24

    :cond_4a
    move v3, v2

    :goto_24
    iget v4, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_4b

    move v4, v0

    goto :goto_25

    :cond_4b
    move v4, v2

    :goto_25
    if-eq v3, v4, :cond_4c

    return v2

    :cond_4c
    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4d

    check-cast v1, Ljava/lang/String;

    goto :goto_26

    :cond_4d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_4e

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    :cond_4e
    move-object v1, v3

    :goto_26
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4f

    check-cast v3, Ljava/lang/String;

    goto :goto_27

    :cond_4f
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_50

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    :cond_50
    move-object v3, v4

    :goto_27
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_52

    move v4, v0

    goto :goto_28

    :cond_52
    move v4, v2

    :goto_28
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_53

    move v3, v0

    goto :goto_29

    :cond_53
    move v3, v2

    :goto_29
    if-eq v4, v3, :cond_54

    return v2

    :cond_54
    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_55

    check-cast v1, Ljava/lang/String;

    goto :goto_2a

    :cond_55
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_56

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    :cond_56
    move-object v1, v3

    :goto_2a
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_57

    check-cast v3, Ljava/lang/String;

    goto :goto_2b

    :cond_57
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_58

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    :cond_58
    move-object v3, v4

    :goto_2b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_5a

    move v4, v0

    goto :goto_2c

    :cond_5a
    move v4, v2

    :goto_2c
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_5b

    move v3, v0

    goto :goto_2d

    :cond_5b
    move v3, v2

    :goto_2d
    if-eq v4, v3, :cond_5c

    return v2

    :cond_5c
    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5d

    check-cast v1, Ljava/lang/String;

    goto :goto_2e

    :cond_5d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_5e

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    :cond_5e
    move-object v1, v3

    :goto_2e
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5f

    check-cast v3, Ljava/lang/String;

    goto :goto_2f

    :cond_5f
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_60

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    :cond_60
    move-object v3, v4

    :goto_2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    return v2

    :cond_61
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_62

    move v4, v0

    goto :goto_30

    :cond_62
    move v4, v2

    :goto_30
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_63

    move v3, v0

    goto :goto_31

    :cond_63
    move v3, v2

    :goto_31
    if-eq v4, v3, :cond_64

    return v2

    :cond_64
    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_65

    check-cast v1, Ljava/lang/String;

    goto :goto_32

    :cond_65
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_66

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    :cond_66
    move-object v1, v3

    :goto_32
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_67

    check-cast v3, Ljava/lang/String;

    goto :goto_33

    :cond_67
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_68

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    :cond_68
    move-object v3, v4

    :goto_33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    :cond_69
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6a

    move v4, v0

    goto :goto_34

    :cond_6a
    move v4, v2

    :goto_34
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_6b

    move v3, v0

    goto :goto_35

    :cond_6b
    move v3, v2

    :goto_35
    if-eq v4, v3, :cond_6c

    return v2

    :cond_6c
    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6d

    check-cast v1, Ljava/lang/String;

    goto :goto_36

    :cond_6d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_6e

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    :cond_6e
    move-object v1, v3

    :goto_36
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6f

    check-cast v3, Ljava/lang/String;

    goto :goto_37

    :cond_6f
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_70

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    :cond_70
    move-object v3, v4

    :goto_37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    return v2

    :cond_71
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_72

    move v4, v0

    goto :goto_38

    :cond_72
    move v4, v2

    :goto_38
    iget v5, p1, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_73

    move v3, v0

    goto :goto_39

    :cond_73
    move v3, v2

    :goto_39
    if-eq v4, v3, :cond_74

    return v2

    :cond_74
    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_75

    check-cast v1, Ljava/lang/String;

    goto :goto_3a

    :cond_75
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_76

    iput-object v3, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    :cond_76
    move-object v1, v3

    :goto_3a
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_77

    check-cast v3, Ljava/lang/String;

    goto :goto_3b

    :cond_77
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v3

    if-eqz v3, :cond_78

    iput-object v4, p1, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    :cond_78
    move-object v3, v4

    :goto_3b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    return v2

    :cond_79
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    return v2

    :cond_7b
    iget-object v1, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    return v2

    :cond_7c
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->i:I

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v5

    invoke-static {v3, v5, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_3
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_4
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    const/16 v5, 0xb

    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x80

    const/16 v5, 0x10

    if-eqz v3, :cond_6

    invoke-static {v5, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_6
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_7

    const/16 v3, 0x11

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_7
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_8

    const/16 v3, 0x12

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_8
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/16 v3, 0x14

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_9
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_a

    const/16 v3, 0x17

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_a
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_b

    const/16 v3, 0x1b

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_b
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_c

    const/16 v3, 0x1f

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_c
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    const/16 v4, 0x24

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_d
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    const/16 v4, 0x25

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    const/16 v4, 0x27

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_f
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    const/16 v4, 0x28

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_10
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    const/16 v4, 0x29

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_11
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_12

    const/16 v3, 0x2a

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/lh0;->a(III)I

    move-result v0

    :cond_12
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    const/16 v3, 0x2c

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    const/16 v3, 0x2d

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_15
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
    sget-object v0, Lcom/android/tools/r8/internal/zl;->y:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    :cond_5
    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v2, v1, 0x4

    const/16 v5, 0x4d5

    const/16 v6, 0x4cf

    if-eqz v2, :cond_8

    const/16 v2, 0xa

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->f:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_2

    :cond_7
    move v2, v5

    :goto_2
    add-int/2addr v0, v2

    :cond_8
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_a

    const/16 v2, 0x14

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->g:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_9

    move v2, v6

    goto :goto_3

    :cond_9
    move v2, v5

    :goto_3
    add-int/2addr v0, v2

    :cond_a
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_c

    const/16 v2, 0x1b

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->h:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_b

    move v2, v6

    goto :goto_4

    :cond_b
    move v2, v5

    :goto_4
    add-int/2addr v0, v2

    :cond_c
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/Qk;->i:I

    add-int/2addr v0, v2

    :cond_d
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10

    const/16 v1, 0xb

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    :cond_e
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    :cond_f
    move-object v1, v2

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_12

    const/16 v2, 0x10

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->k:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_11

    move v2, v6

    goto :goto_6

    :cond_11
    move v2, v5

    :goto_6
    add-int/2addr v0, v2

    :cond_12
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_14

    const/16 v2, 0x11

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->l:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_13

    move v2, v6

    goto :goto_7

    :cond_13
    move v2, v5

    :goto_7
    add-int/2addr v0, v2

    :cond_14
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_16

    const/16 v2, 0x12

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->m:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_15

    move v2, v6

    goto :goto_8

    :cond_15
    move v2, v5

    :goto_8
    add-int/2addr v0, v2

    :cond_16
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_18

    const/16 v2, 0x2a

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->n:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_17

    move v2, v6

    goto :goto_9

    :cond_17
    move v2, v5

    :goto_9
    add-int/2addr v0, v2

    :cond_18
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_1a

    const/16 v2, 0x17

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->o:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_19

    move v2, v6

    goto :goto_a

    :cond_19
    move v2, v5

    :goto_a
    add-int/2addr v0, v2

    :cond_1a
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_1c

    const/16 v2, 0x1f

    invoke-static {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Qk;->p:Z

    sget-object v7, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_1b

    move v5, v6

    :cond_1b
    add-int/2addr v0, v5

    :cond_1c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1f

    const/16 v1, 0x24

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1d

    check-cast v1, Ljava/lang/String;

    goto :goto_b

    :cond_1d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    :cond_1e
    move-object v1, v2

    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_22

    invoke-static {v0, v4, v4, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_20

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    :cond_20
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    :cond_21
    move-object v1, v2

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    const/16 v1, 0x27

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_23

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_23
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    :cond_24
    move-object v1, v2

    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    const/16 v1, 0x28

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_26

    check-cast v1, Ljava/lang/String;

    goto :goto_e

    :cond_26
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    :cond_27
    move-object v1, v2

    :goto_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    const/16 v1, 0x29

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_29

    check-cast v1, Ljava/lang/String;

    goto :goto_f

    :cond_29
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_2a

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    :cond_2a
    move-object v1, v2

    :goto_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2b
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    const/16 v1, 0x2c

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2c

    check-cast v1, Ljava/lang/String;

    goto :goto_10

    :cond_2c
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_2d

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    :cond_2d
    move-object v1, v2

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget v1, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    const/16 v1, 0x2d

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2f

    check-cast v1, Ljava/lang/String;

    goto :goto_11

    :cond_2f
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    :cond_30
    move-object v1, v2

    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32

    const/16 v1, 0x3e7

    invoke-static {v0, v4, v1, v3}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
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

    sget-object v0, Lcom/android/tools/r8/internal/zl;->z:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Qk;

    const-class v2, Lcom/android/tools/r8/internal/Ok;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Qk;->y:B

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
    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yl;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Qk;->y:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/iz;->b:Lcom/android/tools/r8/internal/Kw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/Qk;->y:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Qk;->y:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Qk;->a()Lcom/android/tools/r8/internal/Ok;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ok;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ok;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Qk;->a()Lcom/android/tools/r8/internal/Ok;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Qk;->a()Lcom/android/tools/r8/internal/Ok;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 7

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
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->d:Ljava/io/Serializable;

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_2
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->e:Ljava/io/Serializable;

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_3
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/tools/r8/internal/Qk;->i:I

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_4
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->f:Z

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_5
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->j:Ljava/io/Serializable;

    const/16 v5, 0xb

    invoke-static {p1, v5, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_6
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x80

    const/16 v5, 0x10

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->k:Z

    invoke-virtual {p1, v5, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_7
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->l:Z

    const/16 v6, 0x11

    invoke-virtual {p1, v6, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_8
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->m:Z

    const/16 v6, 0x12

    invoke-virtual {p1, v6, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_9
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->g:Z

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_a
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->o:Z

    const/16 v4, 0x17

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_b
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->h:Z

    const/16 v4, 0x1b

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_c
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->p:Z

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_d
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->q:Ljava/io/Serializable;

    const/16 v4, 0x24

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_e
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->r:Ljava/io/Serializable;

    const/16 v4, 0x25

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_f
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->s:Ljava/io/Serializable;

    const/16 v4, 0x27

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_10
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->t:Ljava/io/Serializable;

    const/16 v4, 0x28

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_11
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->u:Ljava/io/Serializable;

    const/16 v4, 0x29

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_12
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Qk;->n:Z

    const/16 v4, 0x2a

    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/Ie;->a(IZ)V

    :cond_13
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->v:Ljava/io/Serializable;

    const/16 v4, 0x2c

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_14
    iget v3, p0, Lcom/android/tools/r8/internal/Qk;->c:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qk;->w:Ljava/io/Serializable;

    const/16 v4, 0x2d

    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_15
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    iget-object v4, p0, Lcom/android/tools/r8/internal/Qk;->x:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/kW;

    const/16 v5, 0x3e7

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_16
    :goto_3
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v3, v3, Lcom/android/tools/r8/internal/Ek;->d:I

    const/high16 v4, 0x20000000

    if-ge v3, v4, :cond_18

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;Lcom/android/tools/r8/internal/Ie;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_17
    move-object v0, v2

    goto :goto_3

    :cond_18
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
