.class public final LIi/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;
.implements Lorg/bouncycastle/util/n;


# static fields
.field public static final k:I = 0x20

.field public static final l:I = 0x40

.field public static final m:I = 0x40

.field public static final n:I = 0x11d

.field public static final o:I = 0xa

.field public static final p:[I

.field public static final q:[J

.field public static final r:[J

.field public static final s:[J

.field public static final t:[J

.field public static final u:[J

.field public static final v:[J

.field public static final w:[J

.field public static final x:[J

.field public static final y:[S


# instance fields
.field public final a:[J

.field public final b:LBi/o;

.field public c:[B

.field public d:I

.field public e:[S

.field public f:[J

.field public g:[J

.field public h:[J

.field public i:[J

.field public j:[J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x20

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x1f

    const/16 v4, 0x100

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    sput-object v5, LIi/a0;->p:[I

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->q:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->r:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->s:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->t:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->u:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->v:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->w:[J

    new-array v5, v4, [J

    sput-object v5, LIi/a0;->x:[J

    new-array v0, v0, [S

    sput-object v0, LIi/a0;->y:[S

    aput-short v1, v0, v3

    :goto_0
    if-ge v2, v4, :cond_0

    sget-object v0, LIi/a0;->p:[I

    aget v0, v0, v2

    invoke-static {v0}, LIi/a0;->l(I)I

    move-result v1

    invoke-static {v1}, LIi/a0;->l(I)I

    move-result v3

    xor-int v13, v3, v0

    invoke-static {v3}, LIi/a0;->l(I)I

    move-result v14

    xor-int v15, v14, v0

    sget-object v16, LIi/a0;->q:[J

    move v5, v0

    move v6, v0

    move v7, v3

    move v8, v0

    move v9, v14

    move v10, v13

    move v11, v1

    move v12, v15

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->r:[J

    move v5, v15

    move v6, v0

    move v7, v0

    move v8, v3

    move v9, v0

    move v10, v14

    move v11, v13

    move v12, v1

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->s:[J

    move v5, v1

    move v6, v15

    move v8, v0

    move v9, v3

    move v10, v0

    move v11, v14

    move v12, v13

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->t:[J

    move v5, v13

    move v6, v1

    move v7, v15

    move v9, v0

    move v10, v3

    move v11, v0

    move v12, v14

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->u:[J

    move v5, v14

    move v6, v13

    move v7, v1

    move v8, v15

    move v10, v0

    move v11, v3

    move v12, v0

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->v:[J

    move v5, v0

    move v6, v14

    move v7, v13

    move v8, v1

    move v9, v15

    move v11, v0

    move v12, v3

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->w:[J

    move v5, v3

    move v6, v0

    move v7, v14

    move v8, v13

    move v9, v1

    move v10, v15

    move v12, v0

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v5

    aput-wide v5, v16, v2

    sget-object v16, LIi/a0;->x:[J

    move v5, v0

    move v6, v3

    move v7, v0

    move v8, v14

    move v9, v13

    move v10, v1

    move v11, v15

    invoke-static/range {v5 .. v12}, LIi/a0;->m(IIIIIIII)J

    move-result-wide v0

    aput-wide v0, v16, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/a0;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, LIi/a0;->a:[J

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, LIi/a0;->c:[B

    const/4 v1, 0x0

    iput v1, p0, LIi/a0;->d:I

    const/16 v2, 0x20

    new-array v2, v2, [S

    iput-object v2, p0, LIi/a0;->e:[S

    const/16 v2, 0x8

    new-array v3, v2, [J

    iput-object v3, p0, LIi/a0;->f:[J

    new-array v3, v2, [J

    iput-object v3, p0, LIi/a0;->g:[J

    new-array v3, v2, [J

    iput-object v3, p0, LIi/a0;->h:[J

    new-array v3, v2, [J

    iput-object v3, p0, LIi/a0;->i:[J

    new-array v3, v2, [J

    iput-object v3, p0, LIi/a0;->j:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, v2

    iget-object v3, p0, LIi/a0;->a:[J

    sget-object v4, LIi/a0;->q:[J

    aget-wide v5, v4, v1

    const-wide/high16 v7, -0x100000000000000L

    and-long v4, v5, v7

    sget-object v6, LIi/a0;->r:[J

    add-int/lit8 v7, v1, 0x1

    aget-wide v7, v6, v7

    const-wide/high16 v9, 0xff000000000000L

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->s:[J

    add-int/lit8 v7, v1, 0x2

    aget-wide v7, v6, v7

    const-wide v9, 0xff0000000000L

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->t:[J

    add-int/lit8 v7, v1, 0x3

    aget-wide v7, v6, v7

    const-wide v9, 0xff00000000L

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->u:[J

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v6, v7

    const-wide v9, 0xff000000L

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->v:[J

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v6, v7

    const-wide/32 v9, 0xff0000

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->w:[J

    add-int/lit8 v7, v1, 0x6

    aget-wide v7, v6, v7

    const-wide/32 v9, 0xff00

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    sget-object v6, LIi/a0;->x:[J

    add-int/lit8 v1, v1, 0x7

    aget-wide v7, v6, v1

    const-wide/16 v9, 0xff

    and-long v6, v7, v9

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LIi/a0;->b:LBi/o;

    invoke-virtual {p0}, LIi/a0;->f()I

    move-result v0

    invoke-static {p0, v0, p1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public constructor <init>(LIi/a0;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, LIi/a0;->a:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, LIi/a0;->c:[B

    const/4 v0, 0x0

    iput v0, p0, LIi/a0;->d:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, LIi/a0;->e:[S

    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, LIi/a0;->f:[J

    new-array v1, v0, [J

    iput-object v1, p0, LIi/a0;->g:[J

    new-array v1, v0, [J

    iput-object v1, p0, LIi/a0;->h:[J

    new-array v1, v0, [J

    iput-object v1, p0, LIi/a0;->i:[J

    new-array v0, v0, [J

    iput-object v0, p0, LIi/a0;->j:[J

    iget-object v0, p1, LIi/a0;->b:LBi/o;

    iput-object v0, p0, LIi/a0;->b:LBi/o;

    invoke-virtual {p0, p1}, LIi/a0;->j(Lorg/bouncycastle/util/n;)V

    invoke-virtual {p0}, LIi/a0;->f()I

    move-result p1

    invoke-static {p0, p1, v0}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method private d()V
    .locals 5

    invoke-virtual {p0}, LIi/a0;->a()[B

    move-result-object v0

    iget-object v1, p0, LIi/a0;->c:[B

    iget v2, p0, LIi/a0;->d:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LIi/a0;->d:I

    array-length v3, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1, v4}, LIi/a0;->o([BI)V

    :cond_0
    iget v1, p0, LIi/a0;->d:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    :goto_0
    iget v1, p0, LIi/a0;->d:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, LIi/a0;->update(B)V

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, LIi/a0;->d:I

    if-gt v1, v2, :cond_2

    invoke-virtual {p0, v4}, LIi/a0;->update(B)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LIi/a0;->c:[B

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/a0;->c:[B

    invoke-virtual {p0, v0, v4}, LIi/a0;->o([BI)V

    return-void
.end method

.method public static l(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x7

    neg-int p0, p0

    and-int/lit16 p0, p0, 0x11d

    xor-int/2addr p0, v0

    return p0
.end method

.method public static m(IIIIIIII)J
    .locals 3

    int-to-long v0, p0

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/16 v2, 0x30

    shl-long/2addr p0, v2

    xor-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x28

    shl-long/2addr v0, p2

    xor-long/2addr p0, v0

    int-to-long p2, p3

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    xor-long/2addr p0, p2

    int-to-long p2, p4

    const/16 p4, 0x18

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p5

    const/16 p4, 0x10

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p6

    const/16 p4, 0x8

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p7

    xor-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a()[B
    .locals 4

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, LIi/a0;->e:[S

    aget-short v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    invoke-direct {p0}, LIi/a0;->d()V

    iget-object v0, p0, LIi/a0;->f:[J

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/p;->G([J[BI)V

    invoke-virtual {p0}, LIi/a0;->reset()V

    invoke-virtual {p0}, LIi/a0;->f()I

    move-result p1

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/a0;

    invoke-direct {v0, p0}, LIi/a0;-><init>(LIi/a0;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 4

    check-cast p1, LIi/a0;

    iget-object v0, p1, LIi/a0;->a:[J

    iget-object v1, p0, LIi/a0;->a:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/a0;->c:[B

    iget-object v1, p0, LIi/a0;->c:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LIi/a0;->d:I

    iput v0, p0, LIi/a0;->d:I

    iget-object v0, p1, LIi/a0;->e:[S

    iget-object v1, p0, LIi/a0;->e:[S

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/a0;->f:[J

    iget-object v1, p0, LIi/a0;->f:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/a0;->g:[J

    iget-object v1, p0, LIi/a0;->g:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/a0;->h:[J

    iget-object v1, p0, LIi/a0;->h:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/a0;->i:[J

    iget-object v1, p0, LIi/a0;->i:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, LIi/a0;->j:[J

    iget-object v0, p0, LIi/a0;->j:[J

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, LIi/a0;->e:[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, LIi/a0;->e:[S

    aget-short v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    sget-object v4, LIi/a0;->y:[S

    aget-short v4, v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    ushr-int/lit8 v1, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    iget-object v3, v0, LIi/a0;->j:[J

    iget-object v4, v0, LIi/a0;->i:[J

    aget-wide v5, v4, v2

    iget-object v4, v0, LIi/a0;->g:[J

    iget-object v7, v0, LIi/a0;->f:[J

    aget-wide v8, v7, v2

    aput-wide v8, v4, v2

    xor-long v4, v5, v8

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_1
    const/16 v4, 0xa

    if-gt v2, v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x10

    const/16 v6, 0x18

    const/16 v7, 0x20

    const/16 v8, 0x28

    const/16 v9, 0x30

    const/16 v10, 0x38

    if-ge v4, v3, :cond_1

    iget-object v11, v0, LIi/a0;->h:[J

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v4

    sget-object v12, LIi/a0;->q:[J

    iget-object v13, v0, LIi/a0;->g:[J

    and-int/lit8 v14, v4, 0x7

    aget-wide v14, v13, v14

    ushr-long/2addr v14, v10

    long-to-int v10, v14

    and-int/lit16 v10, v10, 0xff

    aget-wide v14, v12, v10

    aput-wide v14, v11, v4

    sget-object v10, LIi/a0;->r:[J

    add-int/lit8 v12, v4, -0x1

    and-int/lit8 v12, v12, 0x7

    aget-wide v16, v13, v12

    move/from16 v18, v2

    ushr-long v1, v16, v9

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    aget-wide v1, v10, v1

    xor-long/2addr v1, v14

    aput-wide v1, v11, v4

    sget-object v9, LIi/a0;->s:[J

    add-int/lit8 v10, v4, -0x2

    and-int/lit8 v10, v10, 0x7

    aget-wide v14, v13, v10

    ushr-long/2addr v14, v8

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    aget-wide v8, v9, v8

    xor-long/2addr v1, v8

    aput-wide v1, v11, v4

    sget-object v8, LIi/a0;->t:[J

    add-int/lit8 v9, v4, -0x3

    and-int/lit8 v9, v9, 0x7

    aget-wide v9, v13, v9

    ushr-long/2addr v9, v7

    long-to-int v7, v9

    and-int/lit16 v7, v7, 0xff

    aget-wide v7, v8, v7

    xor-long/2addr v1, v7

    aput-wide v1, v11, v4

    sget-object v7, LIi/a0;->u:[J

    add-int/lit8 v8, v4, -0x4

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v13, v8

    ushr-long/2addr v8, v6

    long-to-int v6, v8

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v7, v6

    xor-long/2addr v1, v6

    aput-wide v1, v11, v4

    sget-object v6, LIi/a0;->v:[J

    add-int/lit8 v7, v4, -0x5

    and-int/lit8 v7, v7, 0x7

    aget-wide v7, v13, v7

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit16 v5, v5, 0xff

    aget-wide v5, v6, v5

    xor-long/2addr v1, v5

    aput-wide v1, v11, v4

    sget-object v5, LIi/a0;->w:[J

    add-int/lit8 v6, v4, -0x6

    and-int/lit8 v6, v6, 0x7

    aget-wide v6, v13, v6

    ushr-long/2addr v6, v3

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v5, v6

    xor-long/2addr v1, v6

    aput-wide v1, v11, v4

    sget-object v5, LIi/a0;->x:[J

    add-int/lit8 v6, v4, -0x7

    and-int/lit8 v6, v6, 0x7

    aget-wide v6, v13, v6

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v5, v6

    xor-long/2addr v1, v6

    aput-wide v1, v11, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_1
    move/from16 v18, v2

    iget-object v1, v0, LIi/a0;->h:[J

    iget-object v2, v0, LIi/a0;->g:[J

    array-length v4, v2

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, LIi/a0;->g:[J

    aget-wide v12, v1, v11

    iget-object v2, v0, LIi/a0;->a:[J

    aget-wide v14, v2, v18

    xor-long/2addr v12, v14

    aput-wide v12, v1, v11

    const/4 v11, 0x0

    :goto_3
    iget-object v1, v0, LIi/a0;->h:[J

    if-ge v11, v3, :cond_2

    iget-object v2, v0, LIi/a0;->g:[J

    aget-wide v13, v2, v11

    aput-wide v13, v1, v11

    sget-object v2, LIi/a0;->q:[J

    iget-object v4, v0, LIi/a0;->j:[J

    and-int/lit8 v15, v11, 0x7

    aget-wide v15, v4, v15

    ushr-long v5, v15, v10

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    aget-wide v5, v2, v5

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->r:[J

    add-int/lit8 v13, v11, -0x1

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    ushr-long/2addr v13, v9

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->s:[J

    add-int/lit8 v13, v11, -0x2

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    ushr-long/2addr v13, v8

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->t:[J

    add-int/lit8 v13, v11, -0x3

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    ushr-long/2addr v13, v7

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->u:[J

    add-int/lit8 v13, v11, -0x4

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    const/16 v15, 0x18

    ushr-long/2addr v13, v15

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->v:[J

    add-int/lit8 v13, v11, -0x5

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    const/16 v16, 0x10

    ushr-long v13, v13, v16

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->w:[J

    add-int/lit8 v13, v11, -0x6

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    ushr-long/2addr v13, v3

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v2, v13

    xor-long/2addr v5, v13

    aput-wide v5, v1, v11

    sget-object v2, LIi/a0;->x:[J

    add-int/lit8 v13, v11, -0x7

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v4, v13

    long-to-int v4, v13

    and-int/lit16 v4, v4, 0xff

    aget-wide v13, v2, v4

    xor-long v4, v5, v13

    aput-wide v4, v1, v11

    add-int/lit8 v11, v11, 0x1

    move v6, v15

    move/from16 v5, v16

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, LIi/a0;->j:[J

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v18, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    move v1, v5

    :goto_4
    if-ge v1, v3, :cond_4

    iget-object v2, v0, LIi/a0;->f:[J

    aget-wide v4, v2, v1

    iget-object v6, v0, LIi/a0;->j:[J

    aget-wide v7, v6, v1

    iget-object v6, v0, LIi/a0;->i:[J

    aget-wide v9, v6, v1

    xor-long v6, v7, v9

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final o([BI)V
    .locals 1

    iget-object p1, p0, LIi/a0;->c:[B

    iget-object p2, p0, LIi/a0;->i:[J

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/p;->e([BI[J)V

    invoke-virtual {p0}, LIi/a0;->n()V

    iput v0, p0, LIi/a0;->d:I

    iget-object p1, p0, LIi/a0;->c:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LIi/a0;->d:I

    iget-object v1, p0, LIi/a0;->e:[S

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->p0([SS)V

    iget-object v1, p0, LIi/a0;->c:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/a0;->f:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->l0([JJ)V

    iget-object v0, p0, LIi/a0;->g:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->l0([JJ)V

    iget-object v0, p0, LIi/a0;->h:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->l0([JJ)V

    iget-object v0, p0, LIi/a0;->i:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->l0([JJ)V

    iget-object v0, p0, LIi/a0;->j:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->l0([JJ)V

    return-void
.end method

.method public update(B)V
    .locals 2

    .line 1
    iget-object v0, p0, LIi/a0;->c:[B

    iget v1, p0, LIi/a0;->d:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LIi/a0;->d:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, LIi/a0;->o([BI)V

    :cond_0
    invoke-virtual {p0}, LIi/a0;->k()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    .line 2
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, LIi/a0;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
