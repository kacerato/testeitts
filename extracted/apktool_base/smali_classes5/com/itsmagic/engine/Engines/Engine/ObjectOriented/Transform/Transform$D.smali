.class public final Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "D"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field public final c:Lib/a;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:F

.field public h:F

.field public i:F

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final synthetic k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            "this$0",
            "scopeParent",
            "listener",
            "ignoreScaleOfScopeParent",
            "normalizeLikeColliderShape",
            "preserveChildScaleWhenScopeParentMatches",
            "positionTolerance",
            "rotationToleranceDegrees",
            "scaleTolerance"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 4
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a:J

    .line 5
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 6
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c:Lib/a;

    .line 7
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->d:Z

    .line 8
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->e:Z

    .line 9
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->f:Z

    .line 10
    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->g:F

    .line 11
    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->h:F

    .line 12
    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->i:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)Lib/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c:Lib/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    return-void
.end method

.method public e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a:J

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->g(J[F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y0([F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c:Lib/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-interface {v1, v2}, Lib/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c:Lib/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-interface {v0, v1}, Lib/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->g:F

    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a:J

    return-wide v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->h:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->i:F

    return v0
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->d:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->e:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->f:Z

    return v0
.end method

.method public q()V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    return-void
.end method

.method public r(ZZZFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ignoreScaleOfScopeParent",
            "normalizeLikeColliderShape",
            "preserveChildScaleWhenScopeParentMatches",
            "positionTolerance",
            "rotationToleranceDegrees",
            "scaleTolerance"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->d:Z

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->e:Z

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->f:Z

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->g:F

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->h:F

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->i:F

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    return-void
.end method
