.class public Lx4/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LF7/k<",
        "Lx4/a$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx4/a;


# direct methods
.method public constructor <init>(Lx4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lx4/a$d;->a:Lx4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    check-cast p1, Lx4/a$f;

    invoke-virtual {p0, p1, p2}, Lx4/a$d;->h(Lx4/a$f;Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx4/a$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx4/a$d;->a:Lx4/a;

    invoke-static {v0}, Lx4/a;->r1(Lx4/a;)Ljava/util/List;

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

    check-cast p1, Lx4/a$f;

    invoke-virtual {p0, p1, p2}, Lx4/a$d;->i(Lx4/a$f;Z)V

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

    check-cast p1, Lx4/a$f;

    invoke-virtual {p0, p1}, Lx4/a$d;->j(Lx4/a$f;)V

    return-void
.end method

.method public bridge synthetic f(LF7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "eElement"
        }
    .end annotation

    check-cast p1, Lx4/a$f;

    invoke-virtual {p0, p1}, Lx4/a$d;->g(Lx4/a$f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lx4/a$f;)Ljava/util/List;
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
            "Lx4/a$f;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx4/a$d;->a:Lx4/a;

    invoke-static {v0, p1}, Lx4/a;->q1(Lx4/a;Lx4/a$f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(Lx4/a$f;Landroid/view/View;)V
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

.method public i(Lx4/a$f;Z)V
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

    invoke-static {p1}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/a$e;->c(Lx4/a$e;Z)Z

    :cond_0
    return-void
.end method

.method public j(Lx4/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    return-void
.end method
