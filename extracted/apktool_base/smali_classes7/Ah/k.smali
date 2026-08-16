.class public LAh/k;
.super LAh/n;
.source "SourceFile"


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x4

.field public static final n:I = 0x8

.field public static final o:I = 0x10

.field public static final p:I = 0x20

.field public static final q:I = 0x40


# instance fields
.field public b:Loh/x;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:[B

.field public g:Ljava/math/BigInteger;

.field public h:[B

.field public i:Ljava/math/BigInteger;

.field public j:I


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, LAh/n;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, LAh/k;->b:Loh/x;

    const/4 v0, 0x0

    iput v0, p0, LAh/k;->j:I

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    const-string v3, "Unknown Object Identifier!"

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iput v0, p0, LAh/k;->j:I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v1}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v1

    invoke-virtual {v1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->G(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->K(Loh/y;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v1

    invoke-virtual {v1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->I(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v1, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->F(Loh/y;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v1

    invoke-virtual {v1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->L(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v1

    invoke-virtual {v1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->H(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v1}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v1

    invoke-virtual {v1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LAh/k;->J(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, LAh/k;->j:I

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All options must be either present or absent!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Loh/x;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, LAh/n;-><init>()V

    iput-object p1, p0, LAh/k;->b:Loh/x;

    invoke-virtual {p0, p2}, LAh/k;->J(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p3}, LAh/k;->H(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p4}, LAh/k;->L(Ljava/math/BigInteger;)V

    new-instance p1, Loh/C0;

    invoke-direct {p1, p5}, Loh/C0;-><init>([B)V

    invoke-virtual {p0, p1}, LAh/k;->F(Loh/y;)V

    invoke-virtual {p0, p6}, LAh/k;->I(Ljava/math/BigInteger;)V

    new-instance p1, Loh/C0;

    invoke-direct {p1, p7}, Loh/C0;-><init>([B)V

    invoke-virtual {p0, p1}, LAh/k;->K(Loh/y;)V

    int-to-long p1, p8

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/k;->G(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Loh/x;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LAh/n;-><init>()V

    iput-object p1, p0, LAh/k;->b:Loh/x;

    new-instance p1, Loh/C0;

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    invoke-virtual {p0, p1}, LAh/k;->K(Loh/y;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->g:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->c:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public C()[B
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->e:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, LAh/k;->c:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F(Loh/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LAh/k;->j:I

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LAh/k;->f:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Base Point G already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, LAh/k;->j:I

    iput-object p1, p0, LAh/k;->i:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cofactor F already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LAh/k;->j:I

    iput-object p1, p0, LAh/k;->d:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "First Coef A already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LAh/k;->j:I

    iput-object p1, p0, LAh/k;->g:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Order of base point R already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J(Ljava/math/BigInteger;)V
    .locals 2

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LAh/k;->j:I

    iput-object p1, p0, LAh/k;->c:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prime Modulus P already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(Loh/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, LAh/k;->j:I

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LAh/k;->h:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public Point Y already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LAh/k;->j:I

    iput-object p1, p0, LAh/k;->e:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Second Coef B already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/G0;

    iget-object v1, p0, LAh/k;->b:Loh/x;

    invoke-virtual {p0}, LAh/k;->E()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, LAh/k;->w(Loh/x;Z)Loh/h;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/h;)V

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, LAh/k;->b:Loh/x;

    return-object v0
.end method

.method public w(Loh/x;Z)Loh/h;
    .locals 4

    new-instance v0, Loh/h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    new-instance v1, LAh/p;

    const/4 v2, 0x1

    invoke-virtual {p0}, LAh/k;->B()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, LAh/p;

    const/4 v2, 0x2

    invoke-virtual {p0}, LAh/k;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, LAh/p;

    const/4 v2, 0x3

    invoke-virtual {p0}, LAh/k;->D()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LAh/k;->x()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    const/4 v3, 0x4

    invoke-direct {v1, p1, v3, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, LAh/p;

    const/4 v2, 0x5

    invoke-virtual {p0}, LAh/k;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/K0;

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LAh/k;->C()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    const/4 v3, 0x6

    invoke-direct {v1, p1, v3, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    if-nez p2, :cond_1

    new-instance p1, LAh/p;

    const/4 p2, 0x7

    invoke-virtual {p0}, LAh/k;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, p2, v1}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_1
    return-object v0
.end method

.method public x()[B
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->i:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, LAh/k;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, LAh/k;->d:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
