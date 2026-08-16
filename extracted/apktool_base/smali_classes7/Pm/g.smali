.class public LPm/g;
.super LWm/a;
.source "SourceFile"


# instance fields
.field public final a:LUm/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LWm/a;-><init>()V

    new-instance v0, LUm/i;

    invoke-direct {v0}, LUm/i;-><init>()V

    iput-object v0, p0, LPm/g;->a:LUm/i;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public d(LWm/h;)LWm/c;
    .locals 0

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public f(LUm/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getBlock()LUm/b;
    .locals 1

    invoke-virtual {p0}, LPm/g;->h()LUm/i;

    move-result-object v0

    return-object v0
.end method

.method public h()LUm/i;
    .locals 1

    iget-object v0, p0, LPm/g;->a:LUm/i;

    return-object v0
.end method
