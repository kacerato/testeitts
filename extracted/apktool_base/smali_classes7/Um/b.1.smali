.class public abstract LUm/b;
.super LUm/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic h()LUm/v;
    .locals 1

    invoke-virtual {p0}, LUm/b;->p()LUm/b;

    move-result-object v0

    return-object v0
.end method

.method public m(LUm/v;)V
    .locals 1

    instance-of v0, p1, LUm/b;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LUm/v;->m(LUm/v;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent of block must also be block (can not be inline)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()LUm/b;
    .locals 1

    invoke-super {p0}, LUm/v;->h()LUm/v;

    move-result-object v0

    check-cast v0, LUm/b;

    return-object v0
.end method
