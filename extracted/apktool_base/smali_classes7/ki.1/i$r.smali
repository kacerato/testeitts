.class public Lki/i$r;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lki/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 8

    const-string v0, "7fffffffffffffffffffffff7fffff9e5e9a9f5d9071fbd1522688909d0b"

    invoke-static {v0}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Ljk/e$f;

    new-instance v2, Ljava/math/BigInteger;

    const-string v1, "883423532389192164791648750360308885314476597252960362792450860609699839"

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const-string v1, "7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "6b016c3bdcf18941d0d654921475ca71a9db2fb27d1d37796185c2942c0a"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v0}, Lki/i;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    const-string v0, "e43bb460f0b80cc0c0b075798e948060f8321b7d"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v2

    const-string v0, "020ffa963cdca8816ccc33b8642bedf905c3d358573d3f27fbbd3b3cb9aaaf"

    invoke-static {v2, v0}, Lki/i;->c(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v3

    new-instance v0, Lki/l;

    invoke-virtual {v2}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
