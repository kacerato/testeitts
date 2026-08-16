.class public abstract LJAVARuntime/AOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Android Views"
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
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v2, LJAVARuntime/AOnTouchListener$1;

    invoke-direct {v2, p0, v1, p1, p2}, LJAVARuntime/AOnTouchListener$1;-><init>(LJAVARuntime/AOnTouchListener;[ZLandroid/view/View;Landroid/view/MotionEvent;)V

    invoke-static {v2}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v1, v0

    return p1
.end method

.method public abstract onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation
.end method
