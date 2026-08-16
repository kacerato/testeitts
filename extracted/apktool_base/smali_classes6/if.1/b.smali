.class public Lif/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/logging/Logger;

.field public static final synthetic g:Z


# instance fields
.field public final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public final e:Lcom/jme3/scene/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/b;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lif/b;->a:Ljava/util/Deque;

    const/16 v0, 0x270f

    iput v0, p0, Lif/b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lif/b;->c:I

    iput v0, p0, Lif/b;->d:I

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Decal Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lif/b;->e:Lcom/jme3/scene/Node;

    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/scene/Geometry;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->deepClone()Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, p1}, Lif/b;->b(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method public b(Lcom/jme3/scene/Geometry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getTriangleCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decal #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lif/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    iget v1, p0, Lif/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lif/b;->c:I

    iget-object v1, p0, Lif/b;->a:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lif/b;->e:Lcom/jme3/scene/Node;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget p1, p0, Lif/b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lif/b;->d:I

    invoke-virtual {p0}, Lif/b;->e()V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lif/b;->b:I

    return v0
.end method

.method public d()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lif/b;->e:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public e()V
    .locals 2

    :goto_0
    iget v0, p0, Lif/b;->d:I

    iget v1, p0, Lif/b;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lif/b;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getTriangleCount()I

    move-result v0

    iget v1, p0, Lif/b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lif/b;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lif/b;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lif/b;->e:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    iput v0, p0, Lif/b;->d:I

    return-void
.end method

.method public g(I)V
    .locals 1

    const-string v0, "new limit"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iput p1, p0, Lif/b;->b:I

    invoke-virtual {p0}, Lif/b;->e()V

    return-void
.end method

.method public h(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lif/b;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->move(Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Spatial;

    goto :goto_0

    :cond_0
    return-void
.end method
