.class public LO8/c;
.super LO8/a;
.source "SourceFile"


# instance fields
.field public l:LJAVARuntime/Brush;


# direct methods
.method public constructor <init>(LJAVARuntime/Brush;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brush"
        }
    .end annotation

    invoke-direct {p0}, LO8/a;-><init>()V

    iput-object p1, p0, LO8/c;->l:LJAVARuntime/Brush;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LO8/c;->l:LJAVARuntime/Brush;

    invoke-interface {v0, p1, p2}, LJAVARuntime/Brush;->getIntensity(FF)F

    move-result p1

    return p1
.end method

.method public f()Lub/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
