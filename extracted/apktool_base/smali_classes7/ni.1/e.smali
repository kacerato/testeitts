.class public Lni/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/o;

.field public b:Lth/m;


# direct methods
.method public constructor <init>(LQk/o;Lth/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni/e;->a:LQk/o;

    iput-object p2, p0, Lni/e;->b:Lth/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lni/e;->b:Lth/m;

    invoke-virtual {v0}, Lth/m;->v()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b()Lth/L;
    .locals 1

    iget-object v0, p0, Lni/e;->b:Lth/m;

    invoke-virtual {v0}, Lth/m;->z()Lth/L;

    move-result-object v0

    return-object v0
.end method

.method public c(Lli/h;LQk/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    new-instance v0, Lth/b;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lth/b;-><init>(Lhi/q;)V

    invoke-virtual {p1}, Lli/h;->k()Lhi/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lni/e;->d(Lth/b;Lhi/b;LQk/q;)Z

    move-result p1

    return p1
.end method

.method public d(Lth/b;Lhi/b;LQk/q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lni/e;->a:LQk/o;

    invoke-static {p1, p2, p3, v0}, Lni/a;->a(Loh/v;Lhi/b;LQk/q;LQk/o;)[B

    move-result-object p1

    iget-object p2, p0, Lni/e;->b:Lth/m;

    invoke-virtual {p2}, Lth/m;->u()Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1
.end method
