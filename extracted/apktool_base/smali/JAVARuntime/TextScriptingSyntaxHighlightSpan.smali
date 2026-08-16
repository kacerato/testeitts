.class public LJAVARuntime/TextScriptingSyntaxHighlightSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient end:I

.field public transient span:LJAVARuntime/TextScriptingStyleSpan;

.field public transient start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/TextScriptingStyleSpan;II)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "span",
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "span",
            "start",
            "end"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->span:LJAVARuntime/TextScriptingStyleSpan;

    .line 6
    iput p2, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->start:I

    .line 7
    iput p3, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->end:I

    return v0
.end method

.method public getSpan()LJAVARuntime/TextScriptingStyleSpan;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->span:LJAVARuntime/TextScriptingStyleSpan;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->start:I

    return v0
.end method

.method public setEnd(I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->end:I

    return-void
.end method

.method public setSpan(LJAVARuntime/TextScriptingStyleSpan;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "span"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "span"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->span:LJAVARuntime/TextScriptingStyleSpan;

    return-void
.end method

.method public setStart(I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/TextScriptingSyntaxHighlightSpan;->start:I

    return-void
.end method
