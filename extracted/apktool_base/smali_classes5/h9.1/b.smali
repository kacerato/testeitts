.class public final Lh9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

.field public b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iput-object v0, p0, Lh9/b;->b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    const/4 v0, -0x1

    iput v0, p0, Lh9/b;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh9/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh9/b;->a:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    sget-object v0, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iput-object v0, p0, Lh9/b;->b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    const/4 v0, -0x1

    iput v0, p0, Lh9/b;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh9/b;->d:Z

    return-void
.end method

.method public b(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lh9/b;->a:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    sget-object p1, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iput-object p1, p0, Lh9/b;->b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iput v0, p0, Lh9/b;->c:I

    iput-boolean v0, p0, Lh9/b;->d:Z

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->countChildren()I

    move-result v1

    iget-boolean v2, p0, Lh9/b;->d:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lh9/b;->a:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-ne v2, p1, :cond_1

    iget v2, p0, Lh9/b;->c:I

    if-eq v2, v1, :cond_3

    :cond_1
    iput-object p1, p0, Lh9/b;->a:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    iput v1, p0, Lh9/b;->c:I

    if-nez v1, :cond_2

    sget-object p1, Lh9/a;->J4:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lh9/b;->b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iput-boolean v0, p0, Lh9/b;->d:Z

    :cond_3
    iget-object p1, p0, Lh9/b;->b:[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh9/b;->d:Z

    return-void
.end method
