.class public LUg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvc/q;

.field public b:Lvc/n;

.field public c:Lvc/q;

.field public d:Lvc/p;

.field public e:Lvc/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lvc/p;
    .locals 1

    iget-object v0, p0, LUg/g;->d:Lvc/p;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LUg/g;->d:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->b()I

    move-result v0

    return v0
.end method

.method public c()Lvc/q;
    .locals 1

    iget-object v0, p0, LUg/g;->c:Lvc/q;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LUg/g;->c:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->d()I

    move-result v0

    return v0
.end method

.method public e()Lvc/p;
    .locals 1

    iget-object v0, p0, LUg/g;->e:Lvc/p;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LUg/g;->e:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->b()I

    move-result v0

    return v0
.end method

.method public g()Lvc/n;
    .locals 1

    iget-object v0, p0, LUg/g;->b:Lvc/n;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, LUg/g;->b:Lvc/n;

    invoke-virtual {v0}, Lvc/n;->b()I

    move-result v0

    return v0
.end method

.method public i()Lvc/q;
    .locals 1

    iget-object v0, p0, LUg/g;->a:Lvc/q;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LUg/g;->a:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->d()I

    move-result v0

    return v0
.end method

.method public k(Lvc/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlasUV"
        }
    .end annotation

    iput-object p1, p0, LUg/g;->d:Lvc/p;

    return-void
.end method

.method public l(Lvc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normals"
        }
    .end annotation

    iput-object p1, p0, LUg/g;->c:Lvc/q;

    return-void
.end method

.method public m(Lvc/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldUV"
        }
    .end annotation

    iput-object p1, p0, LUg/g;->e:Lvc/p;

    return-void
.end method

.method public n(Lvc/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triangles"
        }
    .end annotation

    iput-object p1, p0, LUg/g;->b:Lvc/n;

    return-void
.end method

.method public o(Lvc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertices"
        }
    .end annotation

    iput-object p1, p0, LUg/g;->a:Lvc/q;

    return-void
.end method
