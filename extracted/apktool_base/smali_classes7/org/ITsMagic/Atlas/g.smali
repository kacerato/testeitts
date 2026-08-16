.class public Lorg/ITsMagic/Atlas/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/g$b;
    }
.end annotation


# static fields
.field public static final k:Z = false


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lorg/ITsMagic/Atlas/BakeOptions;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUg/k;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/ITsMagic/Atlas/g$b;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/lang/String;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public h:Ljava/util/concurrent/CountDownLatch;

.field public i:Z

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "options"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const-string v0, "Bake"

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->f:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->h:Ljava/util/concurrent/CountDownLatch;

    .line 12
    iput-boolean v1, p0, Lorg/ITsMagic/Atlas/g;->i:Z

    .line 13
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->a:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lorg/ITsMagic/Atlas/g;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bake"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objects",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Lorg/ITsMagic/Atlas/BakeOptions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const-string v0, "Bake"

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->f:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/g;->h:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-boolean v1, p0, Lorg/ITsMagic/Atlas/g;->i:Z

    .line 6
    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->a:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lorg/ITsMagic/Atlas/g;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/g;Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/ITsMagic/Atlas/g;->m(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    return-object p0
.end method

.method public static synthetic d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lorg/ITsMagic/Atlas/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic f(Lorg/ITsMagic/Atlas/g;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/ITsMagic/Atlas/g;->i:Z

    return p0
.end method

.method public static synthetic g(Lorg/ITsMagic/Atlas/g;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic h(Lorg/ITsMagic/Atlas/g;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1
.end method

.method public static synthetic i(Lorg/ITsMagic/Atlas/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lorg/ITsMagic/Atlas/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/g;->j:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic l(Lorg/ITsMagic/Atlas/g;)V
    .locals 0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/g;->n()V

    return-void
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_4
    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final m(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atlas",
            "object"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    new-array v0, v0, [F

    invoke-static {p2, v0}, Lib/g;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lorg/ITsMagic/Atlas/g;->r(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p1, v4, v3, v0}, Lorg/ITsMagic/Atlas/XAtlas;->addInputMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Material/Material;[F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/ITsMagic/Atlas/g;->m(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    iget-boolean v0, p0, Lorg/ITsMagic/Atlas/g;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/ITsMagic/Atlas/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/ITsMagic/Atlas/g;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ITsMagic/Atlas/g;->d:Lorg/ITsMagic/Atlas/g$b;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/g$b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public p(Lorg/ITsMagic/Atlas/g$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->d:Lorg/ITsMagic/Atlas/g$b;

    new-instance v0, Lorg/ITsMagic/Atlas/XAtlas;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/XAtlas;-><init>()V

    new-instance v1, Lorg/ITsMagic/Atlas/g$a;

    invoke-direct {v1, p0, p1, v0}, Lorg/ITsMagic/Atlas/g$a;-><init>(Lorg/ITsMagic/Atlas/g;Lorg/ITsMagic/Atlas/g$b;Lorg/ITsMagic/Atlas/XAtlas;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Lorg/ITsMagic/Atlas/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/ITsMagic/Atlas/g;->p(Lorg/ITsMagic/Atlas/g$b;)V

    :try_start_0
    iget-object p1, p0, Lorg/ITsMagic/Atlas/g;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public t(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableOriginalObjects"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/ITsMagic/Atlas/g;->i:Z

    return-void
.end method

.method public u(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaFolder"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g;->j:Ljava/io/File;

    return-void
.end method
