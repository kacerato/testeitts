.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$g;
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
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$g;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    new-instance v0, Lm6/d;

    invoke-direct {v0}, Lm6/d;-><init>()V

    sget-object v2, Lr4/a$e;->Right:Lr4/a$e;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v2, v1, v3}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
