.class public Lmk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:I = -0x1

.field public static final e:I = -0x1

.field public static final f:I = 0x11c9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmk/p;->a:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmk/p;->b:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmk/p;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lsk/g;->a([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p2, p0}, Lsk/g;->u([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x6

    const/16 p1, 0x11c9

    invoke-static {p0, p1, p2}, Lsk/o;->d(II[I)I

    :cond_1
    return-void
.end method

.method public static b([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lsk/o;->a(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lmk/p;->b:[I

    invoke-static {v0, p2, p0}, Lsk/o;->a0(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lmk/p;->c:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Lsk/o;->n(I[I[I)I

    move-result p1

    if-eqz p1, :cond_1

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lsk/o;->d0(I[II)I

    :cond_1
    return-void
.end method

.method public static c([I[I)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lsk/o;->c0(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p1, p0}, Lsk/g;->u([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x11c9

    invoke-static {v0, p0, p1}, Lsk/o;->d(II[I)I

    :cond_1
    return-void
.end method

.method public static d(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lsk/g;->q(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lmk/p;->a:[I

    invoke-static {p0, v0}, Lsk/g;->u([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lsk/g;->P([I[I)I

    :cond_0
    return-object p0
.end method

.method public static e([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lsk/o;->w0(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lmk/p;->a:[I

    invoke-static {p0, v0, p1}, Lsk/g;->a([I[I[I)I

    move-result p0

    invoke-static {v2, p1, p0}, Lsk/o;->t0(I[II)I

    :goto_0
    return-void
.end method

.method public static f([I[I)V
    .locals 1

    sget-object v0, Lmk/p;->a:[I

    invoke-static {v0, p0, p1}, Lsk/c;->b([I[I[I)V

    return-void
.end method

.method public static g([I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static h([I[I[I)V
    .locals 1

    invoke-static {}, Lsk/g;->l()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lsk/g;->A([I[I[I)V

    invoke-static {v0, p2}, Lmk/p;->m([I[I)V

    return-void
.end method

.method public static i([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lsk/g;->F([I[I[I)I

    move-result p0

    const/16 p1, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lmk/p;->b:[I

    invoke-static {p1, p2, p0}, Lsk/o;->a0(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lmk/p;->c:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lsk/o;->n(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lsk/o;->d0(I[II)I

    :cond_1
    return-void
.end method

.method public static j([I[I)V
    .locals 1

    invoke-static {p0}, Lmk/p;->g([I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p0, p0, p1}, Lsk/g;->M([I[I[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lmk/p;->a:[I

    invoke-static {v0, p0, p1}, Lsk/g;->M([I[I[I)I

    :goto_0
    return-void
.end method

.method public static k(Ljava/security/SecureRandom;[I)V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/p;->t([BI[III)V

    sget-object v1, Lmk/p;->a:[I

    invoke-static {v2, p1, v1}, Lsk/o;->i0(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static l(Ljava/security/SecureRandom;[I)V
    .locals 1

    :cond_0
    invoke-static {p0, p1}, Lmk/p;->k(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lmk/p;->g([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static m([I[I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x11c9

    const/4 v2, 0x6

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lsk/g;->B(I[II[II[II)J

    move-result-wide v0

    const/4 p0, 0x0

    const/16 v2, 0x11c9

    invoke-static {v2, v0, v1, p1, p0}, Lsk/g;->C(IJ[II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p1, p0}, Lsk/g;->u([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0, v2, p1}, Lsk/o;->d(II[I)I

    :cond_1
    return-void
.end method

.method public static n(I[I)V
    .locals 2

    const/16 v0, 0x11c9

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lsk/g;->D(II[II)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p1, p0}, Lsk/g;->u([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x6

    invoke-static {p0, v0, p1}, Lsk/o;->d(II[I)I

    :cond_2
    return-void
.end method

.method public static o([I[I)V
    .locals 1

    invoke-static {}, Lsk/g;->l()[I

    move-result-object v0

    invoke-static {p0, v0}, Lsk/g;->K([I[I)V

    invoke-static {v0, p1}, Lmk/p;->m([I[I)V

    return-void
.end method

.method public static p([II[I)V
    .locals 1

    invoke-static {}, Lsk/g;->l()[I

    move-result-object v0

    invoke-static {p0, v0}, Lsk/g;->K([I[I)V

    :goto_0
    invoke-static {v0, p2}, Lmk/p;->m([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lsk/g;->K([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static q([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lsk/g;->M([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    const/16 p1, 0x11c9

    invoke-static {p0, p1, p2}, Lsk/o;->V0(II[I)I

    :cond_0
    return-void
.end method

.method public static r([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lsk/o;->S0(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmk/p;->c:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Lsk/o;->e1(I[I[I)I

    move-result p1

    if-eqz p1, :cond_0

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lsk/o;->K(I[II)I

    :cond_0
    return-void
.end method

.method public static s([I[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1, p0, v0, p1}, Lsk/o;->F0(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lmk/p;->a:[I

    invoke-static {p1, p0}, Lsk/g;->u([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x11c9

    invoke-static {v1, p0, p1}, Lsk/o;->d(II[I)I

    :cond_1
    return-void
.end method
