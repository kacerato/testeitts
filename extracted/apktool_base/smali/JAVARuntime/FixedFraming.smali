.class public final LJAVARuntime/FixedFraming;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Framerate"
    }
.end annotation


# instance fields
.field private transient fixedFraming:LL9/b;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILJAVARuntime/FixedFrameListener;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "framesPerSecond",
            "FixedFrameListener",
            "fixedFrameListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "framesPerSecond",
            "fixedFrameListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, LL9/b;

    new-instance v1, LJAVARuntime/FixedFraming$1;

    invoke-direct {v1, p0, p2}, LJAVARuntime/FixedFraming$1;-><init>(LJAVARuntime/FixedFraming;LJAVARuntime/FixedFrameListener;)V

    invoke-direct {v0, p1, v1}, LL9/b;-><init>(ILL9/a;)V

    iput-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    return-void
.end method


# virtual methods
.method public engineRepeat()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0}, LL9/b;->a()V

    return-void
.end method

.method public getFixedFrames()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0}, LL9/b;->c()F

    move-result v0

    return v0
.end method

.method public setAllowTimeScale(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "allowTimeScale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowTimeScale"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0, p1}, LL9/b;->e(Z)LL9/b;

    return-void
.end method

.method public setDesyncHighFrameRate(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "desyncHighFrameRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desyncHighFrameRate"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0, p1}, LL9/b;->f(Z)LL9/b;

    return-void
.end method

.method public setDesyncLowFrameRate(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "desyncLowFrameRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desyncLowFrameRate"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0, p1}, LL9/b;->g(Z)LL9/b;

    return-void
.end method

.method public setFixedFrameListener(LJAVARuntime/FixedFrameListener;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "fixedFrameListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedFrameListener"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    new-instance v1, LJAVARuntime/FixedFraming$2;

    invoke-direct {v1, p0, p1}, LJAVARuntime/FixedFraming$2;-><init>(LJAVARuntime/FixedFraming;LJAVARuntime/FixedFrameListener;)V

    invoke-virtual {v0, v1}, LL9/b;->h(LL9/a;)LL9/b;

    return-void
.end method

.method public setFixedFrames(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "framesPerSecond"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesPerSecond"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming;->fixedFraming:LL9/b;

    invoke-virtual {v0, p1}, LL9/b;->i(I)LL9/b;

    return-void
.end method
