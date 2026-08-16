.class public Lorg/bouncycastle/crypto/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/SecureRandom;I)LBi/j;
    .locals 2

    new-instance v0, LBi/j;

    invoke-direct {v0}, LBi/j;-><init>()V

    new-instance v1, LBi/G;

    invoke-direct {v1, p0, p1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, LBi/j;->b(LBi/G;)V

    return-object v0
.end method

.method public static b(Loh/x;Ljava/security/SecureRandom;)LBi/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, LSh/d;->H:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/16 v2, 0xc0

    if-eqz v0, :cond_1

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/16 v3, 0x100

    if-eqz v0, :cond_2

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, LSh/d;->C:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, LSh/d;->L:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, LSh/d;->U:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, LSh/d;->D:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, LSh/d;->M:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, LSh/d;->V:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, LOi/g;

    invoke-direct {p0}, LOi/g;-><init>()V

    new-instance v0, LBi/G;

    invoke-direct {v0, p1, v2}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p0, v0}, LOi/g;->b(LBi/G;)V

    return-object p0

    :cond_9
    sget-object v0, LAj/a;->a:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, LAj/a;->b:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v0, LAj/a;->c:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v0, Lwj/a;->a:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v0, Lorg/bouncycastle/crypto/util/a;->b:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v0, LBj/b;->e:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p0, LOi/f;

    invoke-direct {p0}, LOi/f;-><init>()V

    new-instance v0, LBi/G;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p0, v0}, LOi/f;->b(LBi/G;)V

    return-object p0

    :cond_f
    sget-object v0, LXh/t;->p1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object v0, LXh/t;->o1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/d;->a(Ljava/security/SecureRandom;I)LBi/j;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot recognise cipher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
