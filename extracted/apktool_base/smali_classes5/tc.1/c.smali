.class public Ltc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:F

.field public k:LJAVARuntime/GamePadButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltc/c;->b:Z

    iput-boolean v0, p0, Ltc/c;->c:Z

    iput-boolean v0, p0, Ltc/c;->d:Z

    iput-boolean v0, p0, Ltc/c;->e:Z

    iput-boolean v0, p0, Ltc/c;->f:Z

    iput-boolean v0, p0, Ltc/c;->g:Z

    iput-boolean v0, p0, Ltc/c;->h:Z

    iput-boolean v0, p0, Ltc/c;->i:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Ltc/c;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ltc/c;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Ltc/c;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ltc/c;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Ltc/c;->f:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/c;->b:Z

    return-void
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longDown"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/c;->d:Z

    return-void
.end method

.method public h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longPressed"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/c;->e:Z

    return-void
.end method

.method public i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/c;->c:Z

    return-void
.end method

.method public j(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up"
        }
    .end annotation

    iput-boolean p1, p0, Ltc/c;->f:Z

    return-void
.end method

.method public k()LJAVARuntime/GamePadButton;
    .locals 1

    iget-object v0, p0, Ltc/c;->k:LJAVARuntime/GamePadButton;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GamePadButton;

    invoke-direct {v0, p0}, LJAVARuntime/GamePadButton;-><init>(Ltc/c;)V

    iput-object v0, p0, Ltc/c;->k:LJAVARuntime/GamePadButton;

    :cond_0
    return-object v0
.end method
