.class public Laa/c;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:Laa/d;

.field public c:F

.field public d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public e:LJAVARuntime/Ray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 3
    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, Laa/c;->b:Laa/d;

    return-void
.end method

.method public constructor <init>(Laa/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rayDirection"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 10
    iput-object p1, p0, Laa/c;->b:Laa/d;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Laa/c;->c:F

    return-void
.end method

.method public constructor <init>(Laa/d;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rayDirection",
            "distance"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 6
    iput-object p1, p0, Laa/c;->b:Laa/d;

    .line 7
    iput p2, p0, Laa/c;->c:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "dir",
            "distance"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    .line 14
    new-instance v0, Laa/d;

    invoke-direct {v0, p1, p2}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Laa/c;->b:Laa/d;

    .line 15
    iput p3, p0, Laa/c;->c:F

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Laa/c;->d()Laa/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Laa/c;
    .locals 3

    new-instance v0, Laa/c;

    iget-object v1, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v1}, Laa/d;->d()Laa/d;

    move-result-object v1

    iget v2, p0, Laa/c;->c:F

    invoke-direct {v0, v1, v2}, Laa/c;-><init>(Laa/d;F)V

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v0}, Laa/d;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .locals 1

    iget-object v0, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Laa/c;->c:F

    return v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v0}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public i()Laa/d;
    .locals 1

    iget-object v0, p0, Laa/c;->b:Laa/d;

    return-object v0
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    iget-object v0, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v0, p1}, Laa/d;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iput-object p1, p0, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orig"
        }
    .end annotation

    iget-object v0, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v0, p1}, Laa/d;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public m(Laa/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rayDirection"
        }
    .end annotation

    iput-object p1, p0, Laa/c;->b:Laa/d;

    return-void
.end method

.method public n()LJAVARuntime/Ray;
    .locals 1

    iget-object v0, p0, Laa/c;->e:LJAVARuntime/Ray;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Ray;

    invoke-direct {v0, p0}, LJAVARuntime/Ray;-><init>(Laa/c;)V

    iput-object v0, p0, Laa/c;->e:LJAVARuntime/Ray;

    :cond_0
    return-object v0
.end method

.method public setDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    iput p1, p0, Laa/c;->c:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laa/c;->b:Laa/d;

    invoke-virtual {v1}, Laa/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laa/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
