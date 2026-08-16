.class public Lp6/d$d;
.super LF7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp6/d;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp6/d;


# direct methods
.method public constructor <init>(Lp6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp6/d$d;->a:Lp6/d;

    invoke-direct {p0}, LF7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->v1(Lp6/d;)Lp6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->w1(Lp6/d;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public d(LF7/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    instance-of v0, p1, Lp6/k;

    if-eqz v0, :cond_0

    check-cast p1, Lp6/k;

    invoke-virtual {p1}, Lp6/k;->u()Lp6/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp6/j;->i(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lp6/h;

    if-eqz v0, :cond_1

    check-cast p1, Lp6/h;

    invoke-virtual {p1}, Lp6/h;->u()Lp6/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp6/g;->l(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(LF7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, Lp6/k;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lp6/k;

    invoke-virtual {v0}, Lp6/k;->u()Lp6/j;

    move-result-object v0

    invoke-virtual {v0}, Lp6/j;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lp6/j;->i(Z)V

    invoke-virtual {v0}, Lp6/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->x1(Lp6/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->x1(Lp6/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lp6/h;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp6/h;

    invoke-virtual {v0}, Lp6/h;->u()Lp6/g;

    move-result-object v0

    invoke-virtual {v0}, Lp6/g;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lp6/g;->l(Z)V

    invoke-virtual {v0}, Lp6/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->x1(Lp6/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0}, Lp6/d;->x1(Lp6/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(LF7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp6/d$d;->a:Lp6/d;

    invoke-static {v0, p1}, Lp6/d;->u1(Lp6/d;LF7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
