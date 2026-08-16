.class public LJAVARuntime/IllegalOperatorException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates an exception with a specified message."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria uma exce\u00e7\u00e3o com uma mensagem especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates an exception with a specified message and cause."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria uma exce\u00e7\u00e3o com uma mensagem e uma causa especificadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates an exception with a specified cause."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria uma exce\u00e7\u00e3o com uma causa especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method
