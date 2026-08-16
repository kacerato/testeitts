.class public final LB2/s$c;
.super LB2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public varargs constructor <init>([LB2/q;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1}, LB2/b;-><init>([LB2/q;)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4
    invoke-interface {v3}, LB2/q;->h()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const-string v5, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    .line 5
    invoke-interface {v3}, LB2/q;->h()I

    move-result v6

    .line 6
    invoke-static {v4, v5, v6, v3}, Lw2/H;->o(ZLjava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>([LB2/q;LB2/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LB2/s$c;-><init>([LB2/q;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, LB2/s$c;

    if-eqz v0, :cond_0

    check-cast p1, LB2/s$c;

    iget-object v0, p0, LB2/b;->b:[LB2/q;

    iget-object p1, p1, LB2/b;->b:[LB2/q;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()I
    .locals 5

    iget-object v0, p0, LB2/b;->b:[LB2/q;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, LB2/q;->h()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LB2/b;->b:[LB2/q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m([LB2/r;)LB2/p;
    .locals 6

    invoke-virtual {p0}, LB2/s$c;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    invoke-interface {v4}, LB2/r;->h()LB2/p;

    move-result-object v4

    invoke-virtual {v4}, LB2/p;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v0, v3, v5}, LB2/p;->n([BII)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, LB2/p;->h([B)LB2/p;

    move-result-object p1

    return-object p1
.end method
