.class public LJAVARuntime/ViewPanel;
.super LJAVARuntime/EditorPanel;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Editor"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, LJAVARuntime/EditorPanel;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialShader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LJAVARuntime/EditorPanel;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return-void
.end method

.method public static findViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "view",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, LJAVARuntime/Editor;->findViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getIdOf(Landroid/view/View;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p0}, LJAVARuntime/Editor;->getIdOf(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toView(Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public lpTaskUpdate()V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Runs in the engine low priority task thread."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Executa na thread de tarefa de baixa prioridade da engine."
    .end annotation

    return-void
.end method

.method public minimizedUpdate()V
    .locals 0

    return-void
.end method

.method public onAttach()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindView()V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public onUnbindView()V
    .locals 0

    return-void
.end method

.method public updateUI()V
    .locals 0

    return-void
.end method

.method public updateUIVisible()V
    .locals 0

    return-void
.end method
