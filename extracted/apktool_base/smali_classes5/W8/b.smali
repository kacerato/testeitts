.class public LW8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field public b:Lcom/jme3/math/Transform;

.field public c:LDb/a$c;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LW8/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LW8/b;->b:Lcom/jme3/math/Transform;

    .line 4
    iput-object p1, p0, LW8/b;->c:LDb/a$c;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LW8/b;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;LDb/a$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shape",
            "collisionBvhCacheEntry",
            "scaleBaked"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, LW8/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, LW8/b;->b:Lcom/jme3/math/Transform;

    .line 14
    iput-object p2, p0, LW8/b;->c:LDb/a$c;

    .line 15
    iput-boolean p3, p0, LW8/b;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shape",
            "transform"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LW8/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    .line 8
    iput-object p2, p0, LW8/b;->b:Lcom/jme3/math/Transform;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, LW8/b;->c:LDb/a$c;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, LW8/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()LDb/a$c;
    .locals 1

    iget-object v0, p0, LW8/b;->c:LDb/a$c;

    return-object v0
.end method

.method public b()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, LW8/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public c()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, LW8/b;->b:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LW8/b;->d:Z

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LW8/b;->c:LDb/a$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LDb/a$c;->h()Z

    const/4 v0, 0x0

    iput-object v0, p0, LW8/b;->c:LDb/a$c;

    :cond_0
    return-void
.end method

.method public f(LDb/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collisionBvhCacheEntry"
        }
    .end annotation

    iput-object p1, p0, LW8/b;->c:LDb/a$c;

    return-void
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleBaked"
        }
    .end annotation

    iput-boolean p1, p0, LW8/b;->d:Z

    return-void
.end method

.method public h(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    iput-object p1, p0, LW8/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public i(Lcom/jme3/math/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iput-object p1, p0, LW8/b;->b:Lcom/jme3/math/Transform;

    return-void
.end method
