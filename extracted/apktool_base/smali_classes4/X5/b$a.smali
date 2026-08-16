.class public LX5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX5/b;->B1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LF7/k<",
        "LX5/b$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LX5/b;


# direct methods
.method public constructor <init>(LX5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LX5/b$a;->a:LX5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(LF7/i;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    check-cast p1, LX5/b$l;

    invoke-virtual {p0, p1, p2}, LX5/b$a;->h(LX5/b$l;Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX5/b$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {v0}, LX5/b;->A1(LX5/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(LF7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    check-cast p1, LX5/b$l;

    invoke-virtual {p0, p1, p2}, LX5/b$a;->i(LX5/b$l;Z)V

    return-void
.end method

.method public bridge synthetic e(LF7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, LX5/b$l;

    invoke-virtual {p0, p1}, LX5/b$a;->j(LX5/b$l;)V

    return-void
.end method

.method public bridge synthetic f(LF7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, LX5/b$l;

    invoke-virtual {p0, p1}, LX5/b$a;->g(LX5/b$l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(LX5/b$l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX5/b$l;",
            ")",
            "Ljava/util/List<",
            "LX5/b$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {v0, p1}, LX5/b;->z1(LX5/b;LX5/b$l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(LX5/b$l;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(LX5/b$l;Z)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {p1}, LX5/b$l;->u(LX5/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object p1

    invoke-static {v0, p1}, LX5/b;->s1(LX5/b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)LX5/b$k;

    move-result-object p1

    iput-boolean p2, p1, LX5/b$k;->a:Z

    :cond_0
    return-void
.end method

.method public j(LX5/b$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, LX5/b$l;->u(LX5/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {p1}, LX5/b$l;->u(LX5/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v1

    invoke-static {v0, v1}, LX5/b;->s1(LX5/b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)LX5/b$k;

    move-result-object v0

    iget-boolean v0, v0, LX5/b$k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {v0}, LX5/b;->t1(LX5/b;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LX5/b$a;->a:LX5/b;

    invoke-static {v0}, LX5/b;->t1(LX5/b;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    :cond_2
    :goto_0
    return-void
.end method
