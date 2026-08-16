.class public LPm/p$a;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LWm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LWm/h;LWm/g;)LWm/f;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2}, LWm/g;->a()LWm/d;

    move-result-object v2

    invoke-interface {p1}, LWm/h;->d()I

    move-result v3

    sget v4, LTm/d;->k:I

    if-lt v3, v4, :cond_0

    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LWm/h;->c()I

    move-result v3

    invoke-interface {p1}, LWm/h;->getColumn()I

    move-result v4

    invoke-interface {p1}, LWm/h;->d()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {p2}, LWm/g;->b()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v3, v4, p2}, LPm/p;->h(Ljava/lang/CharSequence;IIZ)LPm/p$b;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1

    :cond_2
    iget v3, p2, LPm/p$b;->b:I

    new-instance v4, LPm/q;

    invoke-interface {p1}, LWm/h;->getColumn()I

    move-result p1

    sub-int p1, v3, p1

    invoke-direct {v4, p1}, LPm/q;-><init>(I)V

    instance-of p1, v2, LPm/p;

    if-eqz p1, :cond_4

    invoke-interface {v2}, LWm/d;->getBlock()LUm/b;

    move-result-object p1

    check-cast p1, LUm/t;

    iget-object v2, p2, LPm/p$b;->a:LUm/t;

    invoke-static {p1, v2}, LPm/p;->i(LUm/t;LUm/t;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, v1, [LWm/d;

    aput-object v4, p1, v0

    invoke-static {p1}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p1

    invoke-virtual {p1, v3}, LWm/f;->a(I)LWm/f;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, LPm/p;

    iget-object v2, p2, LPm/p$b;->a:LUm/t;

    invoke-direct {p1, v2}, LPm/p;-><init>(LUm/t;)V

    iget-object p2, p2, LPm/p$b;->a:LUm/t;

    invoke-virtual {p2, v1}, LUm/t;->r(Z)V

    const/4 p2, 0x2

    new-array p2, p2, [LWm/d;

    aput-object p1, p2, v0

    aput-object v4, p2, v1

    invoke-static {p2}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p1

    invoke-virtual {p1, v3}, LWm/f;->a(I)LWm/f;

    move-result-object p1

    return-object p1
.end method
