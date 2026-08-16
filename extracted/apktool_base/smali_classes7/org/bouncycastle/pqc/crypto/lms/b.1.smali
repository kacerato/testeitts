.class public Lorg/bouncycastle/pqc/crypto/lms/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/lms/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;)LBi/y;
    .locals 3

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, LIi/L;

    invoke-direct {p0}, LIi/L;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, LSh/d;->t:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LIi/Q;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, LIi/Q;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Loh/x;I)LBi/y;
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->a(Loh/x;)LBi/y;

    move-result-object v0

    sget-object v1, LSh/d;->t:Loh/x;

    invoke-virtual {v1, p0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0}, LBi/y;->f()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/b$a;-><init>(LBi/y;I)V

    return-object p0
.end method

.method public static c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->b()Loh/x;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->b(Loh/x;I)LBi/y;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/bouncycastle/pqc/crypto/lms/A;)LBi/y;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/A;->b()Loh/x;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/A;->d()I

    move-result p0

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/b;->b(Loh/x;I)LBi/y;

    move-result-object p0

    return-object p0
.end method
