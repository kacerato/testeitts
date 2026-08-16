.class public LLi/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/s0$b;,
        LLi/s0$c;
    }
.end annotation


# static fields
.field public static final B:[I


# instance fields
.field public final A:I

.field public a:Ljava/lang/String;

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public e:[B

.field public f:Z

.field public g:LLi/s0$c;

.field public h:[B

.field public final i:I

.field public final j:[B

.field public k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LLi/s0;->B:[I

    return-void

    :array_0
    .array-data 4
        -0x481eae9e
        -0x408ea780
        0x38b4da56
        0x324e7738
        -0x44ee7a15
        0x4f7c7b57
        -0x30405e38
        -0x3d4cd6c3
    .end array-data
.end method

.method public constructor <init>(LLi/s0$b;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LLi/s0$c;->Uninitialized:LLi/s0$c;

    iput-object v0, p0, LLi/s0;->g:LLi/s0$c;

    const/4 v0, 0x0

    iput v0, p0, LLi/s0;->k:I

    sget-object v0, LLi/s0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x100

    const/16 v4, 0x80

    if-eq p1, v1, :cond_3

    const/16 v5, 0xb

    const/16 v6, 0x180

    const/4 v7, 0x2

    if-eq p1, v7, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput v3, p0, LLi/s0;->l:I

    iput v3, p0, LLi/s0;->m:I

    const/16 p1, 0x8

    iput p1, p0, LLi/s0;->n:I

    const/16 p1, 0xc

    iput p1, p0, LLi/s0;->o:I

    const-string p1, "SCHWAEMM256-256"

    iput-object p1, p0, LLi/s0;->a:Ljava/lang/String;

    const/16 p1, 0x200

    move v6, p1

    :goto_0
    move v4, v3

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v3, 0xc0

    iput v3, p0, LLi/s0;->l:I

    iput v3, p0, LLi/s0;->m:I

    iput v0, p0, LLi/s0;->n:I

    iput v5, p0, LLi/s0;->o:I

    const-string p1, "SCHWAEMM192-192"

    iput-object p1, p0, LLi/s0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput v4, p0, LLi/s0;->l:I

    iput v3, p0, LLi/s0;->m:I

    iput v0, p0, LLi/s0;->n:I

    iput v5, p0, LLi/s0;->o:I

    const-string p1, "SCHWAEMM256-128"

    iput-object p1, p0, LLi/s0;->a:Ljava/lang/String;

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_3
    iput v4, p0, LLi/s0;->l:I

    iput v4, p0, LLi/s0;->m:I

    iput v0, p0, LLi/s0;->n:I

    const/16 p1, 0xa

    iput p1, p0, LLi/s0;->o:I

    const-string p1, "SCHWAEMM128-128"

    iput-object p1, p0, LLi/s0;->a:Ljava/lang/String;

    move v6, v3

    goto :goto_1

    :goto_2
    iget p1, p0, LLi/s0;->l:I

    ushr-int/lit8 v0, p1, 0x5

    iput v0, p0, LLi/s0;->p:I

    ushr-int/2addr p1, v2

    iput p1, p0, LLi/s0;->q:I

    ushr-int/lit8 p1, v3, 0x5

    iput p1, p0, LLi/s0;->r:I

    ushr-int/lit8 p1, v3, 0x3

    iput p1, p0, LLi/s0;->s:I

    ushr-int/lit8 v3, v6, 0x5

    iput v3, p0, LLi/s0;->t:I

    iget v5, p0, LLi/s0;->m:I

    ushr-int/lit8 v6, v5, 0x5

    iput v6, p0, LLi/s0;->u:I

    ushr-int/2addr v5, v2

    iput v5, p0, LLi/s0;->v:I

    ushr-int/lit8 v7, v4, 0x6

    ushr-int/lit8 v4, v4, 0x5

    if-le v6, v4, :cond_4

    sub-int/2addr v4, v1

    goto :goto_3

    :cond_4
    const/4 v4, -0x1

    :goto_3
    iput v4, p0, LLi/s0;->w:I

    shl-int/2addr v1, v7

    shl-int/lit8 v4, v1, 0x18

    iput v4, p0, LLi/s0;->x:I

    xor-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, LLi/s0;->y:I

    xor-int/lit8 v4, v1, 0x2

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, LLi/s0;->z:I

    xor-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x18

    iput v1, p0, LLi/s0;->A:I

    new-array v1, v3, [I

    iput-object v1, p0, LLi/s0;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, LLi/s0;->c:[I

    new-array v0, v6, [I

    iput-object v0, p0, LLi/s0;->d:[I

    add-int/2addr v5, p1

    iput v5, p0, LLi/s0;->i:I

    new-array p1, v5, [B

    iput-object p1, p0, LLi/s0;->j:[B

    return-void
.end method

.method public static A([II)V
    .locals 41

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    const/16 v24, 0xc

    aget v25, p0, v24

    const/16 v26, 0xd

    aget v27, p0, v26

    const/16 v28, 0xe

    aget v29, p0, v28

    const/16 v30, 0xf

    aget v31, p0, v30

    move/from16 v10, p1

    move v8, v0

    move/from16 v14, v19

    move/from16 v12, v23

    move/from16 v32, v27

    move/from16 v33, v31

    :goto_0
    if-ge v8, v10, :cond_0

    sget-object v34, LLi/s0;->B:[I

    and-int/lit8 v35, v8, 0x7

    aget v35, v34, v35

    xor-int v3, v3, v35

    xor-int/2addr v7, v8

    aget v35, v34, v0

    const/16 v0, 0x1f

    invoke-static {v3, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v36

    add-int v1, v1, v36

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v37

    xor-int v3, v3, v37

    xor-int v1, v1, v35

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    add-int v1, v1, v38

    invoke-static {v1, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    xor-int v3, v3, v38

    xor-int v1, v1, v35

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    xor-int v3, v3, v38

    xor-int v1, v1, v35

    invoke-static {v3, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    add-int v1, v1, v38

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v39

    xor-int v3, v3, v39

    xor-int v1, v1, v35

    aget v35, v34, v2

    invoke-static {v7, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v39

    add-int v5, v5, v39

    invoke-static {v5, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v39

    xor-int v7, v7, v39

    xor-int v5, v5, v35

    const/16 v2, 0x11

    invoke-static {v7, v2}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    add-int v5, v5, v38

    invoke-static {v5, v2}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v40

    xor-int v2, v7, v40

    xor-int v5, v5, v35

    add-int/2addr v5, v2

    invoke-static {v5, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v35

    invoke-static {v2, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v5, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v35

    const/4 v7, 0x2

    aget v35, v34, v7

    invoke-static {v11, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    add-int/2addr v9, v7

    invoke-static {v9, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v7, v11

    xor-int v9, v9, v35

    const/16 v11, 0x11

    invoke-static {v7, v11}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    add-int v9, v9, v38

    invoke-static {v9, v11}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v40

    xor-int v7, v7, v40

    xor-int v9, v9, v35

    add-int/2addr v9, v7

    invoke-static {v9, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v7, v11

    xor-int v9, v9, v35

    invoke-static {v7, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    add-int/2addr v9, v11

    invoke-static {v9, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v7, v11

    xor-int v9, v9, v35

    const/4 v11, 0x3

    aget v35, v34, v11

    invoke-static {v15, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    add-int/2addr v13, v11

    invoke-static {v13, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v11, v15

    xor-int v13, v13, v35

    const/16 v15, 0x11

    invoke-static {v11, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v38

    add-int v13, v13, v38

    invoke-static {v13, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v40

    xor-int v11, v11, v40

    xor-int v13, v13, v35

    add-int/2addr v13, v11

    invoke-static {v13, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v11, v15

    xor-int v13, v13, v35

    invoke-static {v11, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int/2addr v13, v15

    invoke-static {v13, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v11, v15

    xor-int v13, v13, v35

    const/4 v15, 0x4

    aget v35, v34, v15

    invoke-static {v14, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int v15, v17, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v14, v14, v17

    xor-int v15, v15, v35

    const/16 v4, 0x11

    invoke-static {v14, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    add-int v15, v15, v17

    invoke-static {v15, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v4, v14, v17

    xor-int v14, v15, v35

    add-int/2addr v14, v4

    invoke-static {v14, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v4, v15

    xor-int v14, v14, v35

    invoke-static {v4, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int/2addr v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v4, v4, v17

    xor-int v14, v14, v35

    const/4 v15, 0x5

    aget v17, v34, v15

    invoke-static {v12, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int v15, v21, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v12, v12, v21

    xor-int v15, v15, v17

    const/16 v6, 0x11

    invoke-static {v12, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v15, v15, v21

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v6, v12, v21

    xor-int v12, v15, v17

    add-int/2addr v12, v6

    invoke-static {v12, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int v12, v12, v17

    const/16 v15, 0x18

    invoke-static {v6, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v12, v12, v21

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v6, v6, v21

    xor-int v12, v12, v17

    const/4 v15, 0x6

    aget v17, v34, v15

    move/from16 v15, v32

    invoke-static {v15, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v0, v25, v21

    const/16 v10, 0x18

    invoke-static {v0, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v10, v15, v21

    xor-int v0, v0, v17

    const/16 v15, 0x11

    invoke-static {v10, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v0, v0, v21

    invoke-static {v0, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    add-int/2addr v0, v10

    const/16 v15, 0x1f

    invoke-static {v0, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v0, v0, v21

    const/16 v15, 0x10

    invoke-static {v0, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v10, v10, v21

    xor-int v0, v0, v17

    const/4 v15, 0x7

    aget v17, v34, v15

    move/from16 v32, v8

    move/from16 v15, v33

    const/16 v8, 0x1f

    invoke-static {v15, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v8, v29, v21

    move/from16 v21, v10

    const/16 v10, 0x18

    invoke-static {v8, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v29

    xor-int v10, v15, v29

    xor-int v8, v8, v17

    const/16 v15, 0x11

    invoke-static {v10, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v29

    add-int v8, v8, v29

    invoke-static {v8, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int v8, v8, v17

    add-int/2addr v8, v10

    const/16 v15, 0x1f

    invoke-static {v8, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int v8, v8, v17

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int/2addr v8, v15

    const/16 v15, 0x10

    invoke-static {v8, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int v8, v8, v17

    xor-int v15, v1, v5

    xor-int/2addr v15, v9

    xor-int/2addr v15, v13

    invoke-static {v15}, LLi/s0;->l(I)I

    move-result v15

    xor-int v17, v3, v2

    xor-int v17, v17, v7

    xor-int v17, v17, v11

    invoke-static/range {v17 .. v17}, LLi/s0;->l(I)I

    move-result v17

    xor-int/2addr v14, v1

    xor-int/2addr v4, v3

    xor-int/2addr v12, v5

    xor-int/2addr v6, v2

    xor-int/2addr v0, v9

    xor-int v21, v7, v21

    xor-int/2addr v8, v13

    xor-int/2addr v10, v11

    xor-int v12, v12, v17

    xor-int/2addr v6, v15

    xor-int v0, v0, v17

    xor-int v21, v21, v15

    xor-int v8, v8, v17

    xor-int/2addr v10, v15

    xor-int v14, v14, v17

    xor-int/2addr v15, v4

    add-int/lit8 v4, v32, 0x1

    move/from16 v17, v1

    move/from16 v32, v7

    move/from16 v25, v9

    move/from16 v33, v11

    move v1, v12

    move/from16 v29, v13

    move v13, v14

    move/from16 v7, v21

    move v12, v2

    move v14, v3

    move/from16 v21, v5

    move v3, v6

    move v9, v8

    move v11, v10

    const/4 v2, 0x1

    const/4 v6, 0x3

    move/from16 v10, p1

    move v5, v0

    move v8, v4

    const/4 v0, 0x0

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_0
    move/from16 v2, v32

    move/from16 v4, v33

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v3, p0, v0

    const/4 v0, 0x2

    aput v5, p0, v0

    const/4 v0, 0x3

    aput v7, p0, v0

    const/4 v0, 0x4

    aput v9, p0, v0

    const/4 v0, 0x5

    aput v11, p0, v0

    const/4 v0, 0x6

    aput v13, p0, v0

    const/4 v0, 0x7

    aput v15, p0, v0

    aput v17, p0, v16

    aput v14, p0, v18

    aput v21, p0, v20

    aput v12, p0, v22

    aput v25, p0, v24

    aput v2, p0, v26

    aput v29, p0, v28

    aput v4, p0, v30

    return-void
.end method

.method public static B([II)V
    .locals 22

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    move/from16 v14, p1

    move v12, v0

    :goto_0
    if-ge v12, v14, :cond_0

    sget-object v16, LLi/s0;->B:[I

    and-int/lit8 v17, v12, 0x7

    aget v17, v16, v17

    xor-int v3, v3, v17

    xor-int/2addr v7, v12

    aget v17, v16, v0

    const/16 v10, 0x1f

    invoke-static {v3, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v18

    add-int v1, v1, v18

    const/16 v8, 0x18

    invoke-static {v1, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v19

    xor-int v3, v3, v19

    xor-int v1, v1, v17

    const/16 v0, 0x11

    invoke-static {v3, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v20

    add-int v1, v1, v20

    invoke-static {v1, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v1, v1, v17

    add-int/2addr v1, v3

    invoke-static {v1, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v1, v1, v17

    invoke-static {v3, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v20

    add-int v1, v1, v20

    const/16 v6, 0x10

    invoke-static {v1, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v3, v3, v21

    xor-int v1, v1, v17

    aget v17, v16, v2

    invoke-static {v7, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v5, v5, v21

    invoke-static {v5, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    invoke-static {v7, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v5, v5, v21

    invoke-static {v5, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    add-int/2addr v5, v7

    invoke-static {v5, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    invoke-static {v7, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v5, v5, v21

    invoke-static {v5, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v7, v7, v21

    xor-int v5, v5, v17

    aget v17, v16, v4

    invoke-static {v11, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v9, v9, v21

    invoke-static {v9, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v9, v9, v21

    invoke-static {v9, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    add-int/2addr v9, v11

    invoke-static {v9, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    invoke-static {v11, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v9, v9, v21

    invoke-static {v9, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v11, v11, v21

    xor-int v9, v9, v17

    const/16 v17, 0x3

    aget v16, v16, v17

    invoke-static {v15, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    add-int v13, v13, v17

    invoke-static {v13, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v15, v15, v17

    xor-int v13, v13, v16

    invoke-static {v15, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    add-int v13, v13, v17

    invoke-static {v13, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    xor-int/2addr v0, v15

    xor-int v13, v13, v16

    add-int/2addr v13, v0

    invoke-static {v13, v10}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v10

    xor-int/2addr v0, v10

    xor-int v10, v13, v16

    invoke-static {v0, v8}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v8

    add-int/2addr v10, v8

    invoke-static {v10, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v6

    xor-int/2addr v0, v6

    xor-int v6, v10, v16

    xor-int v8, v1, v5

    invoke-static {v8}, LLi/s0;->l(I)I

    move-result v8

    xor-int v10, v3, v7

    invoke-static {v10}, LLi/s0;->l(I)I

    move-result v10

    xor-int/2addr v9, v1

    xor-int/2addr v11, v3

    xor-int/2addr v6, v5

    xor-int/2addr v0, v7

    xor-int/2addr v6, v10

    xor-int/2addr v0, v8

    xor-int/2addr v9, v10

    xor-int/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    move v11, v3

    move v13, v5

    move v15, v7

    move v7, v8

    move v5, v9

    const/4 v8, 0x4

    const/4 v10, 0x5

    move v3, v0

    move v9, v1

    move v1, v6

    const/4 v0, 0x0

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_0
    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    const/4 v0, 0x3

    aput v7, p0, v0

    const/4 v0, 0x4

    aput v9, p0, v0

    const/4 v0, 0x5

    aput v11, p0, v0

    const/4 v0, 0x6

    aput v13, p0, v0

    const/4 v0, 0x7

    aput v15, p0, v0

    return-void
.end method

.method public static l(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private m()V
    .locals 3

    sget-object v0, LLi/s0$a;->b:[I

    iget-object v1, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, LLi/s0$c;->EncAad:LLi/s0$c;

    :goto_0
    iput-object v0, p0, LLi/s0;->g:LLi/s0$c;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, LLi/s0$c;->DecAad:LLi/s0$c;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private n()Z
    .locals 3

    sget-object v0, LLi/s0$a;->b:[I

    iget-object v1, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, LLi/s0$c;->EncData:LLi/s0$c;

    invoke-virtual {p0, v0}, LLi/s0;->o(LLi/s0$c;)V

    return v2

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    return v2

    :pswitch_4
    return v1

    :pswitch_5
    sget-object v0, LLi/s0$c;->DecData:LLi/s0$c;

    invoke-virtual {p0, v0}, LLi/s0;->o(LLi/s0$c;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private r([BI)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LLi/s0;->u:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, LLi/s0;->b:[I

    aget v3, v2, v0

    aget v2, v2, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v5

    iget-object v6, p0, LLi/s0;->b:[I

    xor-int/2addr v4, v2

    iget v7, p0, LLi/s0;->u:I

    add-int v8, v7, v0

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v0

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    iget v3, p0, LLi/s0;->w:I

    and-int/2addr v3, v1

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v2, v3

    aput v2, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LLi/s0;->b:[I

    iget p2, p0, LLi/s0;->n:I

    invoke-static {p1, p2}, LLi/s0;->w([II)V

    return-void
.end method

.method private s([BI[BI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    array-length v4, v2

    iget v5, v0, LLi/s0;->v:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, LLi/s0;->u:I

    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, v0, LLi/s0;->b:[I

    aget v7, v6, v4

    aget v6, v6, v5

    mul-int/lit8 v8, v4, 0x4

    add-int v9, p2, v8

    invoke-static {v1, v9}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v9

    mul-int/lit8 v10, v5, 0x4

    add-int v11, p2, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v11

    iget-object v12, v0, LLi/s0;->b:[I

    xor-int v13, v7, v6

    xor-int/2addr v13, v9

    iget v14, v0, LLi/s0;->u:I

    add-int v15, v14, v4

    aget v15, v12, v15

    xor-int/2addr v13, v15

    aput v13, v12, v4

    xor-int v13, v7, v11

    iget v15, v0, LLi/s0;->w:I

    and-int/2addr v15, v5

    add-int/2addr v14, v15

    aget v14, v12, v14

    xor-int/2addr v13, v14

    aput v13, v12, v5

    xor-int v5, v9, v7

    add-int v7, v3, v8

    invoke-static {v5, v2, v7}, Lorg/bouncycastle/util/p;->m(I[BI)V

    xor-int v5, v11, v6

    add-int v6, v3, v10

    invoke-static {v5, v2, v6}, Lorg/bouncycastle/util/p;->m(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, LLi/s0;->b:[I

    iget v2, v0, LLi/s0;->n:I

    invoke-static {v1, v2}, LLi/s0;->w([II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LLi/s0;->f:Z

    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private t([BI[BI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    array-length v4, v2

    iget v5, v0, LLi/s0;->v:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, LLi/s0;->u:I

    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, v0, LLi/s0;->b:[I

    aget v7, v6, v4

    aget v6, v6, v5

    mul-int/lit8 v8, v4, 0x4

    add-int v9, p2, v8

    invoke-static {v1, v9}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v9

    mul-int/lit8 v10, v5, 0x4

    add-int v11, p2, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v11

    iget-object v12, v0, LLi/s0;->b:[I

    xor-int v13, v6, v9

    iget v14, v0, LLi/s0;->u:I

    add-int v15, v14, v4

    aget v15, v12, v15

    xor-int/2addr v13, v15

    aput v13, v12, v4

    xor-int v13, v7, v6

    xor-int/2addr v13, v11

    iget v15, v0, LLi/s0;->w:I

    and-int/2addr v15, v5

    add-int/2addr v14, v15

    aget v14, v12, v14

    xor-int/2addr v13, v14

    aput v13, v12, v5

    xor-int v5, v9, v7

    add-int v7, v3, v8

    invoke-static {v5, v2, v7}, Lorg/bouncycastle/util/p;->m(I[BI)V

    xor-int v5, v11, v6

    add-int v6, v3, v10

    invoke-static {v5, v2, v6}, Lorg/bouncycastle/util/p;->m(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, LLi/s0;->b:[I

    iget v2, v0, LLi/s0;->n:I

    invoke-static {v1, v2}, LLi/s0;->w([II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LLi/s0;->f:Z

    return-void

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private v(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LLi/s0;->e:[B

    :cond_0
    iget-object p1, p0, LLi/s0;->j:[B

    invoke-static {p1}, Lorg/bouncycastle/util/a;->n([B)V

    const/4 p1, 0x0

    iput p1, p0, LLi/s0;->k:I

    iput-boolean p1, p0, LLi/s0;->f:Z

    sget-object v0, LLi/s0$a;->b:[I

    iget-object v1, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, LLi/s0$c;->EncFinal:LLi/s0$c;

    iput-object p1, p0, LLi/s0;->g:LLi/s0$c;

    return-void

    :pswitch_1
    sget-object v0, LLi/s0$c;->DecInit:LLi/s0$c;

    iput-object v0, p0, LLi/s0;->g:LLi/s0$c;

    :pswitch_2
    iget-object v0, p0, LLi/s0;->d:[I

    iget-object v1, p0, LLi/s0;->b:[I

    iget v2, p0, LLi/s0;->u:I

    invoke-static {v0, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LLi/s0;->c:[I

    iget-object v1, p0, LLi/s0;->b:[I

    iget v2, p0, LLi/s0;->u:I

    iget v3, p0, LLi/s0;->p:I

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LLi/s0;->b:[I

    iget v1, p0, LLi/s0;->o:I

    invoke-static {v0, v1}, LLi/s0;->w([II)V

    iget-object v0, p0, LLi/s0;->h:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, LLi/s0;->j([BII)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static w([II)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, LLi/s0;->A([II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, LLi/s0;->y([II)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, LLi/s0;->B([II)V

    :goto_0
    return-void
.end method

.method public static x(LIi/W$b;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, LLi/s0;->y([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y([II)V
    .locals 31

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    move/from16 v10, p1

    move v8, v0

    move/from16 v14, v19

    move/from16 v12, v23

    :goto_0
    if-ge v8, v10, :cond_0

    sget-object v24, LLi/s0;->B:[I

    and-int/lit8 v25, v8, 0x7

    aget v25, v24, v25

    xor-int v3, v3, v25

    xor-int/2addr v7, v8

    aget v25, v24, v0

    const/16 v0, 0x1f

    invoke-static {v3, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v26

    add-int v1, v1, v26

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v27

    xor-int v3, v3, v27

    xor-int v1, v1, v25

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    add-int v1, v1, v28

    invoke-static {v1, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    xor-int v3, v3, v28

    xor-int v1, v1, v25

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    xor-int v3, v3, v28

    xor-int v1, v1, v25

    invoke-static {v3, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    add-int v1, v1, v28

    const/16 v4, 0x10

    invoke-static {v1, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v29

    xor-int v3, v3, v29

    xor-int v1, v1, v25

    aget v25, v24, v2

    invoke-static {v7, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v29

    add-int v5, v5, v29

    invoke-static {v5, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v29

    xor-int v7, v7, v29

    xor-int v5, v5, v25

    const/16 v2, 0x11

    invoke-static {v7, v2}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    add-int v5, v5, v28

    invoke-static {v5, v2}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v30

    xor-int v2, v7, v30

    xor-int v5, v5, v25

    add-int/2addr v5, v2

    invoke-static {v5, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v25

    invoke-static {v2, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v5, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v2, v7

    xor-int v5, v5, v25

    const/4 v7, 0x2

    aget v25, v24, v7

    invoke-static {v11, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    add-int/2addr v9, v7

    invoke-static {v9, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v7

    xor-int/2addr v7, v11

    xor-int v9, v9, v25

    const/16 v11, 0x11

    invoke-static {v7, v11}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    add-int v9, v9, v28

    invoke-static {v9, v11}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v30

    xor-int v7, v7, v30

    xor-int v9, v9, v25

    add-int/2addr v9, v7

    invoke-static {v9, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v7, v11

    xor-int v9, v9, v25

    invoke-static {v7, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    add-int/2addr v9, v11

    invoke-static {v9, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v7, v11

    xor-int v9, v9, v25

    const/4 v11, 0x3

    aget v25, v24, v11

    invoke-static {v15, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    add-int/2addr v13, v11

    invoke-static {v13, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v11

    xor-int/2addr v11, v15

    xor-int v13, v13, v25

    const/16 v15, 0x11

    invoke-static {v11, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v28

    add-int v13, v13, v28

    invoke-static {v13, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v30

    xor-int v11, v11, v30

    xor-int v13, v13, v25

    add-int/2addr v13, v11

    invoke-static {v13, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v11, v15

    xor-int v13, v13, v25

    invoke-static {v11, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int/2addr v13, v15

    invoke-static {v13, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v11, v15

    xor-int v13, v13, v25

    const/4 v15, 0x4

    aget v25, v24, v15

    invoke-static {v14, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int v15, v17, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v14, v14, v17

    xor-int v15, v15, v25

    const/16 v4, 0x11

    invoke-static {v14, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    add-int v15, v15, v17

    invoke-static {v15, v4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v4, v14, v17

    xor-int v14, v15, v25

    add-int/2addr v14, v4

    invoke-static {v14, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    xor-int/2addr v4, v15

    xor-int v14, v14, v25

    invoke-static {v4, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int/2addr v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v17

    xor-int v4, v4, v17

    xor-int v14, v14, v25

    const/4 v15, 0x5

    aget v17, v24, v15

    invoke-static {v12, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v15

    add-int v15, v21, v15

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    xor-int v12, v12, v21

    xor-int v15, v15, v17

    const/16 v6, 0x11

    invoke-static {v12, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v21

    add-int v15, v15, v21

    invoke-static {v15, v6}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v6

    xor-int/2addr v6, v12

    xor-int v12, v15, v17

    add-int/2addr v12, v6

    invoke-static {v12, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    xor-int/2addr v0, v6

    xor-int v6, v12, v17

    const/16 v12, 0x18

    invoke-static {v0, v12}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v12

    add-int/2addr v6, v12

    const/16 v12, 0x10

    invoke-static {v6, v12}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v12

    xor-int/2addr v0, v12

    xor-int v6, v6, v17

    xor-int v12, v1, v5

    xor-int/2addr v12, v9

    invoke-static {v12}, LLi/s0;->l(I)I

    move-result v12

    xor-int v15, v3, v2

    xor-int/2addr v15, v7

    invoke-static {v15}, LLi/s0;->l(I)I

    move-result v15

    xor-int/2addr v13, v1

    xor-int/2addr v11, v3

    xor-int/2addr v14, v5

    xor-int/2addr v4, v2

    xor-int/2addr v6, v9

    xor-int/2addr v0, v7

    xor-int/2addr v14, v15

    xor-int/2addr v4, v12

    xor-int/2addr v6, v15

    xor-int/2addr v0, v12

    xor-int/2addr v13, v15

    xor-int/2addr v11, v12

    add-int/lit8 v8, v8, 0x1

    move v15, v3

    move v3, v4

    move/from16 v17, v5

    move v5, v6

    move v12, v7

    move/from16 v21, v9

    move v9, v13

    const/4 v4, 0x2

    const/4 v6, 0x3

    move v7, v0

    move v13, v1

    move v1, v14

    const/4 v0, 0x0

    move v14, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_0
    aput v1, p0, v0

    const/4 v0, 0x1

    aput v3, p0, v0

    const/4 v0, 0x2

    aput v5, p0, v0

    const/4 v0, 0x3

    aput v7, p0, v0

    const/4 v0, 0x4

    aput v9, p0, v0

    const/4 v0, 0x5

    aput v11, p0, v0

    const/4 v0, 0x6

    aput v13, p0, v0

    const/4 v0, 0x7

    aput v15, p0, v0

    aput v17, p0, v16

    aput v14, p0, v18

    aput v21, p0, v20

    aput v12, p0, v22

    return-void
.end method

.method public static z(LIi/W$b;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, LLi/s0;->A([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, LXi/a;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, LXi/a;

    invoke-virtual {v0}, LXi/a;->b()LXi/o0;

    move-result-object v1

    invoke-virtual {v0}, LXi/a;->d()[B

    move-result-object v2

    invoke-virtual {v0}, LXi/a;->a()[B

    move-result-object v3

    iput-object v3, p0, LLi/s0;->h:[B

    invoke-virtual {v0}, LXi/a;->c()I

    move-result v0

    iget v3, p0, LLi/s0;->s:I

    mul-int/lit8 v3, v3, 0x8

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for MAC size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v1

    instance-of v2, v1, LXi/o0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, LXi/o0;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v2

    iput-object v3, p0, LLi/s0;->h:[B

    :goto_1
    if-eqz v1, :cond_6

    iget v0, p0, LLi/s0;->p:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1}, LXi/o0;->c()I

    move-result v3

    const-string v4, " requires exactly "

    if-ne v0, v3, :cond_5

    iget v0, p0, LLi/s0;->u:I

    mul-int/lit8 v0, v0, 0x4

    if-eqz v2, :cond_4

    array-length v3, v2

    if-ne v0, v3, :cond_4

    invoke-virtual {v1}, LXi/o0;->b()[B

    move-result-object v0

    iget-object v1, p0, LLi/s0;->c:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget-object v0, p0, LLi/s0;->d:[I

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/s0;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    if-eqz p1, :cond_3

    sget-object p1, LLi/s0$c;->EncInit:LLi/s0$c;

    goto :goto_2

    :cond_3
    sget-object p1, LLi/s0$c;->DecInit:LLi/s0$c;

    :goto_2
    iput-object p1, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {p0}, LLi/s0;->reset()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LLi/s0;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LLi/s0;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sparkle init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to Sparkle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLi/s0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-direct {p0}, LLi/s0;->n()Z

    move-result v0

    iget v1, p0, LLi/s0;->k:I

    iget v2, p0, LLi/s0;->s:I

    if-eqz v0, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_e

    sub-int/2addr v1, v2

    iput v1, p0, LLi/s0;->k:I

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    if-gt p2, v2, :cond_d

    iget-boolean v2, p0, LLi/s0;->f:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v2, p0, LLi/s0;->k:I

    if-lez v2, :cond_9

    :cond_1
    iget-object v2, p0, LLi/s0;->b:[I

    iget v4, p0, LLi/s0;->t:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v2, v4

    iget v6, p0, LLi/s0;->k:I

    iget v7, p0, LLi/s0;->v:I

    if-ge v6, v7, :cond_2

    iget v6, p0, LLi/s0;->z:I

    goto :goto_1

    :cond_2
    iget v6, p0, LLi/s0;->A:I

    :goto_1
    xor-int/2addr v5, v6

    aput v5, v2, v4

    iget v2, p0, LLi/s0;->u:I

    new-array v2, v2, [I

    move v4, v3

    :goto_2
    iget v5, p0, LLi/s0;->k:I

    if-ge v4, v5, :cond_3

    ushr-int/lit8 v5, v4, 0x2

    aget v6, v2, v5

    iget-object v7, p0, LLi/s0;->j:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v4, 0x3

    shl-int/lit8 v8, v8, 0x3

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget v4, p0, LLi/s0;->v:I

    if-ge v5, v4, :cond_5

    if-nez v0, :cond_4

    and-int/lit8 v4, v5, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/lit8 v6, v5, 0x2

    aget v7, v2, v6

    iget-object v8, p0, LLi/s0;->b:[I

    ushr-int/lit8 v9, v5, 0x2

    aget v9, v8, v9

    ushr-int/2addr v9, v4

    shl-int v4, v9, v4

    or-int/2addr v4, v7

    aput v4, v2, v6

    ushr-int/lit8 v4, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, LLi/s0;->u:I

    sub-int/2addr v5, v4

    invoke-static {v8, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v4, p0, LLi/s0;->k:I

    ushr-int/lit8 v5, v4, 0x2

    aget v6, v2, v5

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    const/16 v7, 0x80

    shl-int v4, v7, v4

    xor-int/2addr v4, v6

    aput v4, v2, v5

    :cond_5
    move v4, v3

    :goto_3
    iget v5, p0, LLi/s0;->u:I

    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_7

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v4

    iget-object v7, p0, LLi/s0;->b:[I

    aget v8, v7, v4

    aget v9, v7, v6

    if-eqz v0, :cond_6

    aget v10, v2, v4

    xor-int/2addr v10, v9

    add-int v11, v5, v4

    aget v11, v7, v11

    xor-int/2addr v10, v11

    aput v10, v7, v4

    xor-int v10, v8, v9

    aget v11, v2, v6

    xor-int/2addr v10, v11

    iget v11, p0, LLi/s0;->w:I

    and-int/2addr v11, v6

    add-int/2addr v5, v11

    aget v5, v7, v5

    xor-int/2addr v5, v10

    aput v5, v7, v6

    goto :goto_4

    :cond_6
    xor-int v10, v8, v9

    aget v11, v2, v4

    xor-int/2addr v10, v11

    add-int v11, v5, v4

    aget v11, v7, v11

    xor-int/2addr v10, v11

    aput v10, v7, v4

    aget v10, v2, v6

    xor-int/2addr v10, v8

    iget v11, p0, LLi/s0;->w:I

    and-int/2addr v11, v6

    add-int/2addr v5, v11

    aget v5, v7, v5

    xor-int/2addr v5, v10

    aput v5, v7, v6

    :goto_4
    aget v5, v2, v4

    xor-int/2addr v5, v8

    aput v5, v2, v4

    aget v5, v2, v6

    xor-int/2addr v5, v9

    aput v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_5
    iget v5, p0, LLi/s0;->k:I

    if-ge v4, v5, :cond_8

    add-int/lit8 v5, p2, 0x1

    ushr-int/lit8 v6, v4, 0x2

    aget v6, v2, v6

    and-int/lit8 v7, v4, 0x3

    shl-int/lit8 v7, v7, 0x3

    ushr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 v4, v4, 0x1

    move p2, v5

    goto :goto_5

    :cond_8
    iget-object v2, p0, LLi/s0;->b:[I

    iget v4, p0, LLi/s0;->o:I

    invoke-static {v2, v4}, LLi/s0;->w([II)V

    :cond_9
    move v2, v3

    :goto_6
    iget v4, p0, LLi/s0;->p:I

    if-ge v2, v4, :cond_a

    iget-object v4, p0, LLi/s0;->b:[I

    iget v5, p0, LLi/s0;->u:I

    add-int/2addr v5, v2

    aget v6, v4, v5

    iget-object v7, p0, LLi/s0;->c:[I

    aget v7, v7, v2

    xor-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget v2, p0, LLi/s0;->s:I

    new-array v2, v2, [B

    iput-object v2, p0, LLi/s0;->e:[B

    iget-object v4, p0, LLi/s0;->b:[I

    iget v5, p0, LLi/s0;->u:I

    iget v6, p0, LLi/s0;->r:I

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/util/p;->n([III[BI)V

    if-eqz v0, :cond_b

    iget-object v2, p0, LLi/s0;->e:[B

    iget v4, p0, LLi/s0;->s:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_b
    iget p1, p0, LLi/s0;->s:I

    iget-object p2, p0, LLi/s0;->e:[B

    iget-object v2, p0, LLi/s0;->j:[B

    iget v4, p0, LLi/s0;->k:I

    invoke-static {p1, p2, v3, v2, v4}, Lorg/bouncycastle/util/a;->H(I[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_7
    xor-int/lit8 p1, v0, 0x1

    invoke-direct {p0, p1}, LLi/s0;->v(Z)V

    return v1

    :cond_c
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LLi/s0;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mac does not match"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LLi/s0;->e:[B

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7

    invoke-direct {p0}, LLi/s0;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, LLi/s0;->k:I

    if-lez v0, :cond_1

    iget v2, p0, LLi/s0;->v:I

    sub-int/2addr v2, v0

    if-gt p3, v2, :cond_0

    iget-object p4, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, LLi/s0;->k:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/s0;->k:I

    return v1

    :cond_0
    iget-object v3, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, LLi/s0;->j:[B

    invoke-direct {p0, v0, v1, p4, p5}, LLi/s0;->t([BI[BI)V

    iget v0, p0, LLi/s0;->v:I

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, LLi/s0;->v:I

    if-le p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, LLi/s0;->t([BI[BI)V

    iget v2, p0, LLi/s0;->v:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, LLi/s0;->i:I

    iget v2, p0, LLi/s0;->k:I

    sub-int/2addr v0, v2

    if-gt p3, v0, :cond_3

    iget-object p4, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget v3, p0, LLi/s0;->v:I

    if-le v2, v3, :cond_4

    iget-object v2, p0, LLi/s0;->j:[B

    invoke-direct {p0, v2, v1, p4, p5}, LLi/s0;->s([BI[BI)V

    iget v2, p0, LLi/s0;->k:I

    iget v3, p0, LLi/s0;->v:I

    sub-int/2addr v2, v3

    iput v2, p0, LLi/s0;->k:I

    iget-object v4, p0, LLi/s0;->j:[B

    invoke-static {v4, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, LLi/s0;->v:I

    add-int/2addr v0, v2

    if-gt p3, v0, :cond_5

    iget-object p4, p0, LLi/s0;->j:[B

    iget p5, p0, LLi/s0;->k:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LLi/s0;->k:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/s0;->k:I

    return v2

    :cond_4
    move v2, v1

    :cond_5
    iget v0, p0, LLi/s0;->v:I

    iget v3, p0, LLi/s0;->k:I

    sub-int/2addr v0, v3

    iget-object v4, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, LLi/s0;->j:[B

    add-int v3, p5, v2

    invoke-direct {p0, v0, v1, p4, v3}, LLi/s0;->s([BI[BI)V

    iget v0, p0, LLi/s0;->v:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    iget v2, p0, LLi/s0;->i:I

    if-le p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, LLi/s0;->s([BI[BI)V

    iget v2, p0, LLi/s0;->v:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_6
    iget-object p4, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, LLi/s0;->k:I

    return v0

    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sget-object v1, LLi/s0$a;->b:[I

    iget-object v2, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, p0, LLi/s0;->k:I

    add-int/2addr p1, v1

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :pswitch_1
    iget v1, p0, LLi/s0;->k:I

    add-int/2addr p1, v1

    :pswitch_2
    iget v1, p0, LLi/s0;->s:I

    sub-int/2addr p1, v1

    goto :goto_0

    :goto_1
    iget v0, p0, LLi/s0;->v:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public h(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, LLi/s0$a;->b:[I

    iget-object v2, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget v0, p0, LLi/s0;->s:I

    add-int/2addr p1, v0

    return p1

    :pswitch_0
    iget v0, p0, LLi/s0;->k:I

    add-int/2addr p1, v0

    iget v0, p0, LLi/s0;->s:I

    add-int/2addr p1, v0

    return p1

    :pswitch_1
    iget v1, p0, LLi/s0;->k:I

    add-int/2addr p1, v1

    iget v1, p0, LLi/s0;->s:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_2
    iget v1, p0, LLi/s0;->s:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, LLi/s0;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public j([BII)V
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, LLi/s0;->m()V

    iget v0, p0, LLi/s0;->k:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, LLi/s0;->v:I

    sub-int/2addr v2, v0

    if-gt p3, v2, :cond_1

    iget-object v1, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LLi/s0;->k:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/s0;->k:I

    return-void

    :cond_1
    iget-object v3, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, LLi/s0;->j:[B

    invoke-direct {p0, v0, v1}, LLi/s0;->r([BI)V

    :cond_2
    :goto_0
    iget v0, p0, LLi/s0;->v:I

    if-le p3, v0, :cond_3

    invoke-direct {p0, p1, p2}, LLi/s0;->r([BI)V

    iget v0, p0, LLi/s0;->v:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, LLi/s0;->j:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, LLi/s0;->k:I

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(B)V
    .locals 3

    invoke-direct {p0}, LLi/s0;->m()V

    iget v0, p0, LLi/s0;->k:I

    iget v1, p0, LLi/s0;->v:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LLi/s0;->j:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LLi/s0;->r([BI)V

    iput v1, p0, LLi/s0;->k:I

    :cond_0
    iget-object v0, p0, LLi/s0;->j:[B

    iget v1, p0, LLi/s0;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LLi/s0;->k:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final o(LLi/s0$c;)V
    .locals 2

    sget-object v0, LLi/s0$a;->b:[I

    iget-object v1, p0, LLi/s0;->g:LLi/s0$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LLi/s0;->u()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LLi/s0;->k:I

    iput-object p1, p0, LLi/s0;->g:LLi/s0$c;

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, LLi/s0;->v:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, LLi/s0;->q:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LLi/s0;->v(Z)V

    return-void
.end method

.method public final u()V
    .locals 9

    iget v0, p0, LLi/s0;->k:I

    iget v1, p0, LLi/s0;->v:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LLi/s0;->b:[I

    iget v3, p0, LLi/s0;->t:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v3

    iget v5, p0, LLi/s0;->x:I

    xor-int/2addr v4, v5

    aput v4, v1, v3

    iget-object v1, p0, LLi/s0;->j:[B

    const/16 v3, -0x80

    aput-byte v3, v1, v0

    :goto_0
    iget v0, p0, LLi/s0;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LLi/s0;->k:I

    iget v1, p0, LLi/s0;->v:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LLi/s0;->j:[B

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLi/s0;->b:[I

    iget v1, p0, LLi/s0;->t:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    iget v4, p0, LLi/s0;->y:I

    xor-int/2addr v3, v4

    aput v3, v0, v1

    :cond_1
    :goto_1
    iget v0, p0, LLi/s0;->u:I

    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, LLi/s0;->b:[I

    aget v3, v1, v2

    aget v1, v1, v0

    iget-object v4, p0, LLi/s0;->j:[B

    mul-int/lit8 v5, v2, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v4

    iget-object v5, p0, LLi/s0;->j:[B

    mul-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v5

    iget-object v6, p0, LLi/s0;->b:[I

    xor-int/2addr v4, v1

    iget v7, p0, LLi/s0;->u:I

    add-int v8, v7, v2

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v5

    iget v3, p0, LLi/s0;->w:I

    and-int/2addr v3, v0

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v1, v3

    aput v1, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LLi/s0;->b:[I

    iget v1, p0, LLi/s0;->o:I

    invoke-static {v0, v1}, LLi/s0;->w([II)V

    return-void
.end method
