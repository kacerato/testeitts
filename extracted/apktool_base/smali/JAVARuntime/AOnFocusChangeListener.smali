.class public abstract LJAVARuntime/AOnFocusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AOnFocusChangeListener$1;

    invoke-direct {v0, p0, p1, p2}, LJAVARuntime/AOnFocusChangeListener$1;-><init>(LJAVARuntime/AOnFocusChangeListener;Landroid/view/View;Z)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public abstract onFocusChangeEvent(Landroid/view/View;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation
.end method
