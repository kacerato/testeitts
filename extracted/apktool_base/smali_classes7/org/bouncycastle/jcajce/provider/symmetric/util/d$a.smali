.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, LBi/L;->a([C)[B

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, LBi/L;->b([C)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, LBi/L;->c([C)[B

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b(II)LBi/L;
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eq p0, v1, :cond_3

    if-ne p0, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->u()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->k()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->g()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance p0, LOi/H;

    new-instance p1, LIi/l;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/l;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p0, LOi/H;

    new-instance p1, LIi/x;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/x;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_5
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->i()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance p0, LOi/H;

    new-instance p1, LIi/X;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/X;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance p0, LOi/H;

    new-instance p1, LIi/G;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/G;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->e()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance p0, LOi/H;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->c()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/H;-><init>(LBi/y;)V

    goto/16 :goto_2

    :cond_2
    new-instance p0, LOi/G;

    invoke-direct {p0}, LOi/G;-><init>()V

    goto/16 :goto_2

    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    new-instance p0, LOi/J;

    new-instance p1, LIi/S;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/S;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->s()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->q()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_d
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->o()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_e
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->m()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_f
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->u()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_10
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->k()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_11
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->g()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_12
    new-instance p0, LOi/J;

    new-instance p1, LIi/l;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/l;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto/16 :goto_2

    :pswitch_13
    new-instance p0, LOi/J;

    new-instance p1, LIi/x;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/x;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :pswitch_14
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->i()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :pswitch_15
    new-instance p0, LOi/J;

    new-instance p1, LIi/X;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/X;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :pswitch_16
    new-instance p0, LOi/J;

    new-instance p1, LIi/G;

    sget-object v0, LBi/o;->PRF:LBi/o;

    invoke-direct {p1, v0}, LIi/G;-><init>(LBi/o;)V

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :pswitch_17
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->e()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :pswitch_18
    new-instance p0, LOi/J;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->c()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/J;-><init>(LBi/y;)V

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    new-instance p0, LOi/I;

    new-instance p1, LIi/x;

    invoke-direct {p1}, LIi/x;-><init>()V

    invoke-direct {p0, p1}, LOi/I;-><init>(LBi/y;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, LOi/I;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/I;-><init>(LBi/y;)V

    goto :goto_2

    :cond_7
    new-instance p0, LOi/I;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->b()LBi/y;

    move-result-object p1

    invoke-direct {p0, p1}, LOi/I;-><init>(LBi/y;)V

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static c(Lak/a;Ljava/security/spec/AlgorithmParameterSpec;)LBi/k;
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lak/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lak/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object v0

    invoke-virtual {p0}, Lak/a;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, LBi/L;->j([B[BI)V

    invoke-virtual {p0}, Lak/a;->d()I

    move-result p0

    invoke-virtual {v0, p0}, LBi/L;->d(I)LBi/k;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)LBi/k;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object p1

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p4

    invoke-virtual {p1, p0, v0, p4}, LBi/L;->j([B[BI)V

    invoke-virtual {p1, p3}, LBi/L;->d(I)LBi/k;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    array-length p4, p2

    if-eq p3, p4, :cond_0

    aput-byte p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static e(Ljavax/crypto/spec/PBEKeySpec;III)LBi/k;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->a(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, LBi/L;->j([B[BI)V

    invoke-virtual {p2, p3}, LBi/L;->d(I)LBi/k;

    move-result-object p0

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    array-length v0, p1

    if-eq p3, v0, :cond_0

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static f(Lak/a;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;
    .locals 3

    if-eqz p1, :cond_4

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lak/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lak/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object v0

    invoke-virtual {p0}, Lak/a;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0}, Lak/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, LBi/L;->j([B[BI)V

    invoke-virtual {p0}, Lak/a;->c()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lak/a;->d()I

    move-result p1

    invoke-virtual {p0}, Lak/a;->c()I

    move-result p0

    invoke-virtual {v0, p1, p0}, LBi/L;->f(II)LBi/k;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lak/a;->d()I

    move-result p0

    invoke-virtual {v0, p0}, LBi/L;->e(I)LBi/k;

    move-result-object p0

    :goto_0
    const-string p1, "DES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p0, LXi/w0;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, LXi/k;->f([B)V

    goto :goto_1

    :cond_2
    move-object p1, p0

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, LXi/k;->f([B)V

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljavax/crypto/spec/PBEKeySpec;IIII)LBi/k;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->a(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, LBi/L;->j([B[BI)V

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3, p4}, LBi/L;->f(II)LBi/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, LBi/L;->e(I)LBi/k;

    move-result-object p0

    :goto_0
    const/4 p2, 0x0

    move p3, p2

    :goto_1
    array-length p4, p1

    if-eq p3, p4, :cond_1

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static h([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p5, :cond_3

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_3

    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->b(II)LBi/L;

    move-result-object p1

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object p2

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p5

    invoke-virtual {p1, p0, p2, p5}, LBi/L;->j([B[BI)V

    if-eqz p4, :cond_0

    invoke-virtual {p1, p3, p4}, LBi/L;->f(II)LBi/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, LBi/L;->e(I)LBi/k;

    move-result-object p0

    :goto_0
    const-string p1, "DES"

    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p0, LXi/w0;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, LXi/k;->f([B)V

    goto :goto_1

    :cond_1
    move-object p1, p0

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, LXi/k;->f([B)V

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
