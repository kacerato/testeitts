.class public abstract Lpk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpk/c$b;,
        Lpk/c$c;,
        Lpk/c$d;,
        Lpk/c$e;,
        Lpk/c$f;,
        Lpk/c$g;
    }
.end annotation


# static fields
.field public static A:[I = null

.field public static final a:I = 0xe

.field public static final b:I = 0x39

.field public static final c:I = 0xe

.field public static final d:I = 0x39

.field public static final e:I = 0x40

.field public static final f:I = 0x39

.field public static final g:I = 0x39

.field public static final h:I = 0x72

.field public static final i:[B

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:I = 0x98a9

.field public static final p:I = 0x5

.field public static final q:I = 0x7

.field public static final r:I = 0x5

.field public static final s:I = 0x5

.field public static final t:I = 0x12

.field public static final u:I = 0x1c2

.field public static final v:I = 0x10

.field public static final w:I = 0xf

.field public static final x:Ljava/lang/Object;

.field public static y:[Lpk/c$d;

.field public static z:[Lpk/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lpk/c;->i:[B

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lpk/c;->j:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lpk/c;->k:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lpk/c;->l:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lpk/c;->m:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lpk/c;->n:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpk/c;->x:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lpk/c;->y:[Lpk/c$d;

    sput-object v0, Lpk/c;->z:[Lpk/c$d;

    sput-object v0, Lpk/c;->A:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_3
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data

    :array_4
    .array-data 4
        0x6909ee2
        0x1d7605c
        0x995ec8a
        0xfc4d970
        0xcf2b361
        0x2d82e9d
        0x1225f55
        0x7f0ef6
        0xaee9c55
        0xa240c13
        0x5627b54
        0xd449d1e
        0x3a44575    # 9.655E-37f
        0x7164a7
        0xbd4bd71
        0x61a15fd
    .end array-data

    :array_5
    .array-data 4
        0xd3a9fe4
        0x30696b9
        0x7e7e326
        0x68308c7
        0xce0b8c8
        0x3ac222b
        0x304db8e
        0x83ee319
        0x5e5db0b
        0xeca503b
        0xb1c6539
        0x78a8dce
        0x2d256bc
        0x4a8b05e
        0xbd9fd57
        0xa1c3cb8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lpk/c$e;Lpk/c$d;)V
    .locals 3

    iget-object v0, p0, Lpk/c$e;->c:[I

    iget-object v1, p1, Lpk/c$d;->b:[I

    invoke-static {v0, v1}, Lok/d;->C([I[I)V

    iget-object v0, p1, Lpk/c$d;->b:[I

    iget-object v1, p0, Lpk/c$e;->a:[I

    iget-object v2, p1, Lpk/c$d;->a:[I

    invoke-static {v0, v1, v2}, Lok/d;->J([I[I[I)V

    iget-object v0, p1, Lpk/c$d;->b:[I

    iget-object p0, p0, Lpk/c$e;->b:[I

    invoke-static {v0, p0, v0}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$d;->a:[I

    invoke-static {p0}, Lok/d;->L([I)V

    iget-object p0, p1, Lpk/c$d;->b:[I

    invoke-static {p0}, Lok/d;->L([I)V

    return-void
.end method

.method public static B(Lpk/c$e;)Z
    .locals 1

    iget-object v0, p0, Lpk/c$e;->a:[I

    invoke-static {v0}, Lok/d;->L([I)V

    iget-object v0, p0, Lpk/c$e;->b:[I

    invoke-static {v0}, Lok/d;->L([I)V

    iget-object v0, p0, Lpk/c$e;->c:[I

    invoke-static {v0}, Lok/d;->L([I)V

    iget-object v0, p0, Lpk/c$e;->a:[I

    invoke-static {v0}, Lok/d;->H([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpk/c$e;->b:[I

    invoke-static {v0}, Lok/d;->H([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpk/c$e;->b:[I

    iget-object p0, p0, Lpk/c$e;->c:[I

    invoke-static {v0, p0}, Lok/d;->e([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Lpk/c$d;Lpk/c$e;Lpk/c$f;)V
    .locals 8

    iget-object v0, p2, Lpk/c$f;->b:[I

    iget-object v1, p2, Lpk/c$f;->c:[I

    iget-object v2, p2, Lpk/c$f;->d:[I

    iget-object v3, p2, Lpk/c$f;->e:[I

    iget-object v4, p2, Lpk/c$f;->f:[I

    iget-object v5, p2, Lpk/c$f;->g:[I

    iget-object p2, p2, Lpk/c$f;->h:[I

    iget-object v6, p1, Lpk/c$e;->c:[I

    invoke-static {v6, v0}, Lok/d;->Q([I[I)V

    iget-object v6, p0, Lpk/c$d;->a:[I

    iget-object v7, p1, Lpk/c$e;->a:[I

    invoke-static {v6, v7, v1}, Lok/d;->J([I[I[I)V

    iget-object v6, p0, Lpk/c$d;->b:[I

    iget-object v7, p1, Lpk/c$e;->b:[I

    invoke-static {v6, v7, v2}, Lok/d;->J([I[I[I)V

    invoke-static {v1, v2, v3}, Lok/d;->J([I[I[I)V

    const v6, 0x98a9

    invoke-static {v3, v6, v3}, Lok/d;->I([II[I)V

    invoke-static {v0, v3, v4}, Lok/d;->a([I[I[I)V

    invoke-static {v0, v3, v5}, Lok/d;->S([I[I[I)V

    iget-object v6, p0, Lpk/c$d;->b:[I

    iget-object p0, p0, Lpk/c$d;->a:[I

    invoke-static {v6, p0, p2}, Lok/d;->a([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->b:[I

    iget-object v6, p1, Lpk/c$e;->a:[I

    invoke-static {p0, v6, v3}, Lok/d;->a([I[I[I)V

    invoke-static {p2, v3, p2}, Lok/d;->J([I[I[I)V

    invoke-static {v2, v1, v0}, Lok/d;->a([I[I[I)V

    invoke-static {v2, v1, v3}, Lok/d;->S([I[I[I)V

    invoke-static {v0}, Lok/d;->f([I)V

    invoke-static {p2, v0, p2}, Lok/d;->S([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->c:[I

    invoke-static {p2, p0, p2}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->c:[I

    invoke-static {v3, p0, v3}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->a:[I

    invoke-static {v4, p2, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->b:[I

    invoke-static {v3, v5, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->c:[I

    invoke-static {v4, v5, p0}, Lok/d;->J([I[I[I)V

    return-void
.end method

.method public static D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V
    .locals 9

    iget-object v0, p2, Lpk/c$f;->a:[I

    iget-object v1, p2, Lpk/c$f;->b:[I

    iget-object v2, p2, Lpk/c$f;->c:[I

    iget-object v3, p2, Lpk/c$f;->d:[I

    iget-object v4, p2, Lpk/c$f;->e:[I

    iget-object v5, p2, Lpk/c$f;->f:[I

    iget-object v6, p2, Lpk/c$f;->g:[I

    iget-object p2, p2, Lpk/c$f;->h:[I

    iget-object v7, p0, Lpk/c$e;->c:[I

    iget-object v8, p1, Lpk/c$e;->c:[I

    invoke-static {v7, v8, v0}, Lok/d;->J([I[I[I)V

    invoke-static {v0, v1}, Lok/d;->Q([I[I)V

    iget-object v7, p0, Lpk/c$e;->a:[I

    iget-object v8, p1, Lpk/c$e;->a:[I

    invoke-static {v7, v8, v2}, Lok/d;->J([I[I[I)V

    iget-object v7, p0, Lpk/c$e;->b:[I

    iget-object v8, p1, Lpk/c$e;->b:[I

    invoke-static {v7, v8, v3}, Lok/d;->J([I[I[I)V

    invoke-static {v2, v3, v4}, Lok/d;->J([I[I[I)V

    const v7, 0x98a9

    invoke-static {v4, v7, v4}, Lok/d;->I([II[I)V

    invoke-static {v1, v4, v5}, Lok/d;->a([I[I[I)V

    invoke-static {v1, v4, v6}, Lok/d;->S([I[I[I)V

    iget-object v7, p0, Lpk/c$e;->b:[I

    iget-object p0, p0, Lpk/c$e;->a:[I

    invoke-static {v7, p0, p2}, Lok/d;->a([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->b:[I

    iget-object v7, p1, Lpk/c$e;->a:[I

    invoke-static {p0, v7, v4}, Lok/d;->a([I[I[I)V

    invoke-static {p2, v4, p2}, Lok/d;->J([I[I[I)V

    invoke-static {v3, v2, v1}, Lok/d;->a([I[I[I)V

    invoke-static {v3, v2, v4}, Lok/d;->S([I[I[I)V

    invoke-static {v1}, Lok/d;->f([I)V

    invoke-static {p2, v1, p2}, Lok/d;->S([I[I[I)V

    invoke-static {p2, v0, p2}, Lok/d;->J([I[I[I)V

    invoke-static {v4, v0, v4}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->a:[I

    invoke-static {v5, p2, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->b:[I

    invoke-static {v4, v6, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p1, Lpk/c$e;->c:[I

    invoke-static {v5, v6, p0}, Lok/d;->J([I[I[I)V

    return-void
.end method

.method public static E(ZLpk/c$d;Lpk/c$e;Lpk/c$f;)V
    .locals 11

    iget-object v0, p3, Lpk/c$f;->b:[I

    iget-object v1, p3, Lpk/c$f;->c:[I

    iget-object v2, p3, Lpk/c$f;->d:[I

    iget-object v3, p3, Lpk/c$f;->e:[I

    iget-object v4, p3, Lpk/c$f;->f:[I

    iget-object v5, p3, Lpk/c$f;->g:[I

    iget-object p3, p3, Lpk/c$f;->h:[I

    if-eqz p0, :cond_0

    iget-object p0, p1, Lpk/c$d;->b:[I

    iget-object v6, p1, Lpk/c$d;->a:[I

    invoke-static {p0, v6, p3}, Lok/d;->S([I[I[I)V

    move-object v8, v0

    move-object v7, v3

    move-object v6, v4

    move-object p0, v5

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lpk/c$d;->b:[I

    iget-object v6, p1, Lpk/c$d;->a:[I

    invoke-static {p0, v6, p3}, Lok/d;->a([I[I[I)V

    move-object v7, v0

    move-object v8, v3

    move-object p0, v4

    move-object v6, v5

    :goto_0
    iget-object v9, p2, Lpk/c$e;->c:[I

    invoke-static {v9, v0}, Lok/d;->Q([I[I)V

    iget-object v9, p1, Lpk/c$d;->a:[I

    iget-object v10, p2, Lpk/c$e;->a:[I

    invoke-static {v9, v10, v1}, Lok/d;->J([I[I[I)V

    iget-object p1, p1, Lpk/c$d;->b:[I

    iget-object v9, p2, Lpk/c$e;->b:[I

    invoke-static {p1, v9, v2}, Lok/d;->J([I[I[I)V

    invoke-static {v1, v2, v3}, Lok/d;->J([I[I[I)V

    const p1, 0x98a9

    invoke-static {v3, p1, v3}, Lok/d;->I([II[I)V

    invoke-static {v0, v3, p0}, Lok/d;->a([I[I[I)V

    invoke-static {v0, v3, v6}, Lok/d;->S([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->b:[I

    iget-object p1, p2, Lpk/c$e;->a:[I

    invoke-static {p0, p1, v3}, Lok/d;->a([I[I[I)V

    invoke-static {p3, v3, p3}, Lok/d;->J([I[I[I)V

    invoke-static {v2, v1, v7}, Lok/d;->a([I[I[I)V

    invoke-static {v2, v1, v8}, Lok/d;->S([I[I[I)V

    invoke-static {v7}, Lok/d;->f([I)V

    invoke-static {p3, v0, p3}, Lok/d;->S([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->c:[I

    invoke-static {p3, p0, p3}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->c:[I

    invoke-static {v3, p0, v3}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->a:[I

    invoke-static {v4, p3, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->b:[I

    invoke-static {v3, v5, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->c:[I

    invoke-static {v4, v5, p0}, Lok/d;->J([I[I[I)V

    return-void
.end method

.method public static F(ZLpk/c$e;Lpk/c$e;Lpk/c$f;)V
    .locals 12

    iget-object v0, p3, Lpk/c$f;->a:[I

    iget-object v1, p3, Lpk/c$f;->b:[I

    iget-object v2, p3, Lpk/c$f;->c:[I

    iget-object v3, p3, Lpk/c$f;->d:[I

    iget-object v4, p3, Lpk/c$f;->e:[I

    iget-object v5, p3, Lpk/c$f;->f:[I

    iget-object v6, p3, Lpk/c$f;->g:[I

    iget-object p3, p3, Lpk/c$f;->h:[I

    if-eqz p0, :cond_0

    iget-object p0, p1, Lpk/c$e;->b:[I

    iget-object v7, p1, Lpk/c$e;->a:[I

    invoke-static {p0, v7, p3}, Lok/d;->S([I[I[I)V

    move-object v9, v1

    move-object v8, v4

    move-object v7, v5

    move-object p0, v6

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lpk/c$e;->b:[I

    iget-object v7, p1, Lpk/c$e;->a:[I

    invoke-static {p0, v7, p3}, Lok/d;->a([I[I[I)V

    move-object v8, v1

    move-object v9, v4

    move-object p0, v5

    move-object v7, v6

    :goto_0
    iget-object v10, p1, Lpk/c$e;->c:[I

    iget-object v11, p2, Lpk/c$e;->c:[I

    invoke-static {v10, v11, v0}, Lok/d;->J([I[I[I)V

    invoke-static {v0, v1}, Lok/d;->Q([I[I)V

    iget-object v10, p1, Lpk/c$e;->a:[I

    iget-object v11, p2, Lpk/c$e;->a:[I

    invoke-static {v10, v11, v2}, Lok/d;->J([I[I[I)V

    iget-object p1, p1, Lpk/c$e;->b:[I

    iget-object v10, p2, Lpk/c$e;->b:[I

    invoke-static {p1, v10, v3}, Lok/d;->J([I[I[I)V

    invoke-static {v2, v3, v4}, Lok/d;->J([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Lok/d;->I([II[I)V

    invoke-static {v1, v4, p0}, Lok/d;->a([I[I[I)V

    invoke-static {v1, v4, v7}, Lok/d;->S([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->b:[I

    iget-object p1, p2, Lpk/c$e;->a:[I

    invoke-static {p0, p1, v4}, Lok/d;->a([I[I[I)V

    invoke-static {p3, v4, p3}, Lok/d;->J([I[I[I)V

    invoke-static {v3, v2, v8}, Lok/d;->a([I[I[I)V

    invoke-static {v3, v2, v9}, Lok/d;->S([I[I[I)V

    invoke-static {v8}, Lok/d;->f([I)V

    invoke-static {p3, v1, p3}, Lok/d;->S([I[I[I)V

    invoke-static {p3, v0, p3}, Lok/d;->J([I[I[I)V

    invoke-static {v4, v0, v4}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->a:[I

    invoke-static {v5, p3, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->b:[I

    invoke-static {v4, v6, p0}, Lok/d;->J([I[I[I)V

    iget-object p0, p2, Lpk/c$e;->c:[I

    invoke-static {v5, v6, p0}, Lok/d;->J([I[I[I)V

    return-void
.end method

.method public static G(Lpk/c$d;Lpk/c$e;)V
    .locals 3

    iget-object v0, p0, Lpk/c$d;->a:[I

    iget-object v1, p1, Lpk/c$e;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lok/d;->i([II[II)V

    iget-object p0, p0, Lpk/c$d;->b:[I

    iget-object v0, p1, Lpk/c$e;->b:[I

    invoke-static {p0, v2, v0, v2}, Lok/d;->i([II[II)V

    iget-object p0, p1, Lpk/c$e;->c:[I

    invoke-static {p0}, Lok/d;->M([I)V

    return-void
.end method

.method public static H(Lpk/c$e;Lpk/c$e;)V
    .locals 3

    iget-object v0, p0, Lpk/c$e;->a:[I

    iget-object v1, p1, Lpk/c$e;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lok/d;->i([II[II)V

    iget-object v0, p0, Lpk/c$e;->b:[I

    iget-object v1, p1, Lpk/c$e;->b:[I

    invoke-static {v0, v2, v1, v2}, Lok/d;->i([II[II)V

    iget-object p0, p0, Lpk/c$e;->c:[I

    iget-object p1, p1, Lpk/c$e;->c:[I

    invoke-static {p0, v2, p1, v2}, Lok/d;->i([II[II)V

    return-void
.end method

.method public static I(Lpk/c$e;Lpk/c$f;)V
    .locals 7

    iget-object v0, p1, Lpk/c$f;->b:[I

    iget-object v1, p1, Lpk/c$f;->c:[I

    iget-object v2, p1, Lpk/c$f;->d:[I

    iget-object v3, p1, Lpk/c$f;->e:[I

    iget-object v4, p1, Lpk/c$f;->h:[I

    iget-object p1, p1, Lpk/c$f;->a:[I

    iget-object v5, p0, Lpk/c$e;->a:[I

    iget-object v6, p0, Lpk/c$e;->b:[I

    invoke-static {v5, v6, v0}, Lok/d;->a([I[I[I)V

    invoke-static {v0, v0}, Lok/d;->Q([I[I)V

    iget-object v5, p0, Lpk/c$e;->a:[I

    invoke-static {v5, v1}, Lok/d;->Q([I[I)V

    iget-object v5, p0, Lpk/c$e;->b:[I

    invoke-static {v5, v2}, Lok/d;->Q([I[I)V

    invoke-static {v1, v2, v3}, Lok/d;->a([I[I[I)V

    invoke-static {v3}, Lok/d;->f([I)V

    iget-object v5, p0, Lpk/c$e;->c:[I

    invoke-static {v5, v4}, Lok/d;->Q([I[I)V

    invoke-static {v4, v4, v4}, Lok/d;->a([I[I[I)V

    invoke-static {v4}, Lok/d;->f([I)V

    invoke-static {v3, v4, p1}, Lok/d;->S([I[I[I)V

    invoke-static {v0, v3, v0}, Lok/d;->S([I[I[I)V

    invoke-static {v1, v2, v1}, Lok/d;->S([I[I[I)V

    iget-object v2, p0, Lpk/c$e;->a:[I

    invoke-static {v0, p1, v2}, Lok/d;->J([I[I[I)V

    iget-object v0, p0, Lpk/c$e;->b:[I

    invoke-static {v3, v1, v0}, Lok/d;->J([I[I[I)V

    iget-object p0, p0, Lpk/c$e;->c:[I

    invoke-static {v3, p1, p0}, Lok/d;->J([I[I[I)V

    return-void
.end method

.method public static J(IILpk/c$d;)V
    .locals 6

    mul-int/lit16 p0, p0, 0x200

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    sget-object v3, Lpk/c;->A:[I

    iget-object v4, p2, Lpk/c$d;->a:[I

    invoke-static {v2, v3, p0, v4, v0}, Lok/d;->g(I[II[II)V

    add-int/lit8 v3, p0, 0x10

    sget-object v4, Lpk/c;->A:[I

    iget-object v5, p2, Lpk/c$d;->b:[I

    invoke-static {v2, v4, v3, v5, v0}, Lok/d;->g(I[II[II)V

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static K([II[ILpk/c$e;)V
    .locals 6

    invoke-static {p0, p1}, Lpk/c;->t([II)I

    move-result p0

    ushr-int/lit8 p1, p0, 0x3

    xor-int/lit8 p1, p1, 0x1

    neg-int v0, p1

    xor-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    xor-int v3, v1, p0

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    iget-object v4, p3, Lpk/c$e;->a:[I

    invoke-static {v3, p2, v2, v4, v0}, Lok/d;->g(I[II[II)V

    add-int/lit8 v4, v2, 0x10

    iget-object v5, p3, Lpk/c$e;->b:[I

    invoke-static {v3, p2, v4, v5, v0}, Lok/d;->g(I[II[II)V

    add-int/lit8 v4, v2, 0x20

    iget-object v5, p3, Lpk/c$e;->c:[I

    invoke-static {v3, p2, v4, v5, v0}, Lok/d;->g(I[II[II)V

    add-int/lit8 v2, v2, 0x30

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lpk/c$e;->a:[I

    invoke-static {p1, p0}, Lok/d;->h(I[I)V

    return-void
.end method

.method public static L([ILpk/c$e;)V
    .locals 3

    iget-object v0, p1, Lpk/c$e;->a:[I

    const/16 v1, 0x150

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lok/d;->i([II[II)V

    const/16 v0, 0x160

    iget-object v1, p1, Lpk/c$e;->b:[I

    invoke-static {p0, v0, v1, v2}, Lok/d;->i([II[II)V

    const/16 v0, 0x170

    iget-object p1, p1, Lpk/c$e;->c:[I

    invoke-static {p0, v0, p1, v2}, Lok/d;->i([II[II)V

    return-void
.end method

.method public static M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V
    .locals 5

    new-instance v0, Lpk/c$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0}, Lpk/c;->G(Lpk/c$d;Lpk/c$e;)V

    invoke-static {v0, p4}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    new-instance v2, Lpk/c$e;

    invoke-direct {v2, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    aput-object v2, p1, p2

    invoke-static {p0, v2}, Lpk/c;->G(Lpk/c$d;Lpk/c$e;)V

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p3, :cond_0

    add-int v2, p2, p0

    new-instance v3, Lpk/c$e;

    invoke-direct {v3, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    aput-object v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p1, v4

    invoke-static {v4, v3}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    aget-object v2, p1, v2

    invoke-static {v0, v2, p4}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static N(Lpk/c$e;ILpk/c$f;)[I
    .locals 7

    new-instance v0, Lpk/c$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    new-instance v2, Lpk/c$e;

    invoke-direct {v2, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, v2}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    invoke-static {v2, p2}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    mul-int/lit8 p0, p1, 0x3

    invoke-static {p0}, Lok/d;->k(I)[I

    move-result-object p0

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, v0, Lpk/c$e;->a:[I

    invoke-static {v5, v1, p0, v3}, Lok/d;->i([II[II)V

    add-int/lit8 v5, v3, 0x10

    iget-object v6, v0, Lpk/c$e;->b:[I

    invoke-static {v6, v1, p0, v5}, Lok/d;->i([II[II)V

    add-int/lit8 v5, v3, 0x20

    iget-object v6, v0, Lpk/c$e;->c:[I

    invoke-static {v6, v1, p0, v5}, Lok/d;->i([II[II)V

    add-int/lit8 v3, v3, 0x30

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {v2, v0, p2}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    goto :goto_0
.end method

.method public static O(Lpk/c$e;)V
    .locals 1

    iget-object v0, p0, Lpk/c$e;->a:[I

    invoke-static {v0}, Lok/d;->U([I)V

    iget-object v0, p0, Lpk/c$e;->b:[I

    invoke-static {v0}, Lok/d;->M([I)V

    iget-object p0, p0, Lpk/c$e;->c:[I

    invoke-static {p0}, Lok/d;->M([I)V

    return-void
.end method

.method public static P()V
    .locals 17

    sget-object v1, Lpk/c;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpk/c;->A:[I

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    const/16 v0, 0x90

    new-array v2, v0, [Lpk/c$e;

    new-instance v3, Lpk/c$f;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lpk/c$f;-><init>(Lpk/c$a;)V

    new-instance v5, Lpk/c$d;

    invoke-direct {v5, v4}, Lpk/c$d;-><init>(Lpk/c$a;)V

    sget-object v6, Lpk/c;->k:[I

    iget-object v7, v5, Lpk/c$d;->a:[I

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8}, Lok/d;->i([II[II)V

    sget-object v6, Lpk/c;->l:[I

    iget-object v7, v5, Lpk/c$d;->b:[I

    invoke-static {v6, v8, v7, v8}, Lok/d;->i([II[II)V

    const/16 v6, 0x20

    invoke-static {v5, v2, v8, v6, v3}, Lpk/c;->M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V

    new-instance v7, Lpk/c$d;

    invoke-direct {v7, v4}, Lpk/c$d;-><init>(Lpk/c$a;)V

    sget-object v9, Lpk/c;->m:[I

    iget-object v10, v7, Lpk/c$d;->a:[I

    invoke-static {v9, v8, v10, v8}, Lok/d;->i([II[II)V

    sget-object v9, Lpk/c;->n:[I

    iget-object v10, v7, Lpk/c$d;->b:[I

    invoke-static {v9, v8, v10, v8}, Lok/d;->i([II[II)V

    invoke-static {v7, v2, v6, v6, v3}, Lpk/c;->M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V

    new-instance v7, Lpk/c$e;

    invoke-direct {v7, v4}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {v5, v7}, Lpk/c;->G(Lpk/c$d;Lpk/c$e;)V

    const/4 v5, 0x5

    new-array v9, v5, [Lpk/c$e;

    move v10, v8

    :goto_0
    if-ge v10, v5, :cond_1

    new-instance v11, Lpk/c$e;

    invoke-direct {v11, v4}, Lpk/c$e;-><init>(Lpk/c$a;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v11, v8

    const/16 v12, 0x40

    :goto_1
    if-ge v11, v5, :cond_7

    add-int/lit8 v13, v12, 0x1

    new-instance v14, Lpk/c$e;

    invoke-direct {v14, v4}, Lpk/c$e;-><init>(Lpk/c$a;)V

    aput-object v14, v2, v12

    move v12, v8

    :goto_2
    const/4 v15, 0x1

    if-ge v12, v5, :cond_4

    if-nez v12, :cond_2

    invoke-static {v7, v14}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    goto :goto_3

    :cond_2
    invoke-static {v7, v14, v3}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    :goto_3
    invoke-static {v7, v3}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    aget-object v5, v9, v12

    invoke-static {v7, v5}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    add-int v5, v11, v12

    const/16 v10, 0x8

    if-eq v5, v10, :cond_3

    :goto_4
    const/16 v5, 0x12

    if-ge v15, v5, :cond_3

    invoke-static {v7, v3}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x5

    goto :goto_2

    :cond_4
    iget-object v5, v14, Lpk/c$e;->a:[I

    invoke-static {v5, v5}, Lok/d;->K([I[I)V

    move v5, v8

    move v12, v13

    :goto_5
    const/4 v10, 0x4

    if-ge v5, v10, :cond_6

    shl-int v10, v15, v5

    move v13, v8

    :goto_6
    if-ge v13, v10, :cond_5

    new-instance v14, Lpk/c$e;

    invoke-direct {v14, v4}, Lpk/c$e;-><init>(Lpk/c$a;)V

    aput-object v14, v2, v12

    sub-int v16, v12, v10

    aget-object v15, v2, v16

    invoke-static {v15, v14}, Lpk/c;->H(Lpk/c$e;Lpk/c$e;)V

    aget-object v14, v9, v5

    aget-object v15, v2, v12

    invoke-static {v14, v15, v3}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lpk/c;->z([Lpk/c$e;)V

    new-array v3, v6, [Lpk/c$d;

    sput-object v3, Lpk/c;->y:[Lpk/c$d;

    move v3, v8

    :goto_7
    if-ge v3, v6, :cond_8

    aget-object v5, v2, v3

    sget-object v7, Lpk/c;->y:[Lpk/c$d;

    new-instance v9, Lpk/c$d;

    invoke-direct {v9, v4}, Lpk/c$d;-><init>(Lpk/c$a;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Lpk/c$e;->a:[I

    iget-object v10, v5, Lpk/c$e;->c:[I

    iget-object v11, v9, Lpk/c$d;->a:[I

    invoke-static {v7, v10, v11}, Lok/d;->J([I[I[I)V

    iget-object v7, v9, Lpk/c$d;->a:[I

    invoke-static {v7}, Lok/d;->L([I)V

    iget-object v7, v5, Lpk/c$e;->b:[I

    iget-object v5, v5, Lpk/c$e;->c:[I

    iget-object v10, v9, Lpk/c$d;->b:[I

    invoke-static {v7, v5, v10}, Lok/d;->J([I[I[I)V

    iget-object v5, v9, Lpk/c$d;->b:[I

    invoke-static {v5}, Lok/d;->L([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    new-array v3, v6, [Lpk/c$d;

    sput-object v3, Lpk/c;->z:[Lpk/c$d;

    move v3, v8

    :goto_8
    if-ge v3, v6, :cond_9

    add-int v5, v6, v3

    aget-object v5, v2, v5

    sget-object v7, Lpk/c;->z:[Lpk/c$d;

    new-instance v9, Lpk/c$d;

    invoke-direct {v9, v4}, Lpk/c$d;-><init>(Lpk/c$a;)V

    aput-object v9, v7, v3

    iget-object v7, v5, Lpk/c$e;->a:[I

    iget-object v10, v5, Lpk/c$e;->c:[I

    iget-object v11, v9, Lpk/c$d;->a:[I

    invoke-static {v7, v10, v11}, Lok/d;->J([I[I[I)V

    iget-object v7, v9, Lpk/c$d;->a:[I

    invoke-static {v7}, Lok/d;->L([I)V

    iget-object v7, v5, Lpk/c$e;->b:[I

    iget-object v5, v5, Lpk/c$e;->c:[I

    iget-object v10, v9, Lpk/c$d;->b:[I

    invoke-static {v7, v5, v10}, Lok/d;->J([I[I[I)V

    iget-object v5, v9, Lpk/c$d;->b:[I

    invoke-static {v5}, Lok/d;->L([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    const/16 v3, 0xa0

    invoke-static {v3}, Lok/d;->k(I)[I

    move-result-object v3

    sput-object v3, Lpk/c;->A:[I

    move v3, v8

    const/16 v10, 0x40

    :goto_9
    if-ge v10, v0, :cond_a

    aget-object v4, v2, v10

    iget-object v5, v4, Lpk/c$e;->a:[I

    iget-object v6, v4, Lpk/c$e;->c:[I

    invoke-static {v5, v6, v5}, Lok/d;->J([I[I[I)V

    iget-object v5, v4, Lpk/c$e;->a:[I

    invoke-static {v5}, Lok/d;->L([I)V

    iget-object v5, v4, Lpk/c$e;->b:[I

    iget-object v6, v4, Lpk/c$e;->c:[I

    invoke-static {v5, v6, v5}, Lok/d;->J([I[I[I)V

    iget-object v5, v4, Lpk/c$e;->b:[I

    invoke-static {v5}, Lok/d;->L([I)V

    iget-object v5, v4, Lpk/c$e;->a:[I

    sget-object v6, Lpk/c;->A:[I

    invoke-static {v5, v8, v6, v3}, Lok/d;->i([II[II)V

    add-int/lit8 v5, v3, 0x10

    iget-object v4, v4, Lpk/c$e;->b:[I

    sget-object v6, Lpk/c;->A:[I

    invoke-static {v4, v8, v6, v5}, Lok/d;->i([II[II)V

    add-int/lit8 v3, v3, 0x20

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    monitor-exit v1

    return-void

    :goto_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static Q([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method public static R([BLpk/c$e;Lpk/c$e;)V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lpk/e;->b([B[I)V

    const/16 p0, 0x1c1

    invoke-static {p0, v0, v0}, Lpk/e;->h(I[I[I)V

    new-instance p0, Lpk/c$e;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    new-instance v2, Lpk/c$f;

    invoke-direct {v2, v1}, Lpk/c$f;-><init>(Lpk/c$a;)V

    const/16 v1, 0x8

    invoke-static {p1, v1, v2}, Lpk/c;->N(Lpk/c$e;ILpk/c$f;)[I

    move-result-object v1

    invoke-static {v1, p2}, Lpk/c;->L([ILpk/c$e;)V

    invoke-static {p1, p2, v2}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    const/16 p1, 0x6f

    :cond_0
    invoke-static {v0, p1, v1, p0}, Lpk/c;->K([II[ILpk/c$e;)V

    invoke-static {p0, p2, v2}, Lpk/c;->D(Lpk/c$e;Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    invoke-static {p2, v2}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static S([BLpk/c$e;)V
    .locals 13

    invoke-static {}, Lpk/c;->P()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lpk/e;->b([B[I)V

    const/16 p0, 0x1c2

    invoke-static {p0, v1, v1}, Lpk/e;->h(I[I[I)V

    new-instance p0, Lpk/c$d;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lpk/c$d;-><init>(Lpk/c$a;)V

    new-instance v3, Lpk/c$f;

    invoke-direct {v3, v2}, Lpk/c$f;-><init>(Lpk/c$a;)V

    invoke-static {p1}, Lpk/c;->O(Lpk/c$e;)V

    const/16 v2, 0x11

    :goto_0
    const/4 v4, 0x0

    move v6, v2

    move v5, v4

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    move v8, v4

    move v9, v8

    :goto_2
    const/4 v10, 0x1

    if-ge v8, v7, :cond_0

    ushr-int/lit8 v11, v6, 0x5

    aget v11, v1, v11

    and-int/lit8 v12, v6, 0x1f

    ushr-int/2addr v11, v12

    shl-int/2addr v10, v8

    not-int v10, v10

    and-int/2addr v9, v10

    shl-int v10, v11, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v10

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Lpk/c;->J(IILpk/c$d;)V

    iget-object v8, p0, Lpk/c$d;->a:[I

    invoke-static {v7, v8}, Lok/d;->h(I[I)V

    invoke-static {p0, p1, v3}, Lpk/c;->C(Lpk/c$d;Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v3}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    goto :goto_0
.end method

.method public static T([B[BI)V
    .locals 2

    new-instance v0, Lpk/c$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0}, Lpk/c;->S([BLpk/c$e;)V

    invoke-static {v0, p1, p2}, Lpk/c;->o(Lpk/c$e;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static U(Lok/c$b;[BI[I[I)V
    .locals 0

    if-eqz p0, :cond_1

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lpk/c;->Q([BI[B)V

    new-instance p1, Lpk/c$e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, p1}, Lpk/c;->S([BLpk/c$e;)V

    invoke-static {p1}, Lpk/c;->d(Lpk/c$e;)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lpk/c$e;->a:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lok/d;->i([II[II)V

    iget-object p0, p1, Lpk/c$e;->b:[I

    invoke-static {p0, p2, p4, p2}, Lok/d;->i([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X448"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static V(Lpk/c$d;Lpk/c$e;)V
    .locals 7

    const/16 v0, 0x1bf

    new-array v0, v0, [B

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lpk/e;->c(I[B)V

    const/16 v1, 0x8

    new-array v2, v1, [Lpk/c$e;

    new-instance v3, Lpk/c$f;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lpk/c$f;-><init>(Lpk/c$a;)V

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v1, v3}, Lpk/c;->M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V

    invoke-static {p1}, Lpk/c;->O(Lpk/c$e;)V

    const/16 p0, 0x1be

    :goto_0
    aget-byte v1, v0, p0

    if-eqz v1, :cond_1

    shr-int/lit8 v5, v1, 0x1

    shr-int/lit8 v6, v1, 0x1f

    xor-int/2addr v5, v6

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    aget-object v5, v2, v5

    invoke-static {v1, v5, p1, v3}, Lpk/c;->F(ZLpk/c$e;Lpk/c$e;Lpk/c$f;)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v3}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    goto :goto_0
.end method

.method public static W([I[ILpk/c$d;[ILpk/c$d;Lpk/c$e;)V
    .locals 7

    invoke-static {}, Lpk/c;->P()V

    const/16 v0, 0x1c2

    new-array v0, v0, [B

    const/16 v1, 0xe1

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x7

    invoke-static {p0, v4, v0}, Lpk/g;->a([II[B)V

    const/4 p0, 0x5

    invoke-static {p1, p0, v2}, Lpk/g;->a([II[B)V

    invoke-static {p3, p0, v3}, Lpk/g;->a([II[B)V

    const/16 p0, 0x8

    new-array p1, p0, [Lpk/c$e;

    new-array p3, p0, [Lpk/c$e;

    new-instance v4, Lpk/c$f;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lpk/c$f;-><init>(Lpk/c$a;)V

    const/4 v5, 0x0

    invoke-static {p2, p1, v5, p0, v4}, Lpk/c;->M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V

    invoke-static {p4, p3, v5, p0, v4}, Lpk/c;->M(Lpk/c$d;[Lpk/c$e;IILpk/c$f;)V

    invoke-static {p5}, Lpk/c;->O(Lpk/c$e;)V

    :goto_0
    add-int/lit8 p0, v1, -0x1

    if-ltz p0, :cond_1

    aget-byte p2, v0, p0

    add-int/lit16 v1, v1, 0xe0

    aget-byte p4, v0, v1

    or-int/2addr p2, p4

    aget-byte p4, v2, p0

    or-int/2addr p2, p4

    aget-byte p4, v3, p0

    or-int/2addr p2, p4

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p0, :cond_a

    aget-byte p2, v0, p0

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_2

    move p2, p4

    goto :goto_2

    :cond_2
    move p2, v5

    :goto_2
    sget-object v6, Lpk/c;->y:[Lpk/c$d;

    aget-object v1, v6, v1

    invoke-static {p2, v1, p5, v4}, Lpk/c;->E(ZLpk/c$d;Lpk/c$e;Lpk/c$f;)V

    :cond_3
    add-int/lit16 p2, p0, 0xe1

    aget-byte p2, v0, p2

    if-eqz p2, :cond_5

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_4

    move p2, p4

    goto :goto_3

    :cond_4
    move p2, v5

    :goto_3
    sget-object v6, Lpk/c;->z:[Lpk/c$d;

    aget-object v1, v6, v1

    invoke-static {p2, v1, p5, v4}, Lpk/c;->E(ZLpk/c$d;Lpk/c$e;Lpk/c$f;)V

    :cond_5
    aget-byte p2, v2, p0

    if-eqz p2, :cond_7

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_6

    move p2, p4

    goto :goto_4

    :cond_6
    move p2, v5

    :goto_4
    aget-object v1, p1, v1

    invoke-static {p2, v1, p5, v4}, Lpk/c;->F(ZLpk/c$e;Lpk/c$e;Lpk/c$f;)V

    :cond_7
    aget-byte p2, v3, p0

    if-eqz p2, :cond_9

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v6, p2, 0x1f

    xor-int/2addr v1, v6

    if-gez p2, :cond_8

    goto :goto_5

    :cond_8
    move p4, v5

    :goto_5
    aget-object p2, p3, v1

    invoke-static {p4, p2, p5, v4}, Lpk/c;->F(ZLpk/c$e;Lpk/c$e;Lpk/c$f;)V

    :cond_9
    invoke-static {p5, v4}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_a
    invoke-static {p5, v4}, Lpk/c;->I(Lpk/c$e;Lpk/c$f;)V

    return-void
.end method

.method public static X([BI[BI[B[BII[BI)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lpk/c;->w([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static Y([BI[B[BII[BI)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lpk/c;->v([BI[BB[BII[BI)V

    return-void
.end method

.method public static Z([BI[BI[BLBi/a0;[BI)V
    .locals 11

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    move-object/from16 v2, p5

    invoke-interface {v2, v6, v0, v1}, LBi/a0;->e([BII)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lpk/c;->w([BI[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B[B[B)[B
    .locals 3

    const/16 v0, 0x1c

    new-array v1, v0, [I

    invoke-static {p0, v1}, Lpk/e;->b([B[I)V

    const/16 p0, 0xe

    new-array v2, p0, [I

    invoke-static {p1, v2}, Lpk/e;->b([B[I)V

    new-array p1, p0, [I

    invoke-static {p2, p1}, Lpk/e;->b([B[I)V

    invoke-static {p0, v2, p1, v1}, Lsk/o;->o0(I[I[I[I)I

    const/16 p0, 0x72

    new-array p0, p0, [B

    const/4 p1, 0x0

    invoke-static {v1, p1, v0, p0, p1}, Lpk/a;->g([III[BI)V

    invoke-static {p0}, Lpk/e;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a0([BI[BI[B[BI[BI)V
    .locals 11

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lpk/c;->w([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static b([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length p0, p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b0([BI[BLBi/a0;[BI)V
    .locals 9

    const/16 v6, 0x40

    new-array v4, v6, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p3, v4, v0, v1}, LBi/a0;->e([BII)I

    move-result p3

    if-ne v1, p3, :cond_0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lpk/c;->v([BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lpk/c$d;)I
    .locals 4

    invoke-static {}, Lok/d;->j()[I

    move-result-object v0

    invoke-static {}, Lok/d;->j()[I

    move-result-object v1

    invoke-static {}, Lok/d;->j()[I

    move-result-object v2

    iget-object v3, p0, Lpk/c$d;->a:[I

    invoke-static {v3, v1}, Lok/d;->Q([I[I)V

    iget-object p0, p0, Lpk/c$d;->b:[I

    invoke-static {p0, v2}, Lok/d;->Q([I[I)V

    invoke-static {v1, v2, v0}, Lok/d;->J([I[I[I)V

    invoke-static {v1, v2, v1}, Lok/d;->a([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lok/d;->I([II[I)V

    invoke-static {v0}, Lok/d;->T([I)V

    invoke-static {v0, v1, v0}, Lok/d;->a([I[I[I)V

    invoke-static {v0}, Lok/d;->L([I)V

    invoke-static {v2}, Lok/d;->L([I)V

    invoke-static {v0}, Lok/d;->G([I)I

    move-result p0

    invoke-static {v2}, Lok/d;->G([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    return p0
.end method

.method public static c0([BI[B[BI[BI)V
    .locals 9

    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lpk/c;->v([BI[BB[BII[BI)V

    return-void
.end method

.method public static d(Lpk/c$e;)I
    .locals 5

    invoke-static {}, Lok/d;->j()[I

    move-result-object v0

    invoke-static {}, Lok/d;->j()[I

    move-result-object v1

    invoke-static {}, Lok/d;->j()[I

    move-result-object v2

    invoke-static {}, Lok/d;->j()[I

    move-result-object v3

    iget-object v4, p0, Lpk/c$e;->a:[I

    invoke-static {v4, v1}, Lok/d;->Q([I[I)V

    iget-object v4, p0, Lpk/c$e;->b:[I

    invoke-static {v4, v2}, Lok/d;->Q([I[I)V

    iget-object p0, p0, Lpk/c$e;->c:[I

    invoke-static {p0, v3}, Lok/d;->Q([I[I)V

    invoke-static {v1, v2, v0}, Lok/d;->J([I[I[I)V

    invoke-static {v1, v2, v1}, Lok/d;->a([I[I[I)V

    invoke-static {v1, v3, v1}, Lok/d;->J([I[I[I)V

    invoke-static {v3, v3}, Lok/d;->Q([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lok/d;->I([II[I)V

    invoke-static {v0, v3, v0}, Lok/d;->S([I[I[I)V

    invoke-static {v0, v1, v0}, Lok/d;->a([I[I[I)V

    invoke-static {v0}, Lok/d;->L([I)V

    invoke-static {v2}, Lok/d;->L([I)V

    invoke-static {v3}, Lok/d;->L([I)V

    invoke-static {v0}, Lok/d;->G([I)I

    move-result p0

    invoke-static {v2}, Lok/d;->G([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    invoke-static {v3}, Lok/d;->G([I)I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    return p0
.end method

.method public static d0([BI)Z
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lpk/c;->h([BII)[B

    move-result-object p0

    invoke-static {p0}, Lpk/c;->e([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lpk/c$d;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lpk/c$d;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0, p1}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lpk/c;->f(Lpk/c$d;)Z

    move-result p0

    return p0
.end method

.method public static e([B)Z
    .locals 8

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lpk/a;->c([BI)I

    move-result v0

    sget-object v2, Lpk/c;->j:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    xor-int/2addr v2, v0

    const/16 v3, 0xc

    :goto_0
    const/high16 v4, -0x80000000

    if-lez v3, :cond_2

    mul-int/lit8 v5, v3, 0x4

    invoke-static {p0, v5}, Lpk/a;->c([BI)I

    move-result v5

    if-nez v2, :cond_1

    add-int v6, v5, v4

    sget-object v7, Lpk/c;->j:[I

    aget v7, v7, v3

    add-int/2addr v7, v4

    if-le v6, v7, :cond_1

    return v1

    :cond_1
    or-int/2addr v0, v5

    sget-object v4, Lpk/c;->j:[I

    aget v4, v4, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lpk/a;->c([BI)I

    move-result p0

    const v3, -0x7fffffff

    if-nez v0, :cond_3

    add-int v0, p0, v4

    if-gt v0, v3, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    add-int/2addr p0, v4

    sget-object v0, Lpk/c;->j:[I

    aget v0, v0, v1

    sub-int/2addr v0, v3

    if-lt p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static e0([BI)Lpk/c$g;
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lpk/c;->h([BII)[B

    move-result-object p0

    invoke-static {p0}, Lpk/c;->e([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lpk/c$d;

    invoke-direct {p1, v0}, Lpk/c$d;-><init>(Lpk/c$a;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lpk/c;->f(Lpk/c$d;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lpk/c;->p(Lpk/c$d;)Lpk/c$g;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lpk/c$d;)Z
    .locals 2

    new-instance v0, Lpk/c$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0}, Lpk/c;->V(Lpk/c$d;Lpk/c$e;)V

    invoke-static {v0}, Lpk/c;->B(Lpk/c$e;)Z

    move-result p0

    return p0
.end method

.method public static f0([BI)Z
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lpk/c;->h([BII)[B

    move-result-object p0

    invoke-static {p0}, Lpk/c;->e([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lpk/c$d;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lpk/c$d;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0, p1}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result p0

    return p0
.end method

.method public static g([B)Z
    .locals 5

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lpk/a;->c([BI)I

    move-result v0

    sget-object v2, Lpk/c;->j:[I

    const/16 v3, 0xd

    aget v3, v2, v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    return v4

    :cond_1
    const/16 v0, 0xe

    new-array v3, v0, [I

    invoke-static {p0, v1, v3, v1, v0}, Lpk/a;->d([BI[III)V

    invoke-static {v0, v3, v2}, Lsk/o;->a0(I[I[I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method public static g0([BI)Lpk/c$g;
    .locals 2

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lpk/c;->h([BII)[B

    move-result-object p0

    invoke-static {p0}, Lpk/c;->e([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lpk/c$d;

    invoke-direct {p1, v0}, Lpk/c$d;-><init>(Lpk/c$a;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lpk/c;->p(Lpk/c$d;)Lpk/c$g;

    move-result-object p0

    return-object p0
.end method

.method public static h([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static h0([BILpk/c$g;[B[BII)Z
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lpk/c;->x([BILpk/c$g;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static i()LBi/a0;
    .locals 1

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v0

    return-object v0
.end method

.method public static i0([BI[BI[B[BII)Z
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lpk/c;->y([BI[BI[BB[BII)Z

    move-result v0

    return v0
.end method

.method public static j()LBi/a0;
    .locals 2

    new-instance v0, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    return-object v0
.end method

.method public static j0([BILpk/c$g;[BLBi/a0;)Z
    .locals 8

    const/16 v7, 0x40

    new-array v5, v7, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p4, v5, v0, v1}, LBi/a0;->e([BII)I

    move-result p4

    if-ne v1, p4, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lpk/c;->x([BILpk/c$g;[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k([BZLpk/c$d;)Z
    .locals 4

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    iget-object v1, p2, Lpk/c$d;->b:[I

    invoke-static {p0, v1}, Lok/d;->o([B[I)V

    invoke-static {}, Lok/d;->j()[I

    move-result-object p0

    invoke-static {}, Lok/d;->j()[I

    move-result-object v1

    iget-object v2, p2, Lpk/c$d;->b:[I

    invoke-static {v2, p0}, Lok/d;->Q([I[I)V

    const v2, 0x98a9

    invoke-static {p0, v2, v1}, Lok/d;->I([II[I)V

    invoke-static {p0, p0}, Lok/d;->K([I[I)V

    invoke-static {p0}, Lok/d;->b([I)V

    invoke-static {v1}, Lok/d;->b([I)V

    iget-object v2, p2, Lpk/c$d;->a:[I

    invoke-static {p0, v1, v2}, Lok/d;->R([I[I[I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, p2, Lpk/c$d;->a:[I

    invoke-static {p0}, Lok/d;->L([I)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    iget-object v2, p2, Lpk/c$d;->a:[I

    invoke-static {v2}, Lok/d;->H([I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p2, Lpk/c$d;->a:[I

    aget v3, v2, v1

    and-int/2addr v3, p0

    if-eq v0, v3, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    invoke-static {v2, v2}, Lok/d;->K([I[I)V

    iget-object p1, p2, Lpk/c$d;->a:[I

    invoke-static {p1}, Lok/d;->L([I)V

    :cond_3
    return p0
.end method

.method public static k0([BILpk/c$g;[B[BI)Z
    .locals 8

    const/4 v4, 0x1

    const/16 v7, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lpk/c;->x([BILpk/c$g;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static l(LBi/a0;B[B)V
    .locals 6

    sget-object v0, Lpk/c;->i:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, p2

    int-to-byte p1, p1

    aput-byte p1, v4, v1

    array-length p1, p2

    invoke-static {p2, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p0, v4, v5, v3}, LBi/y;->update([BII)V

    return-void
.end method

.method public static l0([BI[BI[BLBi/a0;)Z
    .locals 9

    const/16 v8, 0x40

    new-array v6, v8, [B

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-interface {p5, v6, v0, v1}, LBi/a0;->e([BII)I

    move-result p5

    if-ne v1, p5, :cond_0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lpk/c;->y([BI[BI[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Lpk/c$d;[BI)V
    .locals 1

    iget-object v0, p0, Lpk/c$d;->b:[I

    invoke-static {v0, p1, p2}, Lok/d;->w([I[BI)V

    add-int/lit8 p2, p2, 0x38

    iget-object p0, p0, Lpk/c$d;->a:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static m0([BI[BI[B[BI)Z
    .locals 9

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lpk/c;->y([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static n(Lpk/c$g;[BI)V
    .locals 2

    iget-object v0, p0, Lpk/c$g;->a:[I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, p2}, Lok/d;->u([II[BI)V

    add-int/lit8 p2, p2, 0x38

    iget-object p0, p0, Lpk/c$g;->a:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static o(Lpk/c$e;[BI)I
    .locals 2

    new-instance v0, Lpk/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpk/c$d;-><init>(Lpk/c$a;)V

    invoke-static {p0, v0}, Lpk/c;->A(Lpk/c$e;Lpk/c$d;)V

    invoke-static {v0}, Lpk/c;->c(Lpk/c$d;)I

    move-result p0

    invoke-static {v0, p1, p2}, Lpk/c;->m(Lpk/c$d;[BI)V

    return p0
.end method

.method public static p(Lpk/c$d;)Lpk/c$g;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [I

    iget-object v1, p0, Lpk/c$d;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lok/d;->i([II[II)V

    iget-object p0, p0, Lpk/c$d;->b:[I

    const/16 v1, 0x10

    invoke-static {p0, v2, v0, v1}, Lok/d;->i([II[II)V

    new-instance p0, Lpk/c$g;

    invoke-direct {p0, v0}, Lpk/c$g;-><init>([I)V

    return-object p0
.end method

.method public static q(Ljava/security/SecureRandom;[B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r([BI)Lpk/c$g;
    .locals 4

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, LBi/y;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, LBi/a0;->e([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lpk/c;->Q([BI[B)V

    new-instance p0, Lpk/c$e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpk/c$e;-><init>(Lpk/c$a;)V

    invoke-static {p1, p0}, Lpk/c;->S([BLpk/c$e;)V

    new-instance p1, Lpk/c$d;

    invoke-direct {p1, v0}, Lpk/c$d;-><init>(Lpk/c$a;)V

    invoke-static {p0, p1}, Lpk/c;->A(Lpk/c$e;Lpk/c$d;)V

    invoke-static {p1}, Lpk/c;->c(Lpk/c$d;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lpk/c;->p(Lpk/c$d;)Lpk/c$g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static s([BI[BI)V
    .locals 4

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, LBi/y;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, LBi/a0;->e([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lpk/c;->Q([BI[B)V

    invoke-static {p1, p2, p3}, Lpk/c;->T([B[BI)V

    return-void
.end method

.method public static t([II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static u(LBi/a0;[B[B[BI[BB[BII[BI)V
    .locals 4

    invoke-static {p0, p6, p5}, Lpk/c;->l(LBi/a0;B[B)V

    const/16 v0, 0x39

    invoke-interface {p0, p1, v0, v0}, LBi/y;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, LBi/y;->update([BII)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, LBi/a0;->e([BII)I

    invoke-static {p1}, Lpk/e;->f([B)[B

    move-result-object v1

    new-array v3, v0, [B

    invoke-static {v1, v3, v2}, Lpk/c;->T([B[BI)V

    invoke-static {p0, p6, p5}, Lpk/c;->l(LBi/a0;B[B)V

    invoke-interface {p0, v3, v2, v0}, LBi/y;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, LBi/y;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, LBi/y;->update([BII)V

    array-length p3, p1

    invoke-interface {p0, p1, v2, p3}, LBi/a0;->e([BII)I

    invoke-static {p1}, Lpk/e;->f([B)[B

    move-result-object p0

    invoke-static {v1, p0, p2}, Lpk/c;->a([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static v([BI[BB[BII[BI)V
    .locals 13

    invoke-static {p2}, Lpk/c;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, LBi/y;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, LBi/a0;->e([BII)I

    new-array v0, v3, [B

    invoke-static {v2, v4, v0}, Lpk/c;->Q([BI[B)V

    new-array v5, v3, [B

    invoke-static {v0, v5, v4}, Lpk/c;->T([B[BI)V

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, v5

    move v5, v6

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lpk/c;->u(LBi/a0;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w([BI[BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p4 .. p4}, Lpk/c;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, LBi/y;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, LBi/a0;->e([BII)I

    new-array v3, v3, [B

    invoke-static {v2, v4, v3}, Lpk/c;->Q([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lpk/c;->u(LBi/a0;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x([BILpk/c$g;[BB[BII)Z
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p3 .. p3}, Lpk/c;->b([B)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x39

    invoke-static {p0, p1, v3}, Lpk/c;->h([BII)[B

    move-result-object v4

    add-int/2addr v1, v3

    invoke-static {p0, v1, v3}, Lpk/c;->h([BII)[B

    move-result-object v0

    invoke-static {v4}, Lpk/c;->g([B)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return v5

    :cond_0
    const/16 v1, 0xe

    new-array v6, v1, [I

    invoke-static {v0, v6}, Lpk/e;->a([B[I)Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    :cond_1
    new-instance v0, Lpk/c$d;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lpk/c$d;-><init>(Lpk/c$a;)V

    const/4 v8, 0x1

    invoke-static {v4, v8, v0}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result v8

    if-nez v8, :cond_2

    return v5

    :cond_2
    new-instance v8, Lpk/c$d;

    invoke-direct {v8, v7}, Lpk/c$d;-><init>(Lpk/c$a;)V

    iget-object v9, v2, Lpk/c$g;->a:[I

    iget-object v10, v8, Lpk/c$d;->a:[I

    invoke-static {v9, v10}, Lok/d;->K([I[I)V

    iget-object v9, v2, Lpk/c$g;->a:[I

    const/16 v10, 0x10

    iget-object v11, v8, Lpk/c$d;->b:[I

    invoke-static {v9, v10, v11, v5}, Lok/d;->i([II[II)V

    new-array v9, v3, [B

    invoke-static {v2, v9, v5}, Lpk/c;->n(Lpk/c$g;[BI)V

    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v2

    const/16 v10, 0x72

    new-array v11, v10, [B

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-static {v2, v13, v12}, Lpk/c;->l(LBi/a0;B[B)V

    invoke-interface {v2, v4, v5, v3}, LBi/y;->update([BII)V

    invoke-interface {v2, v9, v5, v3}, LBi/y;->update([BII)V

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v9, p7

    invoke-interface {v2, v3, v4, v9}, LBi/y;->update([BII)V

    invoke-interface {v2, v11, v5, v10}, LBi/a0;->e([BII)I

    invoke-static {v11}, Lpk/e;->f([B)[B

    move-result-object v2

    new-array v1, v1, [I

    invoke-static {v2, v1}, Lpk/e;->b([B[I)V

    const/16 v2, 0x8

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-static {v1, v3, v2}, Lpk/e;->g([I[I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6, v2, v6}, Lpk/e;->d([I[I[I)V

    new-instance v1, Lpk/c$e;

    invoke-direct {v1, v7}, Lpk/c$e;-><init>(Lpk/c$a;)V

    move-object p0, v6

    move-object p1, v3

    move-object/from16 p2, v8

    move-object/from16 p3, v2

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lpk/c;->W([I[ILpk/c$d;[ILpk/c$d;Lpk/c$e;)V

    invoke-static {v1}, Lpk/c;->B(Lpk/c$e;)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y([BI[BI[BB[BII)Z
    .locals 14

    move-object v0, p0

    move v1, p1

    invoke-static/range {p4 .. p4}, Lpk/c;->b([B)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x39

    invoke-static {p0, p1, v2}, Lpk/c;->h([BII)[B

    move-result-object v3

    add-int/2addr v1, v2

    invoke-static {p0, v1, v2}, Lpk/c;->h([BII)[B

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v4, p3

    invoke-static {v1, v4, v2}, Lpk/c;->h([BII)[B

    move-result-object v1

    invoke-static {v3}, Lpk/c;->g([B)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const/16 v4, 0xe

    new-array v6, v4, [I

    invoke-static {v0, v6}, Lpk/e;->a([B[I)Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    :cond_1
    invoke-static {v1}, Lpk/c;->e([B)Z

    move-result v0

    if-nez v0, :cond_2

    return v5

    :cond_2
    new-instance v0, Lpk/c$d;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lpk/c$d;-><init>(Lpk/c$a;)V

    const/4 v8, 0x1

    invoke-static {v3, v8, v0}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result v9

    if-nez v9, :cond_3

    return v5

    :cond_3
    new-instance v9, Lpk/c$d;

    invoke-direct {v9, v7}, Lpk/c$d;-><init>(Lpk/c$a;)V

    invoke-static {v1, v8, v9}, Lpk/c;->k([BZLpk/c$d;)Z

    move-result v8

    if-nez v8, :cond_4

    return v5

    :cond_4
    invoke-static {}, Lpk/c;->j()LBi/a0;

    move-result-object v8

    const/16 v10, 0x72

    new-array v11, v10, [B

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-static {v8, v13, v12}, Lpk/c;->l(LBi/a0;B[B)V

    invoke-interface {v8, v3, v5, v2}, LBi/y;->update([BII)V

    invoke-interface {v8, v1, v5, v2}, LBi/y;->update([BII)V

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-interface {v8, v1, v2, v3}, LBi/y;->update([BII)V

    invoke-interface {v8, v11, v5, v10}, LBi/a0;->e([BII)I

    invoke-static {v11}, Lpk/e;->f([B)[B

    move-result-object v1

    new-array v2, v4, [I

    invoke-static {v1, v2}, Lpk/e;->b([B[I)V

    const/16 v1, 0x8

    new-array v3, v1, [I

    new-array v1, v1, [I

    invoke-static {v2, v3, v1}, Lpk/e;->g([I[I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6, v1, v6}, Lpk/e;->d([I[I[I)V

    new-instance v2, Lpk/c$e;

    invoke-direct {v2, v7}, Lpk/c$e;-><init>(Lpk/c$a;)V

    move-object p0, v6

    move-object p1, v3

    move-object/from16 p2, v9

    move-object/from16 p3, v1

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lpk/c;->W([I[ILpk/c$d;[ILpk/c$d;Lpk/c$e;)V

    invoke-static {v2}, Lpk/c;->B(Lpk/c$e;)Z

    move-result v0

    return v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z([Lpk/c$e;)V
    .locals 7

    array-length v0, p0

    invoke-static {v0}, Lok/d;->k(I)[I

    move-result-object v1

    invoke-static {}, Lok/d;->j()[I

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Lpk/c$e;->c:[I

    invoke-static {v4, v3, v2, v3}, Lok/d;->i([II[II)V

    invoke-static {v2, v3, v1, v3}, Lok/d;->i([II[II)V

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_0

    aget-object v4, p0, v5

    iget-object v4, v4, Lpk/c$e;->c:[I

    invoke-static {v2, v4, v2}, Lok/d;->J([I[I[I)V

    mul-int/lit8 v4, v5, 0x10

    invoke-static {v2, v3, v1, v4}, Lok/d;->i([II[II)V

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v2}, Lok/d;->D([I[I)V

    invoke-static {}, Lok/d;->j()[I

    move-result-object v0

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v6, v5, 0x10

    invoke-static {v1, v6, v0, v3}, Lok/d;->i([II[II)V

    invoke-static {v0, v2, v0}, Lok/d;->J([I[I[I)V

    aget-object v6, p0, v4

    iget-object v6, v6, Lpk/c$e;->c:[I

    invoke-static {v2, v6, v2}, Lok/d;->J([I[I[I)V

    aget-object v4, p0, v4

    iget-object v4, v4, Lpk/c$e;->c:[I

    invoke-static {v0, v3, v4, v3}, Lok/d;->i([II[II)V

    move v4, v5

    goto :goto_1

    :cond_1
    aget-object p0, p0, v3

    iget-object p0, p0, Lpk/c$e;->c:[I

    invoke-static {v2, v3, p0, v3}, Lok/d;->i([II[II)V

    return-void
.end method
