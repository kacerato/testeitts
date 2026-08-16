.class public final Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1f4

.field public static final b:LMc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/b<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:LMc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/b<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/nio/ByteBuffer;

.field public static g:Ljava/nio/LongBuffer;

.field public static h:Ljava/nio/ByteBuffer;

.field public static i:Ljava/nio/LongBuffer;

.field public static j:Z

.field public static k:I

.field public static l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LMc/b;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LMc/b;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b:LMc/b;

    new-instance v0, LMc/b;

    invoke-direct {v0, v1}, LMc/b;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->c:LMc/b;

    new-instance v0, LLc/g;

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d:LLc/g;

    new-instance v0, LLc/g;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->e:LLc/g;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->l:J

    const-string v0, "native-transform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()V
    .locals 0

    invoke-static {}, LK8/a;->G()V

    return-void
.end method

.method public static a()J
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-wide v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->l:J

    return-wide v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeCreateTransform()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeDestroyTransform(J)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d:LLc/g;

    invoke-virtual {v0, p0, p1}, Lge/X;->e(J)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "required"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-le p0, v0, :cond_1

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_4

    add-int/lit16 v1, v1, 0x1f4

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_2
    add-int/lit16 v3, v2, -0x1f4

    if-lt v3, p0, :cond_2

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_2

    add-int/lit16 v2, v2, -0x1f4

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    if-ne v1, v0, :cond_6

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    return-void

    :cond_6
    if-gtz v1, :cond_7

    const/4 p0, 0x0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->h:Ljava/nio/ByteBuffer;

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    return-void

    :cond_7
    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    return-void
.end method

.method public static e(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "required"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-le p0, v0, :cond_1

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_4

    add-int/lit16 v1, v1, 0x1f4

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_2
    add-int/lit16 v3, v2, -0x1f4

    if-lt v3, p0, :cond_2

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_2

    add-int/lit16 v2, v2, -0x1f4

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    if-ne v1, v0, :cond_6

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    return-void

    :cond_6
    if-gtz v1, :cond_7

    const/4 p0, 0x0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->f:Ljava/nio/ByteBuffer;

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    return-void

    :cond_7
    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    return-void
.end method

.method public static f(J[F)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "outMatrix"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFetchGlobalMatrix(JI[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static g(J[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "registrationId",
            "outMatrix"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFetchHierarchyObserverMatrix(JI[F)V

    return-void
.end method

.method public static h(J[F)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "outMatrix"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFetchLocalMatrix(JI[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static i(JJ[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ancestorHandle",
            "childHandle",
            "outMatrix"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFetchRelativeMatrix(JJI[F)V

    return-void
.end method

.method public static j()I
    .locals 8

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j:Z

    sput v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k:I

    :try_start_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "Transform sync"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    move-object v0, v2

    :goto_0
    move v3, v1

    :goto_1
    :try_start_1
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b:LMc/b;

    invoke-virtual {v4}, LMc/b;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X3()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v4}, LMc/b;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Matrix calc"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    :try_start_3
    invoke-static {}, LK8/a;->k()I

    move-result v3

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFlushObserved(I)I

    move-result v3

    sput v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Extract handlers"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeGetChangedObservedCount()I

    move-result v3

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->e(I)V

    if-lez v3, :cond_5

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFillChangedObservedBuffer(Ljava/nio/LongBuffer;)I

    move-result v3

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeGetChangedHierarchyObserverCount()I

    move-result v4

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d(I)V

    if-lez v4, :cond_6

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/nio/LongBuffer;->clear()Ljava/nio/Buffer;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeFillChangedHierarchyObserverBuffer(Ljava/nio/LongBuffer;)I

    move-result v4

    :cond_6
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    if-gtz v3, :cond_7

    if-gtz v4, :cond_7

    sget v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-boolean v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j:Z

    return v0

    :cond_7
    :try_start_5
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Transform listeners"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_b

    :try_start_6
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g:Ljava/nio/LongBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v5

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d:LLc/g;

    invoke-virtual {v7, v5, v6}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    :try_start_7
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O1()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_9

    :cond_b
    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_d

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->e:LLc/g;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i:Ljava/nio/LongBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    :try_start_9
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->f()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :goto_9
    :try_start_b
    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    throw v0

    :cond_d
    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    sget v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sput-boolean v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j:Z

    return v0

    :catchall_5
    move-exception v2

    :try_start_c
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw v2

    :goto_a
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_b
    sput-boolean v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j:Z

    throw v0

    :cond_e
    :goto_c
    return v1
.end method

.method public static k(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeForceInvalidateGlobal(JI)V

    :cond_0
    return-void
.end method

.method public static l(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeForceInvalidateLocal(JI)V

    :cond_0
    return-void
.end method

.method public static m(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeKillMatrix(JI)V

    :cond_0
    return-void
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registration"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->e:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->h()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->m()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->n()Z

    move-result v9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->o()Z

    move-result v10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->p()Z

    move-result v11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->i()F

    move-result v12

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k()F

    move-result v13

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->l()F

    move-result v14

    invoke-static/range {v3 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeRegisterHierarchyObserver(JJJZZZFFF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "registration can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeCreateTransform()J
.end method

.method private static native nativeDestroyTransform(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private static native nativeFetchGlobalMatrix(JI[F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId",
            "outMatrix"
        }
    .end annotation
.end method

.method private static native nativeFetchHierarchyObserverMatrix(JI[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrationId",
            "frameId",
            "outMatrix"
        }
    .end annotation
.end method

.method private static native nativeFetchLocalMatrix(JI[F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId",
            "outMatrix"
        }
    .end annotation
.end method

.method private static native nativeFetchRelativeMatrix(JJI[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ancestorHandle",
            "childHandle",
            "frameId",
            "outMatrix"
        }
    .end annotation
.end method

.method private static native nativeFillChangedHierarchyObserverBuffer(Ljava/nio/LongBuffer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation
.end method

.method private static native nativeFillChangedObservedBuffer(Ljava/nio/LongBuffer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation
.end method

.method private static native nativeFlushObserved(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameId"
        }
    .end annotation
.end method

.method private static native nativeForceInvalidateGlobal(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId"
        }
    .end annotation
.end method

.method private static native nativeForceInvalidateLocal(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId"
        }
    .end annotation
.end method

.method private static native nativeGetChangedHierarchyObserverCount()I
.end method

.method private static native nativeGetChangedObservedCount()I
.end method

.method private static native nativeKillMatrix(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId"
        }
    .end annotation
.end method

.method private static native nativeRegisterHierarchyObserver(JJJZZZFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrationId",
            "observedHandle",
            "scopeParentHandle",
            "ignoreScaleOfScopeParent",
            "normalizeLikeColliderShape",
            "preserveChildScaleWhenScopeParentMatches",
            "positionTolerance",
            "rotationToleranceDegrees",
            "scaleTolerance"
        }
    .end annotation
.end method

.method private static native nativeSetObserved(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "observed"
        }
    .end annotation
.end method

.method private static native nativeSyncTransform(JIJIZZFFFFFFFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId",
            "parentHandle",
            "state",
            "ignoreParent",
            "group",
            "px",
            "py",
            "pz",
            "rw",
            "rx",
            "ry",
            "rz",
            "sx",
            "sy",
            "sz"
        }
    .end annotation
.end method

.method private static native nativeUnregisterHierarchyObserver(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrationId"
        }
    .end annotation
.end method

.method private static native nativeUpdateGlobalState(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId"
        }
    .end annotation
.end method

.method private static native nativeUpdateLocalState(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "frameId"
        }
    .end annotation
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T()J

    move-result-wide v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->c:LMc/b;

    invoke-virtual {v2, p0}, LMc/b;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d:LLc/g;

    invoke-virtual {v2, v0, v1, p0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeSetObserved(JZ)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b:LMc/b;

    invoke-virtual {v0, p0}, LMc/b;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b:LMc/b;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, LMc/b;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W3()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(JIJIZZFFFFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "modifiedFrameId",
            "parentHandle",
            "state",
            "ignoreParent",
            "group",
            "px",
            "py",
            "pz",
            "rw",
            "rx",
            "ry",
            "rz",
            "sx",
            "sy",
            "sz"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static/range {p0 .. p17}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeSyncTransform(JIJIZZFFFFFFFFFF)V

    return-void
.end method

.method public static t(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packed"
        }
    .end annotation

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static u(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packed"
        }
    .end annotation

    long-to-int p0, p0

    return p0
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registration"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->e:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeUnregisterHierarchyObserver(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "registration can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->c:LMc/b;

    invoke-virtual {v0, p0}, LMc/b;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->d:LLc/g;

    invoke-virtual {p0, v0, v1}, Lge/X;->e(J)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeSetObserved(JZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b:LMc/b;

    invoke-virtual {v0, p0}, LMc/b;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transform can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(J)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeUpdateGlobalState(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static z(J)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->A()V

    invoke-static {}, LK8/a;->k()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->nativeUpdateLocalState(JI)J

    move-result-wide p0

    return-wide p0
.end method
