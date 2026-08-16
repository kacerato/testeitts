.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pauseButton"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701d6

    goto :goto_0

    :cond_0
    const v0, 0x7f0701db

    :goto_0
    invoke-static {p1, v0}, LVc/e;->U(Landroid/widget/ImageView;I)V

    return-void
.end method
