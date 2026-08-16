.class public Laa/a;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public i:F

.field public j:F

.field public k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public n:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public p:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public q:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public r:Z

.field public s:LJAVARuntime/LaserHit;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/a;->r:Z

    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uv0"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uv1"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uv2"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uvCoord"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public E()LJAVARuntime/LaserHit;
    .locals 1

    iget-object v0, p0, Laa/a;->s:LJAVARuntime/LaserHit;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/LaserHit;

    invoke-direct {v0, p0}, LJAVARuntime/LaserHit;-><init>(Laa/a;)V

    iput-object v0, p0, Laa/a;->s:LJAVARuntime/LaserHit;

    :cond_0
    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .locals 1

    iget-object v0, p0, Laa/a;->n:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Laa/a;->o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Laa/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Laa/a;->i:F

    return v0
.end method

.method public getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Laa/a;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Laa/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Laa/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
    .locals 1

    iget-object v0, p0, Laa/a;->p:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 1

    iget-object v0, p0, Laa/a;->q:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Laa/a;->j:F

    return v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Laa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Laa/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Laa/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Laa/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->n:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliderObject"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faceNormal"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
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

    iput p1, p0, Laa/a;->i:F

    return-void
.end method

.method public setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Laa/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-string v1, ""

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Point:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Laa/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v3, p0, Laa/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UV:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Laa/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "laserNormal"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolComponent"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->p:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledObject"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->q:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public y(LJAVARuntime/LaserHit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->s:LJAVARuntime/LaserHit;

    return-void
.end method

.method public z(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iput p1, p0, Laa/a;->j:F

    return-void
.end method
