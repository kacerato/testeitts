.class public LLi/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/i$b;,
        LLi/i$c;
    }
.end annotation


# instance fields
.field public final a:LLi/i$b;

.field public b:LLi/i$c;

.field public c:[B

.field public d:[B

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public final o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public final u:I

.field public final v:[B

.field public w:I


# direct methods
.method public constructor <init>(LLi/i$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LLi/i$c;->Uninitialized:LLi/i$c;

    iput-object v0, p0, LLi/i;->b:LLi/i$c;

    const/4 v0, 0x0

    iput v0, p0, LLi/i;->w:I

    iput-object p1, p0, LLi/i;->a:LLi/i$b;

    sget-object v0, LLi/i$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput v2, p0, LLi/i;->f:I

    iput v2, p0, LLi/i;->g:I

    iput v1, p0, LLi/i;->h:I

    const-wide v2, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v2, p0, LLi/i;->o:J

    const-string p1, "Ascon-128 AEAD"

    :goto_0
    iput-object p1, p0, LLi/i;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter setting for ASCON AEAD"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, LLi/i;->f:I

    iput v2, p0, LLi/i;->g:I

    iput v2, p0, LLi/i;->h:I

    const-wide v2, -0x7f7ff3f800000000L

    iput-wide v2, p0, LLi/i;->o:J

    const-string p1, "Ascon-128a AEAD"

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    iput p1, p0, LLi/i;->f:I

    iput v2, p0, LLi/i;->g:I

    iput v1, p0, LLi/i;->h:I

    const-wide v2, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v2, p0, LLi/i;->o:J

    const-string p1, "Ascon-80pq AEAD"

    goto :goto_0

    :goto_1
    iget p1, p0, LLi/i;->h:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x6

    :cond_3
    iput v1, p0, LLi/i;->i:I

    iget v0, p0, LLi/i;->g:I

    add-int/2addr p1, v0

    iput p1, p0, LLi/i;->u:I

    new-array p1, p1, [B

    iput-object p1, p0, LLi/i;->v:[B

    return-void
.end method

.method private B(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LLi/i;->c:[B

    :cond_0
    iget-object p1, p0, LLi/i;->v:[B

    invoke-static {p1}, Lorg/bouncycastle/util/a;->n([B)V

    const/4 p1, 0x0

    iput p1, p0, LLi/i;->w:I

    sget-object v0, LLi/i$a;->b:[I

    iget-object v1, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, LLi/i$c;->EncFinal:LLi/i$c;

    iput-object p1, p0, LLi/i;->b:LLi/i$c;

    return-void

    :pswitch_1
    sget-object v0, LLi/i$c;->DecInit:LLi/i$c;

    iput-object v0, p0, LLi/i;->b:LLi/i$c;

    :pswitch_2
    invoke-virtual {p0}, LLi/i;->o()V

    iget-object v0, p0, LLi/i;->d:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, LLi/i;->j([BII)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A([BII[BI)V
    .locals 5

    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    iget-wide v1, p0, LLi/i;->p:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, LLi/i;->p:J

    invoke-static {v1, v2, p4, p5}, Lorg/bouncycastle/util/p;->D(J[BI)V

    add-int/2addr p2, v0

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, -0x8

    iget-wide v0, p0, LLi/i;->q:J

    invoke-virtual {p0, p3}, LLi/i;->m(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->q:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/p;->A([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, LLi/i;->q:J

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Lorg/bouncycastle/util/p;->O(J[BII)V

    goto :goto_1

    :cond_0
    iget-wide v0, p0, LLi/i;->p:J

    invoke-virtual {p0, p3}, LLi/i;->m(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->p:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/p;->A([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, LLi/i;->p:J

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, LLi/i$c;->EncFinal:LLi/i$c;

    invoke-virtual {p0, p1}, LLi/i;->s(LLi/i$c;)V

    return-void
.end method

.method public a(ZLBi/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, LXi/a;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, LXi/a;

    invoke-virtual {v0}, LXi/a;->b()LXi/o0;

    move-result-object v2

    invoke-virtual {v0}, LXi/a;->d()[B

    move-result-object v3

    invoke-virtual {v0}, LXi/a;->a()[B

    move-result-object v4

    iput-object v4, p0, LLi/i;->d:[B

    invoke-virtual {v0}, LXi/a;->c()I

    move-result v0

    iget v4, p0, LLi/i;->g:I

    mul-int/2addr v4, v1

    if-ne v0, v4, :cond_0

    goto :goto_0

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

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v2

    check-cast v2, LXi/o0;

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v3

    const/4 v0, 0x0

    iput-object v0, p0, LLi/i;->d:[B

    :goto_0
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    array-length v0, v3

    iget v4, p0, LLi/i;->g:I

    if-ne v0, v4, :cond_6

    invoke-virtual {v2}, LXi/o0;->b()[B

    move-result-object v0

    array-length v2, v0

    iget v4, p0, LLi/i;->f:I

    if-ne v2, v4, :cond_5

    new-instance v2, LHi/c;

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object v6

    invoke-direct {v2, v4, v5, p2, v6}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v2}, LBi/r;->a(LBi/n;)V

    const/4 p2, 0x0

    invoke-static {v3, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v4

    iput-wide v4, p0, LLi/i;->m:J

    invoke-static {v3, v1}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v2

    iput-wide v2, p0, LLi/i;->n:J

    iget v2, p0, LLi/i;->f:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-static {v0, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v2

    iput-wide v2, p0, LLi/i;->k:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, LLi/i;->l:J

    goto :goto_2

    :cond_2
    const/16 v1, 0x14

    if-ne v2, v1, :cond_4

    invoke-static {v0, p2}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, LLi/i;->j:J

    const/4 p2, 0x4

    invoke-static {v0, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v1

    iput-wide v1, p0, LLi/i;->k:J

    const/16 p2, 0xc

    invoke-static {v0, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v0

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    sget-object p1, LLi/i$c;->EncInit:LLi/i$c;

    goto :goto_3

    :cond_3
    sget-object p1, LLi/i$c;->DecInit:LLi/i$c;

    :goto_3
    iput-object p1, p0, LLi/i;->b:LLi/i$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LLi/i;->B(Z)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LLi/i;->a:LLi/i$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key must be "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LLi/i;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LLi/i;->a:LLi/i$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LLi/i;->g:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ascon Init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to Ascon"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLi/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-virtual {p0}, LLi/i;->q()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "output buffer too short"

    if-eqz v0, :cond_1

    iget v6, p0, LLi/i;->w:I

    iget v0, p0, LLi/i;->g:I

    add-int/2addr v0, v6

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_0

    iget-object v4, p0, LLi/i;->v:[B

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, LLi/i;->A([BII[BI)V

    iget v2, p0, LLi/i;->g:I

    new-array v2, v2, [B

    iput-object v2, p0, LLi/i;->c:[B

    iget-wide v3, p0, LLi/i;->s:J

    invoke-static {v3, v4, v2, v5}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v2, p0, LLi/i;->t:J

    iget-object v4, p0, LLi/i;->c:[B

    invoke-static {v2, v3, v4, v1}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-object v1, p0, LLi/i;->c:[B

    iget v2, p0, LLi/i;->w:I

    add-int/2addr p2, v2

    iget v2, p0, LLi/i;->g:I

    invoke-static {v1, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v5}, LLi/i;->B(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, LLi/i;->w:I

    iget v3, p0, LLi/i;->g:I

    if-lt v0, v3, :cond_4

    sub-int/2addr v0, v3

    iput v0, p0, LLi/i;->w:I

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_3

    iget-object v5, p0, LLi/i;->v:[B

    const/4 v6, 0x0

    move-object v4, p0

    move v7, v0

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, LLi/i;->z([BII[BI)V

    iget-wide p1, p0, LLi/i;->s:J

    iget-object v2, p0, LLi/i;->v:[B

    iget v3, p0, LLi/i;->w:I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v2

    xor-long/2addr p1, v2

    iput-wide p1, p0, LLi/i;->s:J

    iget-wide p1, p0, LLi/i;->t:J

    iget-object v2, p0, LLi/i;->v:[B

    iget v3, p0, LLi/i;->w:I

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v1

    xor-long/2addr p1, v1

    iput-wide p1, p0, LLi/i;->t:J

    iget-wide v1, p0, LLi/i;->s:J

    or-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LLi/i;->B(Z)V

    :goto_0
    return v0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mac check in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LLi/i;->c:[B

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_7

    invoke-virtual {p0}, LLi/i;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, LLi/i;->w:I

    if-lez v0, :cond_1

    iget v2, p0, LLi/i;->h:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_0

    iget-object p4, p0, LLi/i;->v:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, LLi/i;->w:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/i;->w:I

    return v1

    :cond_0
    iget-object v3, p0, LLi/i;->v:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, LLi/i;->v:[B

    invoke-virtual {p0, v0, v1, p4, p5}, LLi/i;->y([BI[BI)V

    iget v0, p0, LLi/i;->h:I

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, LLi/i;->h:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-virtual {p0, p1, p2, p4, v2}, LLi/i;->y([BI[BI)V

    iget v2, p0, LLi/i;->h:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, LLi/i;->u:I

    iget v2, p0, LLi/i;->w:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_3

    iget-object p4, p0, LLi/i;->v:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    iget v3, p0, LLi/i;->w:I

    iget v4, p0, LLi/i;->h:I

    if-lt v3, v4, :cond_5

    iget-object v3, p0, LLi/i;->v:[B

    add-int v4, p5, v2

    invoke-virtual {p0, v3, v1, p4, v4}, LLi/i;->x([BI[BI)V

    iget v3, p0, LLi/i;->w:I

    iget v4, p0, LLi/i;->h:I

    sub-int/2addr v3, v4

    iput v3, p0, LLi/i;->w:I

    iget-object v5, p0, LLi/i;->v:[B

    invoke-static {v5, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, LLi/i;->h:I

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_4

    iget-object p4, p0, LLi/i;->v:[B

    iget p5, p0, LLi/i;->w:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LLi/i;->w:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/i;->w:I

    return v2

    :cond_5
    sub-int/2addr v4, v3

    iget-object v0, p0, LLi/i;->v:[B

    invoke-static {p1, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    iget-object v0, p0, LLi/i;->v:[B

    add-int v3, p5, v2

    invoke-virtual {p0, v0, v1, p4, v3}, LLi/i;->x([BI[BI)V

    iget v0, p0, LLi/i;->h:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    iget v2, p0, LLi/i;->u:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-virtual {p0, p1, p2, p4, v2}, LLi/i;->x([BI[BI)V

    iget v2, p0, LLi/i;->h:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_6
    iget-object p4, p0, LLi/i;->v:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, LLi/i;->w:I

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

    sget-object v1, LLi/i$a;->b:[I

    iget-object v2, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, LLi/i;->w:I

    add-int/2addr p1, v1

    :cond_1
    iget v1, p0, LLi/i;->g:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, LLi/i;->w:I

    add-int/2addr p1, v0

    :goto_0
    iget v0, p0, LLi/i;->h:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public h(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, LLi/i$a;->b:[I

    iget-object v2, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v0, p0, LLi/i;->g:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v1, p0, LLi/i;->w:I

    add-int/2addr p1, v1

    iget v1, p0, LLi/i;->g:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    iget v0, p0, LLi/i;->w:I

    add-int/2addr p1, v0

    iget v0, p0, LLi/i;->g:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    iget v1, p0, LLi/i;->g:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
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

    invoke-virtual/range {v1 .. v6}, LLi/i;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public j([BII)V
    .locals 4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LLi/i;->p()V

    iget v0, p0, LLi/i;->w:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, LLi/i;->h:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_1

    iget-object v1, p0, LLi/i;->v:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LLi/i;->w:I

    add-int/2addr p1, p3

    iput p1, p0, LLi/i;->w:I

    return-void

    :cond_1
    iget-object v3, p0, LLi/i;->v:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, LLi/i;->v:[B

    invoke-virtual {p0, v0, v1}, LLi/i;->w([BI)V

    :cond_2
    :goto_0
    iget v0, p0, LLi/i;->h:I

    if-lt p3, v0, :cond_3

    invoke-virtual {p0, p1, p2}, LLi/i;->w([BI)V

    iget v0, p0, LLi/i;->h:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, LLi/i;->v:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, LLi/i;->w:I

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(B)V
    .locals 2

    invoke-virtual {p0}, LLi/i;->p()V

    iget-object v0, p0, LLi/i;->v:[B

    iget v1, p0, LLi/i;->w:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LLi/i;->w:I

    iget p1, p0, LLi/i;->h:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, LLi/i;->w([BI)V

    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 2

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    :cond_0
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, LLi/i;->n(J)V

    return-void
.end method

.method public final m(I)J
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    rsub-int/lit8 p1, p1, 0x38

    const-wide/16 v0, 0x80

    shl-long/2addr v0, p1

    return-wide v0
.end method

.method public final n(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, LLi/i;->p:J

    iget-wide v3, v0, LLi/i;->q:J

    xor-long v5, v1, v3

    iget-wide v7, v0, LLi/i;->r:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, LLi/i;->s:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, LLi/i;->t:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    xor-long v15, v3, v7

    xor-long/2addr v15, v13

    xor-long v15, v15, p1

    and-long v17, v9, v13

    move-wide/from16 v19, v11

    xor-long v11, v15, v17

    xor-long v15, v1, v3

    xor-long/2addr v7, v15

    xor-long v7, v7, p1

    move-wide v15, v11

    not-long v11, v1

    xor-long v17, v9, v13

    and-long v11, v11, v17

    xor-long/2addr v7, v11

    xor-long/2addr v9, v3

    xor-long/2addr v9, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v9

    const/16 v3, 0x13

    invoke-static {v5, v6, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    const/16 v9, 0x1c

    invoke-static {v5, v6, v9}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, LLi/i;->p:J

    const/16 v3, 0x27

    move-wide/from16 v4, v19

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/16 v3, 0x3d

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    iput-wide v3, v0, LLi/i;->q:J

    const/4 v3, 0x1

    move-wide v4, v15

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/4 v3, 0x6

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    not-long v3, v3

    iput-wide v3, v0, LLi/i;->r:J

    const/16 v3, 0xa

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x11

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, LLi/i;->s:J

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, LLi/i;->t:J

    return-void
.end method

.method public final o()V
    .locals 6

    iget-wide v0, p0, LLi/i;->o:J

    iput-wide v0, p0, LLi/i;->p:J

    iget v2, p0, LLi/i;->f:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    iget-wide v4, p0, LLi/i;->j:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, LLi/i;->p:J

    :cond_0
    iget-wide v0, p0, LLi/i;->k:J

    iput-wide v0, p0, LLi/i;->q:J

    iget-wide v0, p0, LLi/i;->l:J

    iput-wide v0, p0, LLi/i;->r:J

    iget-wide v0, p0, LLi/i;->m:J

    iput-wide v0, p0, LLi/i;->s:J

    iget-wide v0, p0, LLi/i;->n:J

    iput-wide v0, p0, LLi/i;->t:J

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, LLi/i;->l(I)V

    iget v0, p0, LLi/i;->f:I

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, LLi/i;->r:J

    iget-wide v2, p0, LLi/i;->j:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->r:J

    :cond_1
    iget-wide v0, p0, LLi/i;->s:J

    iget-wide v2, p0, LLi/i;->k:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->s:J

    iget-wide v0, p0, LLi/i;->t:J

    iget-wide v2, p0, LLi/i;->l:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->t:J

    return-void
.end method

.method public final p()V
    .locals 3

    sget-object v0, LLi/i$a;->b:[I

    iget-object v1, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, LLi/i$c;->EncAad:LLi/i$c;

    :goto_0
    iput-object v0, p0, LLi/i;->b:LLi/i$c;

    goto :goto_1

    :cond_2
    sget-object v0, LLi/i$c;->DecAad:LLi/i$c;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final q()Z
    .locals 3

    sget-object v0, LLi/i$a;->b:[I

    iget-object v1, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LLi/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, LLi/i$c;->EncData:LLi/i$c;

    invoke-virtual {p0, v0}, LLi/i;->r(LLi/i$c;)V

    return v2

    :pswitch_4
    sget-object v0, LLi/i$c;->DecData:LLi/i$c;

    invoke-virtual {p0, v0}, LLi/i;->r(LLi/i$c;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(LLi/i$c;)V
    .locals 11

    sget-object v0, LLi/i$a;->b:[I

    iget-object v1, p0, LLi/i;->b:LLi/i$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LLi/i;->v:[B

    iget v3, p0, LLi/i;->w:I

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    if-lt v3, v6, :cond_1

    iget-wide v7, p0, LLi/i;->p:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v9

    xor-long/2addr v7, v9

    iput-wide v7, p0, LLi/i;->p:J

    iget-wide v7, p0, LLi/i;->q:J

    iget-object v0, p0, LLi/i;->v:[B

    invoke-static {v0, v6}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v9

    iget v0, p0, LLi/i;->w:I

    sub-int/2addr v0, v6

    shl-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x38

    shl-long v2, v4, v0

    and-long/2addr v2, v9

    xor-long/2addr v2, v7

    iput-wide v2, p0, LLi/i;->q:J

    goto :goto_0

    :cond_1
    iget-wide v6, p0, LLi/i;->p:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v8

    iget v0, p0, LLi/i;->w:I

    shl-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x38

    shl-long v2, v4, v0

    and-long/2addr v2, v8

    xor-long/2addr v2, v6

    iput-wide v2, p0, LLi/i;->p:J

    :goto_0
    iget v0, p0, LLi/i;->i:I

    invoke-virtual {p0, v0}, LLi/i;->l(I)V

    :goto_1
    iget-wide v2, p0, LLi/i;->t:J

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    iput-wide v2, p0, LLi/i;->t:J

    iput v1, p0, LLi/i;->w:I

    iput-object p1, p0, LLi/i;->b:LLi/i$c;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LLi/i;->B(Z)V

    return-void
.end method

.method public final s(LLi/i$c;)V
    .locals 9

    sget-object v0, LLi/i$a;->a:[I

    iget-object v1, p0, LLi/i;->a:LLi/i$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, LLi/i;->q:J

    iget-wide v2, p0, LLi/i;->k:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->q:J

    iget-wide v0, p0, LLi/i;->r:J

    iget-wide v2, p0, LLi/i;->l:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->r:J

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-wide v0, p0, LLi/i;->r:J

    iget-wide v2, p0, LLi/i;->k:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->r:J

    iget-wide v0, p0, LLi/i;->s:J

    iget-wide v2, p0, LLi/i;->l:J

    :goto_0
    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->s:J

    goto :goto_1

    :cond_2
    iget-wide v0, p0, LLi/i;->q:J

    iget-wide v2, p0, LLi/i;->j:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, LLi/i;->k:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->q:J

    iget-wide v0, p0, LLi/i;->r:J

    shl-long v2, v5, v4

    iget-wide v5, p0, LLi/i;->l:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->r:J

    iget-wide v0, p0, LLi/i;->s:J

    shl-long v2, v5, v4

    goto :goto_0

    :goto_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, LLi/i;->l(I)V

    iget-wide v0, p0, LLi/i;->s:J

    iget-wide v2, p0, LLi/i;->k:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->s:J

    iget-wide v0, p0, LLi/i;->t:J

    iget-wide v2, p0, LLi/i;->l:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->t:J

    iput-object p1, p0, LLi/i;->b:LLi/i$c;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const-string v0, "v1.2"

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, LLi/i;->g:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LLi/i;->f:I

    return v0
.end method

.method public final w([BI)V
    .locals 4

    iget-wide v0, p0, LLi/i;->p:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->p:J

    iget v0, p0, LLi/i;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, LLi/i;->q:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, LLi/i;->q:J

    :cond_0
    iget p1, p0, LLi/i;->i:I

    invoke-virtual {p0, p1}, LLi/i;->l(I)V

    return-void
.end method

.method public final x([BI[BI)V
    .locals 4

    iget v0, p0, LLi/i;->h:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v0

    iget-wide v2, p0, LLi/i;->p:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iput-wide v0, p0, LLi/i;->p:J

    iget v0, p0, LLi/i;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p1

    iget-wide v0, p0, LLi/i;->q:J

    xor-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x8

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iput-wide p1, p0, LLi/i;->q:J

    :cond_0
    iget p1, p0, LLi/i;->i:I

    invoke-virtual {p0, p1}, LLi/i;->l(I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y([BI[BI)V
    .locals 4

    iget v0, p0, LLi/i;->h:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-wide v0, p0, LLi/i;->p:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, LLi/i;->p:J

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget v0, p0, LLi/i;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, LLi/i;->q:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, LLi/i;->q:J

    add-int/lit8 p4, p4, 0x8

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/p;->D(J[BI)V

    :cond_0
    iget p1, p0, LLi/i;->i:I

    invoke-virtual {p0, p1}, LLi/i;->l(I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z([BII[BI)V
    .locals 7

    const-wide/16 v0, -0x1

    const/16 v2, 0x8

    if-lt p3, v2, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v3

    iget-wide v5, p0, LLi/i;->p:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, LLi/i;->p:J

    invoke-static {v5, v6, p4, p5}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iput-wide v3, p0, LLi/i;->p:J

    add-int/2addr p2, v2

    add-int/2addr p5, v2

    add-int/lit8 p3, p3, -0x8

    iget-wide v2, p0, LLi/i;->q:J

    invoke-virtual {p0, p3}, LLi/i;->m(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, LLi/i;->q:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/p;->A([BII)J

    move-result-wide p1

    iget-wide v2, p0, LLi/i;->q:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, LLi/i;->q:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/p;->O(J[BII)V

    iget-wide p4, p0, LLi/i;->q:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, LLi/i;->q:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LLi/i;->p:J

    invoke-virtual {p0, p3}, LLi/i;->m(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, LLi/i;->p:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/p;->A([BII)J

    move-result-wide p1

    iget-wide v2, p0, LLi/i;->p:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, LLi/i;->p:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/p;->O(J[BII)V

    iget-wide p4, p0, LLi/i;->p:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, LLi/i;->p:J

    :cond_1
    :goto_0
    sget-object p1, LLi/i$c;->DecFinal:LLi/i$c;

    invoke-virtual {p0, p1}, LLi/i;->s(LLi/i$c;)V

    return-void
.end method
