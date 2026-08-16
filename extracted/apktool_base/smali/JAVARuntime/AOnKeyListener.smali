.class public abstract LJAVARuntime/AOnKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v8, LJAVARuntime/AOnKeyListener$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, LJAVARuntime/AOnKeyListener$1;-><init>(LJAVARuntime/AOnKeyListener;[ZLandroid/view/View;ILandroid/view/KeyEvent;)V

    invoke-static {v8}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v1, v0

    return p1
.end method

.method public abstract onKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation
.end method
