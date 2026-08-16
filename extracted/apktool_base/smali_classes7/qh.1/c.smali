.class public Lqh/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LXh/j;

.field public final c:[Lhi/q;


# direct methods
.method public constructor <init>(LXh/j;[Lhi/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/c;->b:LXh/j;

    array-length p1, p2

    new-array p1, p1, [Lhi/q;

    iput-object p1, p0, Lqh/c;->c:[Lhi/q;

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/j;->w(Ljava/lang/Object;)LXh/j;

    move-result-object v1

    iput-object v1, p0, Lqh/c;->b:LXh/j;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    new-array v1, v1, [Lhi/q;

    iput-object v1, p0, Lqh/c;->c:[Lhi/q;

    :goto_0
    iget-object v1, p0, Lqh/c;->c:[Lhi/q;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lqh/c;
    .locals 1

    instance-of v0, p0, Lqh/c;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lqh/c;->b:LXh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lqh/c;->c:[Lhi/q;

    invoke-direct {v1, v2}, Loh/G0;-><init>([Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lhi/q;
    .locals 4

    iget-object v0, p0, Lqh/c;->c:[Lhi/q;

    array-length v1, v0

    new-array v1, v1, [Lhi/q;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public v()LXh/j;
    .locals 1

    iget-object v0, p0, Lqh/c;->b:LXh/j;

    return-object v0
.end method
