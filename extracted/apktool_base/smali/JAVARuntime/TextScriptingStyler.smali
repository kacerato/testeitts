.class public LJAVARuntime/TextScriptingStyler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;LJAVARuntime/TextScriptingTheme;Ljava/util/List;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "source",
            "theme",
            "highlightSpans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "theme",
            "highlightSpans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LJAVARuntime/TextScriptingTheme;",
            "Ljava/util/List<",
            "LJAVARuntime/TextScriptingSyntaxHighlightSpan;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
