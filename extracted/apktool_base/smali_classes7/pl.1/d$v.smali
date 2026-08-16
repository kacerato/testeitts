.class public Lpl/d$v;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lpl/d$u;-><init>(Lpl/d$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpl/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpl/d$v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXk/v;->v(Ljava/lang/Object;)LXk/v;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LXk/v;->x()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    invoke-static {p1}, LXk/A;->u(Ljava/lang/Object;)LXk/A;

    move-result-object p1

    new-instance v1, Lql/J$b;

    new-instance v2, Lql/H;

    invoke-virtual {p2}, LXk/v;->u()I

    move-result p2

    invoke-static {v0}, Lpl/g;->j(Loh/x;)LBi/y;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v1, v2}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {p1}, LXk/A;->v()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lql/J$b;->g([B)Lql/J$b;

    move-result-object p2

    invoke-virtual {p1}, LXk/A;->x()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lql/J$b;->h([B)Lql/J$b;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lql/J$b;->e()Lql/J;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    new-instance p2, Lql/J$b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    invoke-static {v0}, Lql/H;->k(I)Lql/H;

    move-result-object v0

    invoke-direct {p2, v0}, Lql/J$b;-><init>(Lql/H;)V

    invoke-virtual {p2, p1}, Lql/J$b;->f([B)Lql/J$b;

    move-result-object p1

    goto :goto_0
.end method
