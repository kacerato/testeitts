.class public LLi/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/u0$a;,
        LLi/u0$b;,
        LLi/u0$c;,
        LLi/u0$d;
    }
.end annotation


# static fields
.field public static final h:I = 0x100

.field public static final i:I = 0x200

.field public static final j:I = 0x400

.field public static final k:I = 0x10

.field public static final l:I = 0x2

.field public static final m:I = 0x48

.field public static final n:I = 0x48

.field public static final o:I = 0x50

.field public static final p:I = 0x50

.field public static final q:J = 0x1bd11bdaa9fc1a22L

.field public static r:[I

.field public static s:[I

.field public static t:[I

.field public static u:[I


# instance fields
.field public a:I

.field public b:I

.field public c:[J

.field public d:[J

.field public e:[J

.field public f:LLi/u0$d;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x50

    new-array v0, v0, [I

    sput-object v0, LLi/u0;->r:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, LLi/u0;->s:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, LLi/u0;->t:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LLi/u0;->u:[I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLi/u0;->r:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, LLi/u0;->s:[I

    rem-int/lit8 v3, v0, 0x11

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    sget-object v1, LLi/u0;->t:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    sget-object v1, LLi/u0;->u:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, LLi/u0;->d:[J

    div-int/lit8 v1, p1, 0x8

    iput v1, p0, LLi/u0;->a:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, LLi/u0;->b:I

    new-array v2, v1, [J

    iput-object v2, p0, LLi/u0;->c:[J

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, LLi/u0;->e:[J

    const/16 v2, 0x100

    if-eq p1, v2, :cond_2

    const/16 v2, 0x200

    if-eq p1, v2, :cond_1

    const/16 v2, 0x400

    if-ne p1, v2, :cond_0

    new-instance p1, LLi/u0$a;

    invoke-direct {p1, v1, v0}, LLi/u0$a;-><init>([J[J)V

    :goto_0
    iput-object p1, p0, LLi/u0;->f:LLi/u0$d;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, LLi/u0$c;

    invoke-direct {p1, v1, v0}, LLi/u0$c;-><init>([J[J)V

    goto :goto_0

    :cond_2
    new-instance p1, LLi/u0$b;

    invoke-direct {p1, v1, v0}, LLi/u0$b;-><init>([J[J)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic f()[I
    .locals 1

    sget-object v0, LLi/u0;->t:[I

    return-object v0
.end method

.method public static synthetic i()[I
    .locals 1

    sget-object v0, LLi/u0;->u:[I

    return-object v0
.end method

.method public static synthetic j()[I
    .locals 1

    sget-object v0, LLi/u0;->r:[I

    return-object v0
.end method

.method public static synthetic k()[I
    .locals 1

    sget-object v0, LLi/u0;->s:[I

    return-object v0
.end method

.method public static l([BI)J
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/p;->x([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static o(JIJ)J
    .locals 2

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method public static r(J[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/p;->J(J[BI)V

    return-void
.end method

.method public static s(JIJ)J
    .locals 0

    xor-long/2addr p0, p3

    ushr-long p3, p0, p2

    neg-int p2, p2

    shl-long/2addr p0, p2

    or-long/2addr p0, p3

    return-wide p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, LXi/L0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/L0;

    invoke-virtual {v0}, LXi/L0;->a()LXi/o0;

    move-result-object v2

    invoke-virtual {v2}, LXi/o0;->b()[B

    move-result-object v2

    invoke-virtual {v0}, LXi/L0;->b()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p2, LXi/o0;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v2

    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    array-length v4, v2

    iget v5, p0, LLi/u0;->a:I

    if-ne v4, v5, :cond_1

    iget v4, p0, LLi/u0;->b:I

    new-array v4, v4, [J

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/p;->y([BI[J)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Threefish key must be same size as block ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LLi/u0;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eqz v0, :cond_4

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [J

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/p;->y([BI[J)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Threefish tweak must be 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v4, v1}, LLi/u0;->m(Z[J[J)V

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/u0;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to Threefish init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LLi/u0;->a:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LLi/u0;->a:I

    return v0
.end method

.method public g([BI[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, LLi/u0;->a:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LLi/u0;->c:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/p;->y([BI[J)V

    iget-object p1, p0, LLi/u0;->c:[J

    invoke-virtual {p0, p1, p1}, LLi/u0;->n([J[J)I

    iget-object p1, p0, LLi/u0;->c:[J

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/p;->L([J[BI)V

    iget p1, p0, LLi/u0;->a:I

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Z[J[J)V
    .locals 0

    iput-boolean p1, p0, LLi/u0;->g:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, LLi/u0;->p([J)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, LLi/u0;->q([J)V

    :cond_1
    return-void
.end method

.method public n([J[J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, LLi/u0;->e:[J

    iget v1, p0, LLi/u0;->b:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    array-length v0, p1

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LLi/u0;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLi/u0;->f:LLi/u0$d;

    invoke-virtual {v0, p1, p2}, LLi/u0$d;->b([J[J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLi/u0;->f:LLi/u0$d;

    invoke-virtual {v0, p1, p2}, LLi/u0$d;->a([J[J)V

    :goto_0
    iget p1, p0, LLi/u0;->b:I

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Threefish engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p([J)V
    .locals 7

    array-length v0, p1

    iget v1, p0, LLi/u0;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-wide v1, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    move v3, v0

    :goto_0
    iget v4, p0, LLi/u0;->b:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, LLi/u0;->e:[J

    aget-wide v5, p1, v3

    aput-wide v5, v4, v3

    xor-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LLi/u0;->e:[J

    aput-wide v1, p1, v4

    add-int/lit8 v1, v4, 0x1

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Threefish key must be same size as block ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LLi/u0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " words)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q([J)V
    .locals 9

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LLi/u0;->d:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v5, p1, v2

    aput-wide v5, v0, v2

    xor-long v7, v3, v5

    aput-wide v7, v0, v1

    const/4 p1, 0x3

    aput-wide v3, v0, p1

    const/4 p1, 0x4

    aput-wide v5, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tweak must be 2 words."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
