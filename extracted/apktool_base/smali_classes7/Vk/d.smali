.class public LVk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVk/d$b;,
        LVk/d$c;
    }
.end annotation


# static fields
.field public static final a:LVk/d$b;

.field public static final b:LVk/d$b;

.field public static final c:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LVk/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LVk/d$b;-><init>(LVk/d$a;)V

    sput-object v0, LVk/d;->a:LVk/d$b;

    new-instance v0, LVk/d$b;

    invoke-direct {v0, v1}, LVk/d$b;-><init>(LVk/d$a;)V

    sput-object v0, LVk/d;->b:LVk/d$b;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVk/d;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhi/h0;)V
    .locals 4

    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lki/r;->I5:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object p0

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    invoke-static {p0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object p0

    invoke-virtual {p0}, Lki/j;->y()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lki/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lki/j;->x()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lki/p;->v(Ljava/lang/Object;)Lki/p;

    move-result-object p0

    invoke-virtual {p0}, Lki/p;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lki/r;->x5:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lki/p;->x()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, LVk/d;->a:LVk/d$b;

    invoke-virtual {v0, p0}, LVk/d$b;->c(Ljava/math/BigInteger;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "org.bouncycastle.ec.fp_max_size"

    const/16 v2, 0x412

    invoke-static {v1, v2}, LVk/d$c;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "org.bouncycastle.ec.fp_certainty"

    const/16 v3, 0x64

    invoke-static {v2, v3}, LVk/d$c;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-lt v1, v3, :cond_3

    invoke-static {p0}, Lik/a;->e(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v3, v2}, LVk/d;->b(II)I

    move-result v2

    invoke-static {p0, v1, v2}, Lik/a;->l(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fp q value not prime"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fp q value out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v1, LXh/t;->H0:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lhi/E0;->W4:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, LXh/t;->N0:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, LXh/t;->Q0:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lhi/h0;->A()Loh/B;

    move-result-object p0

    invoke-static {p0}, LXh/A;->u(Ljava/lang/Object;)LXh/A;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, LXh/A;->y()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    sget-object v0, LVk/d;->b:LVk/d$b;

    invoke-virtual {p0}, LXh/A;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, LVk/d$b;->c(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, LXh/A;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, LVk/d;->f(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LXh/A;->x()Ljava/math/BigInteger;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, LVk/d$b;->a(Ljava/math/BigInteger;)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA publicExponent is even"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse RSA key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)I
    .locals 4

    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_2

    if-gt p1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x7f

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    :goto_0
    return v1

    :cond_2
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_5

    if-gt p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x70

    if-gt p1, p0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x6f

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x5

    :goto_1
    return v1

    :cond_5
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_8

    if-gt p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x7

    if-gt p1, v2, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 p1, p1, -0x63

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    :goto_2
    return v3

    :cond_8
    const/16 p0, 0x28

    if-gt p1, v1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 p1, p1, -0x4f

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_3
    return p0
.end method

.method public static c(Ljava/math/BigInteger;)Z
    .locals 3

    sget-object v0, LVk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/util/b;->q(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, LVk/d$c;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, LVk/d$c;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/math/BigInteger;)V
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const-string v0, "org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {v0}, LVk/d$c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "org.bouncycastle.rsa.max_size"

    const/16 v1, 0x4000

    invoke-static {v0, v1}, LVk/d$c;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-lt v0, v1, :cond_6

    invoke-static {p0}, LVk/d;->c(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x600

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0x400

    if-lt v0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v1, 0x200

    if-lt v0, v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const/16 v0, 0x32

    :goto_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lik/a;->b(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lik/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lik/a$b;->f()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA modulus is not composite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA modulus has a small prime factor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA modulus out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA modulus is even"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
