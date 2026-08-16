.class public LJAVARuntime/SquareBrush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Brush;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Brush"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIntensity(FF)F
    .locals 0
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

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
