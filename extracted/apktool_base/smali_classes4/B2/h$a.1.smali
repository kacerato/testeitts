.class public final enum LB2/h$a;
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
    .locals 6
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

    invoke-virtual {p1}, LB2/p;->c()J

    move-result-wide p1

    long-to-int v2, p1

    const/16 v3, 0x20

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x1

    move v3, p2

    :goto_0
    if-gt v3, p3, :cond_2

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    if-gez v4, :cond_0

    not-int v4, v4

    :cond_0
    int-to-long v4, v4

    rem-long/2addr v4, v0

    invoke-virtual {p4, v4, v5}, LB2/h$c;->e(J)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public Qd(Ljava/lang/Object;LB2/n;ILB2/h$c;)Z
    .locals 6
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

    invoke-virtual {p1}, LB2/p;->c()J

    move-result-wide p1

    long-to-int v2, p1

    const/16 v3, 0x20

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-gt v3, p3, :cond_1

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    if-gez v4, :cond_0

    not-int v4, v4

    :cond_0
    int-to-long v4, v4

    rem-long/2addr v4, v0

    invoke-virtual {p4, v4, v5}, LB2/h$c;->h(J)Z

    move-result v4

    or-int/2addr p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method
