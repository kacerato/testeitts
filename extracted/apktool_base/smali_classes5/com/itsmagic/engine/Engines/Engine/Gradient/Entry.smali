.class public Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LJAVARuntime/ColorGradient$Point;

.field private final color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private p:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "color"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->p:F

    .line 6
    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "blendFactor"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->p:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->p:F

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->b()Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v0

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->p:F

    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public f(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->p:F

    return-void
.end method

.method public g()LJAVARuntime/ColorGradient$Point;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->a:LJAVARuntime/ColorGradient$Point;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ColorGradient$Point;

    invoke-direct {v0, p0}, LJAVARuntime/ColorGradient$Point;-><init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->a:LJAVARuntime/ColorGradient$Point;

    :cond_0
    return-object v0
.end method
