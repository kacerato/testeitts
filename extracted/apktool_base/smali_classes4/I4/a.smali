.class public LI4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, LI4/a;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()LI4/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LI4/a;->f:Z

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, LI4/a;->f:Z

    return v0
.end method

.method public i(Landroid/view/View$OnClickListener;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public j(Ljava/lang/String;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)LI4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    iput-object p1, p0, LI4/a;->c:Ljava/lang/String;

    return-object p0
.end method
