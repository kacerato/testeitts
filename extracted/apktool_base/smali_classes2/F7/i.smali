.class public LF7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:LF7/j;

.field public c:I

.field public d:Z

.field public e:Z

.field public final f:LF7/h;

.field public g:Z

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LG7/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LG7/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:LF7/c;

.field public k:LF7/b;

.field public l:LF7/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;LF7/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "iconDrawer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LF7/i;->d:Z

    iput-boolean v0, p0, LF7/i;->e:Z

    new-instance v0, LF7/h;

    invoke-direct {v0}, LF7/h;-><init>()V

    iput-object v0, p0, LF7/i;->f:LF7/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, LF7/i;->g:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LF7/i;->h:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LF7/i;->i:Ljava/util/List;

    iput-object p1, p0, LF7/i;->a:Ljava/lang/String;

    iput-object p2, p0, LF7/i;->b:LF7/j;

    return-void
.end method


# virtual methods
.method public a(LG7/a;)LF7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, LF7/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(LG7/a;)LF7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, LF7/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(LF7/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ol"
        }
    .end annotation

    iget-object v0, p0, LF7/i;->a:Ljava/lang/String;

    iget-object p1, p1, LF7/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, LF7/i;->c:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LG7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LF7/i;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()LF7/j;
    .locals 1

    iget-object v0, p0, LF7/i;->b:LF7/j;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LG7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LF7/i;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LF7/i;->d:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LF7/i;->g:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, LF7/i;->k:LF7/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LF7/b;->a()LF7/i;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LF7/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, LF7/m;

    const v0, 0x7f0c01c5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LF7/m;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public p(Landroid/content/Context;LF7/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewHolder"
        }
    .end annotation

    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depth"
        }
    .end annotation

    iput p1, p0, LF7/i;->c:I

    return-void
.end method

.method public r(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "haveChildren"
        }
    .end annotation

    iput-boolean p1, p0, LF7/i;->d:Z

    return-void
.end method

.method public s(LF7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconDrawer"
        }
    .end annotation

    iput-object p1, p0, LF7/i;->b:LF7/j;

    return-void
.end method

.method public t(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectable"
        }
    .end annotation

    iput-boolean p1, p0, LF7/i;->g:Z

    return-void
.end method
