.class public LJAVARuntime/TextScriptingSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient returnType:Ljava/lang/String;

.field public transient text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/TextScriptingSuggestion;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "returnType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "returnType"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, LJAVARuntime/TextScriptingSuggestion;->text:Ljava/lang/String;

    .line 7
    iput-object p2, p0, LJAVARuntime/TextScriptingSuggestion;->returnType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertInternal()Lorg/blacksquircle/ui/language/base/model/Suggestion;
    .locals 4
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    sget-object v1, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-virtual {p0}, LJAVARuntime/TextScriptingSuggestion;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LJAVARuntime/TextScriptingSuggestion;->getReturnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingSuggestion;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingSuggestion;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setReturnType(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "returnType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "returnType"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingSuggestion;->returnType:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingSuggestion;->text:Ljava/lang/String;

    return-void
.end method
