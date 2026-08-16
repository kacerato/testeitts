.class public LXh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[LXh/g;

.field public c:Z


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LXh/b;->c:Z

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [LXh/g;

    iput-object v0, p0, LXh/b;->b:[LXh/g;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LXh/b;->b:[LXh/g;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, LXh/g;->w(Ljava/lang/Object;)LXh/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Loh/g0;

    iput-boolean p1, p0, LXh/b;->c:Z

    return-void
.end method

.method public constructor <init>([LXh/g;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LXh/b;->c:Z

    invoke-virtual {p0, p1}, LXh/b;->u([LXh/g;)[LXh/g;

    move-result-object p1

    iput-object p1, p0, LXh/b;->b:[LXh/g;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LXh/b;
    .locals 1

    instance-of v0, p0, LXh/b;

    if-eqz v0, :cond_0

    check-cast p0, LXh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    iget-boolean v0, p0, LXh/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Loh/g0;

    iget-object v1, p0, LXh/b;->b:[LXh/g;

    invoke-direct {v0, v1}, Loh/g0;-><init>([Loh/g;)V

    return-object v0

    :cond_0
    new-instance v0, Loh/V0;

    iget-object v1, p0, LXh/b;->b:[LXh/g;

    invoke-direct {v0, v1}, Loh/V0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public final u([LXh/g;)[LXh/g;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [LXh/g;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public v()[LXh/g;
    .locals 1

    iget-object v0, p0, LXh/b;->b:[LXh/g;

    invoke-virtual {p0, v0}, LXh/b;->u([LXh/g;)[LXh/g;

    move-result-object v0

    return-object v0
.end method
