.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public transient c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

.field public volatile transient d:I

.field public volatile transient e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public volatile transient g:I

.field public volatile transient i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public j:LJAVARuntime/PooledObject;

.field private final v:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "d"

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "g"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LIc/m;-><init>()V

    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    .line 3
    invoke-static {}, LNc/d;->c()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->b:I

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "rot",
            "scale"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, LIc/m;-><init>()V

    const/4 v0, 0x7

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    .line 7
    invoke-static {}, LNc/d;->c()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->b:I

    .line 8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    aput p1, v0, v1

    .line 11
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    .line 12
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v1

    aput v1, v0, p1

    const/4 p1, 0x5

    .line 13
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x6

    .line 14
    aput p3, v0, p1

    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public B()I
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public C()LJAVARuntime/PooledObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j:LJAVARuntime/PooledObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PooledObject;

    invoke-direct {v0, p0}, LJAVARuntime/PooledObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j:LJAVARuntime/PooledObject;

    :cond_0
    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;-><init>()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x2

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x3

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x4

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x5

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v1, v3

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->b:I

    return v0
.end method

.method public getScale()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method public i()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public j()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public k()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-object p1
.end method

.method public p(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedChange"
        }
    .end annotation

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    const/4 v4, 0x0

    if-ne v2, v1, :cond_4

    return v4

    :cond_4
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3
.end method

.method public q(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedChange"
        }
    .end annotation

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    const/4 v4, 0x0

    if-ne v2, v1, :cond_4

    return v4

    :cond_4
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :cond_0
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;

    return-void
.end method

.method public setScale(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->r()V

    return-void
.end method

.method public u(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->r()V

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aget v0, v0, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aget v0, v0, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    aput p1, v0, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->r()V

    return-void
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rot"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aget v2, v2, v5

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aget v2, v2, v4

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v:[F

    aput v0, v2, v3

    aput v1, v2, v5

    aput p1, v2, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->r()V

    return-void
.end method

.method public z(LJAVARuntime/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j:LJAVARuntime/PooledObject;

    return-void
.end method
