.class public LVk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LXh/v;

.field public final b:[Lli/h;


# direct methods
.method public constructor <init>(LXh/v;Lli/h;)V
    .locals 0

    .line 1
    filled-new-array {p2}, [Lli/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LVk/b;-><init>(LXh/v;[Lli/h;)V

    return-void
.end method

.method public constructor <init>(LXh/v;[Lli/h;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVk/b;->a:LXh/v;

    array-length p1, p2

    new-array p1, p1, [Lli/h;

    iput-object p1, p0, LVk/b;->b:[Lli/h;

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()Lli/h;
    .locals 2

    iget-object v0, p0, LVk/b;->b:[Lli/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()[Lli/h;
    .locals 4

    iget-object v0, p0, LVk/b;->b:[Lli/h;

    array-length v1, v0

    new-array v2, v1, [Lli/h;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public c()LXh/v;
    .locals 1

    iget-object v0, p0, LVk/b;->a:LXh/v;

    return-object v0
.end method

.method public d()Lorg/bouncycastle/cms/F0;
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/q0;

    iget-object v1, p0, LVk/b;->b:[Lli/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lli/h;->e()Lfi/d;

    move-result-object v1

    iget-object v3, p0, LVk/b;->b:[Lli/h;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LVk/b;->e()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/cms/q0;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public final e()[B
    .locals 2

    iget-object v0, p0, LVk/b;->b:[Lli/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lli/h;->d()Lhi/C;

    move-result-object v0

    invoke-static {v0}, Lhi/g0;->u(Lhi/C;)Lhi/g0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lhi/g0;->x()[B

    move-result-object v0

    return-object v0
.end method
