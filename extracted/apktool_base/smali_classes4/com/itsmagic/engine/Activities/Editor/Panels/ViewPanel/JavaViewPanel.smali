.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public transient Z:LJAVARuntime/ViewPanel;

.field public transient a0:Ljava/lang/Class;

.field public className:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "CustomPanels"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "CustomPanels"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->X:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->className:Ljava/lang/String;

    .line 6
    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->v1()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LJAVARuntime/ViewPanel;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "runtimeComponent",
            "classAddress"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "CustomPanels"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->X:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->className:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Z:LJAVARuntime/ViewPanel;

    .line 12
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->a0:Ljava/lang/Class;

    .line 13
    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->v1()V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)LJAVARuntime/ViewPanel;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Z:LJAVARuntime/ViewPanel;

    return-object p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;LJAVARuntime/ViewPanel;)LJAVARuntime/ViewPanel;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Z:LJAVARuntime/ViewPanel;

    return-object p1
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Y:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public B0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;[Landroid/view/View;)V

    invoke-static {v1}, Ld8/m;->d(Lo8/d;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public E0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public N0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->className:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public s1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->X:Ljava/lang/String;

    return-object v0
.end method

.method public t1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Z:LJAVARuntime/ViewPanel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->className:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0, v1}, Ld8/j;->I0(Ljava/lang/String;Lo8/h;)V

    :cond_0
    return-void
.end method

.method public u1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->X:Ljava/lang/String;

    return-void
.end method

.method public v1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->Z:LJAVARuntime/ViewPanel;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->t1()V

    :catch_0
    :goto_0
    return-void
.end method

.method public x0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
