.class public abstract Lj6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lj6/a;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0700dd

    .line 2
    iput v0, p0, Lj6/d;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lj6/d;->b:I

    return-void
.end method

.method public static synthetic a(Lj6/d;)Lj6/a;
    .locals 0

    iget-object p0, p0, Lj6/d;->a:Lj6/a;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lj6/d;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lj6/d;->a:Lj6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj6/a;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj6/d;->a:Lj6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj6/a;->e()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lj6/d;->a:Lj6/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lj6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    new-instance v0, Lj6/d$a;

    invoke-direct {v0, p0, p1}, Lj6/d$a;-><init>(Lj6/d;Lj6/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj6/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lj6/d$b;

    invoke-direct {v0, p0, p1}, Lj6/d$b;-><init>(Lj6/d;Ljava/util/List;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    new-instance v0, Lj6/d$c;

    invoke-direct {v0, p0}, Lj6/d$c;-><init>(Lj6/d;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract k()V
.end method

.method public final l(Lj6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    iput-object p1, p0, Lj6/d;->a:Lj6/a;

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lj6/d;->a:Lj6/a;

    return-void
.end method
