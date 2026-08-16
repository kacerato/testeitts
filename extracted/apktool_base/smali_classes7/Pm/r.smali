.class public LPm/r;
.super LWm/a;
.source "SourceFile"


# instance fields
.field public final a:LUm/x;

.field public b:LPm/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LWm/a;-><init>()V

    new-instance v0, LUm/x;

    invoke-direct {v0}, LUm/x;-><init>()V

    iput-object v0, p0, LPm/r;->a:LUm/x;

    new-instance v0, LPm/o;

    invoke-direct {v0}, LPm/o;-><init>()V

    iput-object v0, p0, LPm/r;->b:LPm/o;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, LPm/r;->b:LPm/o;

    invoke-virtual {v0, p1}, LPm/o;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(LWm/h;)LWm/c;
    .locals 1

    invoke-interface {p1}, LWm/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public e(LVm/a;)V
    .locals 2

    iget-object v0, p0, LPm/r;->b:LPm/o;

    invoke-virtual {v0}, LPm/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LPm/r;->a:LUm/x;

    invoke-interface {p1, v0, v1}, LVm/a;->a(Ljava/lang/String;LUm/v;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LPm/r;->b:LPm/o;

    invoke-virtual {v0}, LPm/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LPm/r;->a:LUm/x;

    invoke-virtual {v0}, LUm/v;->o()V

    :cond_0
    return-void
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LPm/r;->a:LUm/x;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, LPm/r;->b:LPm/o;

    invoke-virtual {v0}, LPm/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LUm/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LPm/r;->b:LPm/o;

    invoke-virtual {v0}, LPm/o;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
