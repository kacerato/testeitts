.class public abstract LAi/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/A0;


# instance fields
.field public final c:[C

.field public d:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LAi/j;->d:I

    iput-object p1, p0, LAi/j;->c:[C

    return-void
.end method


# virtual methods
.method public c(ILhi/b;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p2

    if-nez p1, :cond_0

    iget-object p1, p0, LAi/j;->c:[C

    invoke-static {p1}, LBi/L;->b([C)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LAi/j;->c:[C

    invoke-static {p1}, LBi/L;->c([C)[B

    move-result-object p1

    :goto_0
    :try_start_0
    new-instance v0, LOi/J;

    invoke-virtual {p2}, LXh/q;->y()Lhi/b;

    move-result-object v1

    invoke-static {v1}, LAi/p;->f(Lhi/b;)LBi/D;

    move-result-object v1

    invoke-direct {v0, v1}, LOi/J;-><init>(LBi/y;)V

    invoke-virtual {p2}, LXh/q;->z()[B

    move-result-object v1

    invoke-virtual {p2}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, LBi/L;->j([B[BI)V

    invoke-virtual {v0, p3}, LOi/J;->e(I)LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception creating derived key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public e()I
    .locals 1

    iget v0, p0, LAi/j;->d:I

    return v0
.end method

.method public g(Lhi/b;Lhi/b;[B[B)LXi/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-static {p2}, LAi/p;->c(Loh/x;)LBi/Z;

    move-result-object p2

    new-instance v0, LXi/w0;

    new-instance v1, LXi/o0;

    invoke-direct {v1, p3}, LXi/o0;-><init>([B)V

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, LXi/w0;-><init>(LBi/k;[B)V

    const/4 p1, 0x0

    invoke-interface {p2, p1, v0}, LBi/Z;->a(ZLBi/k;)V

    :try_start_0
    new-instance p3, LXi/o0;

    array-length v0, p4

    invoke-interface {p2, p4, p1, v0}, LBi/Z;->d([BII)[B

    move-result-object p1

    invoke-direct {p3, p1}, LXi/o0;-><init>([B)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unable to unwrap key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, LAi/j;->c:[C

    return-object v0
.end method

.method public h(I)LAi/j;
    .locals 0

    iput p1, p0, LAi/j;->d:I

    return-object p0
.end method
