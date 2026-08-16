.class public abstract Lcom/android/tools/r8/internal/u80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/P;


# static fields
.field public static final h:[B


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/function/Predicate;

.field public final d:Z

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sourceFile"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/u80;->h:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Predicate;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/u80;->a:I

    iput v0, p0, Lcom/android/tools/r8/internal/u80;->b:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/u80;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/u80;->f:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/tools/r8/internal/u80;->g:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/u80;->c:Ljava/util/function/Predicate;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/u80;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iput v1, v0, Lcom/android/tools/r8/internal/u80;->b:I

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->e()[B

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->b()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->d()I

    move-result v3

    iput v3, v0, Lcom/android/tools/r8/internal/u80;->a:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->c()I

    move-result v3

    iput v3, v0, Lcom/android/tools/r8/internal/u80;->b:I

    move-object v3, v4

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->c()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->d()I

    move-result v6

    sub-int/2addr v5, v6

    if-nez v3, :cond_5

    move v6, v1

    goto :goto_1

    :cond_5
    array-length v6, v3

    :goto_1
    add-int v7, v5, v6

    new-array v8, v7, [B

    if-eqz v3, :cond_6

    array-length v9, v3

    invoke-static {v3, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->d()I

    move-result v3

    invoke-static {v4, v3, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v7, v0, Lcom/android/tools/r8/internal/u80;->b:I

    move-object v3, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/u80;->b()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_3
    if-nez v3, :cond_7

    return-object v2

    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/internal/u80;->c:Ljava/util/function/Predicate;

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/u80;->b:I

    sub-int/2addr v4, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_8
    iget v2, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/u80;->b:I

    const/4 v5, 0x1

    move v6, v5

    :goto_4
    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/16 v10, 0x9

    if-eq v6, v10, :cond_30

    if-eq v6, v9, :cond_30

    if-ne v6, v7, :cond_9

    goto/16 :goto_1e

    :cond_9
    sget-boolean v11, Lcom/android/tools/r8/internal/r80;->a:Z

    if-nez v11, :cond_b

    if-eq v6, v10, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_b
    :goto_5
    invoke-static {v6}, Lcom/android/tools/r8/c;->b(I)I

    move-result v12

    if-eqz v12, :cond_2d

    const/16 v14, 0x23

    const/16 v15, 0x20

    const/4 v1, 0x3

    if-eq v12, v5, :cond_27

    const/4 v13, 0x4

    if-eq v12, v8, :cond_20

    const/16 v8, 0x3a

    if-eq v12, v1, :cond_1c

    if-eq v12, v13, :cond_17

    if-eq v12, v9, :cond_e

    if-nez v11, :cond_d

    if-eq v6, v10, :cond_d

    if-eq v6, v9, :cond_d

    if-ne v6, v7, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    :goto_6
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    const-string v2, "Should not compute next state on terminal state"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    if-ge v2, v4, :cond_1b

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    const/16 v6, 0x7b

    if-ne v2, v6, :cond_16

    :goto_8
    if-ge v1, v4, :cond_1a

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, v3, v1

    if-ne v6, v8, :cond_15

    add-int/lit8 v1, v1, 0x2

    aget-byte v2, v3, v2

    const/16 v6, 0x22

    const/16 v8, 0x27

    if-eq v2, v8, :cond_f

    if-ne v2, v6, :cond_1a

    :cond_f
    sub-int v2, v4, v1

    sget-object v9, Lcom/android/tools/r8/internal/u80;->h:[B

    array-length v11, v9

    if-ge v2, v11, :cond_10

    :goto_9
    goto :goto_f

    :cond_10
    array-length v2, v9

    add-int/2addr v2, v1

    const/4 v9, 0x0

    :goto_a
    if-ge v1, v2, :cond_12

    sget-object v11, Lcom/android/tools/r8/internal/u80;->h:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v11, v9

    aget-byte v11, v3, v1

    if-eq v9, v11, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v1, v1, 0x1

    move v9, v12

    goto :goto_a

    :cond_12
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-eq v1, v8, :cond_14

    if-ne v1, v6, :cond_13

    goto :goto_b

    :cond_13
    move v1, v2

    goto :goto_9

    :cond_14
    :goto_b
    move v6, v7

    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_15
    move v1, v2

    goto :goto_8

    :cond_16
    move v2, v1

    goto :goto_7

    :cond_17
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-ne v2, v8, :cond_1a

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_19

    aget-byte v1, v3, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_18

    aget-byte v1, v3, v2

    if-ne v1, v14, :cond_1b

    goto :goto_e

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    :goto_e
    move v6, v9

    goto :goto_c

    :cond_1a
    :goto_f
    move v2, v1

    :cond_1b
    move v6, v10

    goto :goto_c

    :cond_1c
    move v1, v2

    :goto_10
    if-ge v1, v4, :cond_1f

    aget-byte v6, v3, v1

    if-ne v6, v8, :cond_1d

    sub-int v13, v1, v2

    goto :goto_12

    :cond_1d
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_11

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    :goto_11
    const/4 v13, -0x1

    :goto_12
    if-lez v13, :cond_1a

    const/4 v6, 0x5

    move v2, v1

    goto :goto_c

    :cond_20
    add-int/lit8 v1, v2, 0x1

    aget-byte v6, v3, v2

    if-ne v6, v15, :cond_21

    move v6, v5

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_25

    add-int/lit8 v6, v2, 0x2

    aget-byte v1, v3, v1

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_22

    move v1, v5

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_26

    add-int/lit8 v1, v2, 0x3

    aget-byte v6, v3, v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_23

    move v6, v5

    goto :goto_15

    :cond_23
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_25

    add-int/lit8 v6, v2, 0x4

    aget-byte v1, v3, v1

    if-ne v1, v15, :cond_24

    move v1, v5

    goto :goto_16

    :cond_24
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_26

    move v1, v5

    move v2, v6

    goto :goto_17

    :cond_25
    move v6, v1

    :cond_26
    move v2, v6

    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_1b

    move v6, v13

    goto :goto_c

    :cond_27
    aget-byte v6, v3, v2

    if-ne v6, v14, :cond_28

    move v6, v5

    goto :goto_18

    :cond_28
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_29

    const/4 v6, 0x7

    goto/16 :goto_c

    :cond_29
    move v6, v2

    :goto_19
    if-ge v6, v4, :cond_2c

    aget-byte v7, v3, v6

    if-ne v7, v15, :cond_2a

    sub-int v13, v6, v2

    goto :goto_1b

    :cond_2a
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_1a

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2c
    :goto_1a
    const/4 v13, -0x1

    :goto_1b
    move v2, v6

    if-lez v13, :cond_1b

    move v6, v1

    goto/16 :goto_c

    :cond_2d
    :goto_1c
    if-ge v2, v4, :cond_2f

    aget-byte v1, v3, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_2e

    move v1, v5

    goto :goto_1d

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_1b

    move v6, v8

    goto/16 :goto_c

    :cond_30
    :goto_1e
    iput v6, v0, Lcom/android/tools/r8/internal/u80;->g:I

    if-ne v6, v9, :cond_32

    iput-boolean v5, v0, Lcom/android/tools/r8/internal/u80;->f:Z

    new-instance v1, Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/u80;->b:I

    sub-int/2addr v4, v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v8

    invoke-static {v1, v5, v2}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/u80;->c:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/u80;->e:Z

    if-nez v2, :cond_31

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/u80;->d:Z

    if-eqz v2, :cond_0

    :cond_31
    return-object v1

    :cond_32
    if-ne v6, v7, :cond_33

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/u80;->d:Z

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/u80;->b:I

    sub-int/2addr v4, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_33
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/u80;->e:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/u80;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/u80;->d:Z

    if-eqz v1, :cond_0

    :cond_34
    new-instance v1, Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/u80;->a:I

    iget v4, v0, Lcom/android/tools/r8/internal/u80;->b:I

    sub-int/2addr v4, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()[B
.end method
