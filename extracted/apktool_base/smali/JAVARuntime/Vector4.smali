.class public final LJAVARuntime/Vector4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(F)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FIF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(FIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(F)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    return-void
.end method


# virtual methods
.method public getW()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    return v0
.end method

.method public set(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->i(F)V

    return-void
.end method

.method public set(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->j(FFFF)V

    return-void
.end method

.method public set(LJAVARuntime/Vector4;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object p1, p1, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-void
.end method

.method public setW(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    return-void
.end method

.method public setZ(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    return-void
.end method
