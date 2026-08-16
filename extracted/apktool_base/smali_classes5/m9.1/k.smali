.class public Lm9/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public b:F

.field public c:LJAVARuntime/PoolSearchResult;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "squaredDistance"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput p2, p0, Lm9/k;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lm9/k;->b:F

    invoke-static {v0}, LNc/b;->q1(F)F

    move-result v0

    return v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 1

    iget-object v0, p0, Lm9/k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lm9/k;->b:F

    return v0
.end method

.method public d(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    mul-float/2addr p1, p1

    iput p1, p0, Lm9/k;->b:F

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iput-object p1, p0, Lm9/k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public f(LJAVARuntime/PoolSearchResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lm9/k;->c:LJAVARuntime/PoolSearchResult;

    return-void
.end method

.method public g(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "squaredDistance"
        }
    .end annotation

    iput p1, p0, Lm9/k;->b:F

    return-void
.end method

.method public h()LJAVARuntime/PoolSearchResult;
    .locals 1

    iget-object v0, p0, Lm9/k;->c:LJAVARuntime/PoolSearchResult;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PoolSearchResult;

    invoke-direct {v0, p0}, LJAVARuntime/PoolSearchResult;-><init>(Lm9/k;)V

    iput-object v0, p0, Lm9/k;->c:LJAVARuntime/PoolSearchResult;

    :cond_0
    return-object v0
.end method
