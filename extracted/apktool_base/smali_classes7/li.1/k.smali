.class public Lli/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/q0;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p6, :cond_0

    new-instance v0, Lhi/q0;

    invoke-direct {v0}, Lhi/q0;-><init>()V

    iput-object v0, p0, Lli/k;->a:Lhi/q0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lhi/q0;->f(Loh/s;)V

    iget-object p2, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {p2, p1}, Lhi/q0;->d(Lfi/d;)V

    iget-object p1, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {p1, p3}, Lhi/q0;->h(Lhi/o0;)V

    iget-object p1, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {p1, p4}, Lhi/q0;->b(Lhi/o0;)V

    iget-object p1, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {p1, p5}, Lhi/q0;->j(Lfi/d;)V

    iget-object p1, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {p1, p6}, Lhi/q0;->l(Lhi/h0;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "publicKeyInfo must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "issuer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V
    .locals 7

    .line 2
    new-instance v3, Lhi/o0;

    invoke-direct {v3, p3}, Lhi/o0;-><init>(Ljava/util/Date;)V

    new-instance v4, Lhi/o0;

    invoke-direct {v4, p4}, Lhi/o0;-><init>(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lli/k;-><init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lfi/d;Lhi/h0;)V
    .locals 7

    .line 3
    new-instance v3, Lhi/o0;

    invoke-direct {v3, p3, p5}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lhi/o0;

    invoke-direct {v4, p4, p5}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lli/k;-><init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V

    return-void
.end method


# virtual methods
.method public a(LQk/f;)Lli/h;
    .locals 2

    iget-object v0, p0, Lli/k;->a:Lhi/q0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/q0;->g(Lhi/b;)V

    iget-object v0, p0, Lli/k;->a:Lhi/q0;

    invoke-virtual {v0}, Lhi/q0;->a()Lhi/j0;

    move-result-object v0

    invoke-static {p1, v0}, Lli/c;->i(LQk/f;Lhi/j0;)Lli/h;

    move-result-object p1

    return-object p1
.end method
