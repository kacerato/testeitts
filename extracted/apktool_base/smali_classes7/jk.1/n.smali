.class public Ljk/n;
.super Ljk/b;
.source "SourceFile"


# instance fields
.field public final a:Ljk/e;

.field public final b:Lnk/d;


# direct methods
.method public constructor <init>(Ljk/e;Lnk/d;)V
    .locals 1

    invoke-direct {p0}, Ljk/b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljk/n;->a:Ljk/e;

    iput-object p2, p0, Ljk/n;->b:Lnk/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need curve with known group order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Ljk/i;Ljava/math/BigInteger;)Ljk/i;
    .locals 2

    iget-object v0, p0, Ljk/n;->a:Ljk/e;

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/e;->n(Ljk/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Ljk/n;->b:Lnk/d;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lnk/d;->a(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    iget-object v1, p0, Ljk/n;->b:Lnk/d;

    invoke-interface {v1}, Lnk/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljk/n;->b:Lnk/d;

    invoke-static {v1, p1, v0, p2}, Ljk/c;->f(Lnk/a;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Ljk/n;->b:Lnk/d;

    invoke-static {v1, p1}, Lnk/c;->c(Lnk/a;Ljk/i;)Ljk/i;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Ljk/c;->e(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
