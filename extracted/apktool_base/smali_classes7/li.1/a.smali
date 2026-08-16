.class public Lli/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# static fields
.field public static c:LQk/q;


# instance fields
.field public final b:Lhi/I;


# direct methods
.method public constructor <init>(ILoh/x;Loh/x;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/I;

    new-instance v1, Lhi/S;

    new-instance v2, Lhi/b;

    invoke-direct {v2, p2}, Lhi/b;-><init>(Loh/x;)V

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {v1, p1, p3, v2, p2}, Lhi/S;-><init>(ILoh/x;Lhi/b;[B)V

    invoke-direct {v0, v1}, Lhi/I;-><init>(Lhi/S;)V

    iput-object v0, p0, Lli/a;->b:Lhi/I;

    return-void
.end method

.method public constructor <init>(Lfi/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/I;

    invoke-virtual {p0, p1}, Lli/a;->a(Lfi/d;)Lhi/F;

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/I;-><init>(Lhi/F;)V

    iput-object v0, p0, Lli/a;->b:Lhi/I;

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/I;

    new-instance v1, Lhi/K;

    invoke-virtual {p0, p1}, Lli/a;->a(Lfi/d;)Lhi/F;

    move-result-object p1

    new-instance v2, Loh/s;

    invoke-direct {v2, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lhi/K;-><init>(Lhi/F;Loh/s;)V

    invoke-direct {v0, v1}, Lhi/I;-><init>(Lhi/K;)V

    iput-object v0, p0, Lli/a;->b:Lhi/I;

    return-void
.end method

.method public constructor <init>(Lli/h;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/I;

    new-instance v1, Lhi/K;

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lli/a;->a(Lfi/d;)Lhi/F;

    move-result-object v2

    new-instance v3, Loh/s;

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v3, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lhi/K;-><init>(Lhi/F;Loh/s;)V

    invoke-direct {v0, v1}, Lhi/I;-><init>(Lhi/K;)V

    iput-object v0, p0, Lli/a;->b:Lhi/I;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lhi/I;->w(Ljava/lang/Object;)Lhi/I;

    move-result-object p1

    iput-object p1, p0, Lli/a;->b:Lhi/I;

    return-void
.end method

.method public static k(LQk/q;)V
    .locals 0

    sput-object p0, Lli/a;->c:LQk/q;

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lli/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lli/h;

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    invoke-virtual {v0}, Lhi/K;->z()Loh/s;

    move-result-object v0

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Loh/s;->L(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object p1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    invoke-virtual {v0}, Lhi/K;->x()Lhi/F;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lli/a;->j(Lfi/d;Lhi/F;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->v()Lhi/F;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object v0

    iget-object v3, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v3}, Lhi/I;->v()Lhi/F;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lli/a;->j(Lfi/d;Lhi/F;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    sget-object v0, Lli/a;->c:LQk/q;

    iget-object v3, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v3}, Lhi/I;->x()Lhi/S;

    move-result-object v3

    invoke-virtual {v3}, Lhi/S;->u()Lhi/b;

    move-result-object v3

    invoke-interface {v0, v3}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v0

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0}, Lli/a;->c()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lli/h;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-interface {v0}, LQk/p;->b()[B

    move-result-object p1

    invoke-virtual {p0}, Lli/a;->f()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    return v2

    :catch_0
    :cond_6
    return v1
.end method

.method public final a(Lfi/d;)Lhi/F;
    .locals 2

    new-instance v0, Lhi/F;

    new-instance v1, Lhi/E;

    invoke-direct {v1, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-direct {v0, v1}, Lhi/F;-><init>(Lhi/E;)V

    return-object v0
.end method

.method public b()Lhi/b;
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    invoke-virtual {v0}, Lhi/S;->u()Lhi/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    invoke-virtual {v0}, Lhi/S;->v()Loh/j;

    move-result-object v0

    invoke-virtual {v0}, Loh/j;->L()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lli/a;

    iget-object v1, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v1}, Lhi/I;->r()Loh/B;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-direct {v0, v1}, Lli/a;-><init>(Loh/E;)V

    return-object v0
.end method

.method public d()[Lfi/d;
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->v()Lhi/F;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->v()Lhi/F;

    move-result-object v0

    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lli/a;->h([Lhi/E;)[Lfi/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()[Lfi/d;
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    invoke-virtual {v0}, Lhi/K;->x()Lhi/F;

    move-result-object v0

    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    invoke-virtual {p0, v0}, Lli/a;->h([Lhi/E;)[Lfi/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lli/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lli/a;

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    iget-object p1, p1, Lli/a;->b:Lhi/I;

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    invoke-virtual {v0}, Lhi/S;->y()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Loh/x;
    .locals 2

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->x()Lhi/S;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Loh/x;

    iget-object v1, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v1}, Lhi/I;->x()Lhi/S;

    move-result-object v1

    invoke-virtual {v1}, Lhi/S;->z()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h([Lhi/E;)[Lfi/d;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lhi/E;->g()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lhi/E;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lfi/d;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lfi/d;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/a;->b:Lhi/I;

    invoke-virtual {v0}, Lhi/I;->u()Lhi/K;

    move-result-object v0

    invoke-virtual {v0}, Lhi/K;->z()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(Lfi/d;Lhi/F;)Z
    .locals 5

    invoke-virtual {p2}, Lhi/F;->y()[Lhi/E;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lhi/E;->g()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lhi/E;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
