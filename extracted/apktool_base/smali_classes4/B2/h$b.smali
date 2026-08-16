.class public final enum LB2/h$b;
.super LB2/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LB2/h;-><init>(Ljava/lang/String;ILB2/h$a;)V

    return-void
.end method


# virtual methods
.method public Qb(Ljava/lang/Object;LB2/n;ILB2/h$c;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LB2/n<",
            "-TT;>;I",
            "LB2/h$c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p4}, LB2/h$c;->b()J

    move-result-wide v0

    invoke-static {}, LB2/s;->x()LB2/q;

    move-result-object v2

    invoke-interface {v2, p1, p2}, LB2/q;->e(Ljava/lang/Object;LB2/n;)LB2/p;

    move-result-object p1

    invoke-virtual {p1}, LB2/p;->l()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/h$b;->b([B)J

    move-result-wide v2

    invoke-virtual {p0, p1}, LB2/h$b;->c([B)J

    move-result-wide p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p3, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v2

    rem-long/2addr v6, v0

    invoke-virtual {p4, v6, v7}, LB2/h$c;->e(J)Z

    move-result v6

    if-nez v6, :cond_0

    return v4

    :cond_0
    add-long/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public Qd(Ljava/lang/Object;LB2/n;ILB2/h$c;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LB2/n<",
            "-TT;>;I",
            "LB2/h$c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p4}, LB2/h$c;->b()J

    move-result-wide v0

    invoke-static {}, LB2/s;->x()LB2/q;

    move-result-object v2

    invoke-interface {v2, p1, p2}, LB2/q;->e(Ljava/lang/Object;LB2/n;)LB2/p;

    move-result-object p1

    invoke-virtual {p1}, LB2/p;->l()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/h$b;->b([B)J

    move-result-wide v2

    invoke-virtual {p0, p1}, LB2/h$b;->c([B)J

    move-result-wide p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, p3, :cond_0

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v2

    rem-long/2addr v6, v0

    invoke-virtual {p4, v6, v7}, LB2/h$c;->h(J)Z

    move-result v6

    or-int/2addr v5, v6

    add-long/2addr v2, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v5
.end method

.method public final b([B)J
    .locals 9

    const/4 v0, 0x7

    aget-byte v1, p1, v0

    const/4 v0, 0x6

    aget-byte v2, p1, v0

    const/4 v0, 0x5

    aget-byte v3, p1, v0

    const/4 v0, 0x4

    aget-byte v4, p1, v0

    const/4 v0, 0x3

    aget-byte v5, p1, v0

    const/4 v0, 0x2

    aget-byte v6, p1, v0

    const/4 v0, 0x1

    aget-byte v7, p1, v0

    const/4 v0, 0x0

    aget-byte v8, p1, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/n;->j(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c([B)J
    .locals 9

    const/16 v0, 0xf

    aget-byte v1, p1, v0

    const/16 v0, 0xe

    aget-byte v2, p1, v0

    const/16 v0, 0xd

    aget-byte v3, p1, v0

    const/16 v0, 0xc

    aget-byte v4, p1, v0

    const/16 v0, 0xb

    aget-byte v5, p1, v0

    const/16 v0, 0xa

    aget-byte v6, p1, v0

    const/16 v0, 0x9

    aget-byte v7, p1, v0

    const/16 v0, 0x8

    aget-byte v8, p1, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/n;->j(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method
