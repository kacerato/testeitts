.class public LI4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LI4/e;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LI4/e;->f:Z

    return-void
.end method


# virtual methods
.method public a()LI4/e;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LI4/e;->f:Z

    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LI4/e;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI4/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, LI4/e;->f:Z

    return v0
.end method

.method public h(I)LI4/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    iput p1, p0, LI4/e;->e:I

    return-object p0
.end method

.method public i(Ljava/lang/String;)LI4/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation

    iput-object p1, p0, LI4/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)LI4/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput-object p1, p0, LI4/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)LI4/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iput-object p1, p0, LI4/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)LI4/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    iput-object p1, p0, LI4/e;->c:Ljava/lang/String;

    return-object p0
.end method
