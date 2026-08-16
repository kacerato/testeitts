.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;
.source "SourceFile"


# static fields
.field public static final y:Ljava/lang/String; = "ScriptingHUB"

.field public static final z:Ljava/lang/Class;


# instance fields
.field public openScripts:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->z:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->u(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CODING:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScriptingHUB"

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    new-instance v0, Ly6/e;

    invoke-direct {v0}, Ly6/e;-><init>()V

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->J0(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->D0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->q(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result p0

    return p0
.end method

.method public static K0(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->M0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->L0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static L0(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, Lw4/a;->r1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static M0(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, Ly6/c;->A1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final J0(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inProjectPath",
            "focus"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->E0()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->D0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v5

    instance-of v5, v5, Ly6/c;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v5

    check-cast v5, Ly6/c;

    invoke-virtual {v5}, Ly6/c;->w1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    invoke-interface {p1, v4}, Li4/e;->u(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->M0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ly6/c;

    invoke-direct {v0}, Ly6/c;-><init>()V

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$d;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;ZLy6/c;Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return v3

    :cond_3
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->L0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lw4/a;

    invoke-direct {v0}, Lw4/a;-><init>()V

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;ZLw4/a;Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return v3

    :cond_4
    return v1
.end method

.method public c0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$b;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Ljava/lang/String;)V

    invoke-static {v2}, LN7/c;->c0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->serializedSelectedPanelIndex:I

    if-ltz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;)V

    invoke-static {v0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->c0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public q0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Ln4/c;

    if-eqz v0, :cond_0

    check-cast p1, Ln4/c;

    iget-object p1, p1, Ln4/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->J0(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->q0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public v(Lo4/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v(Lo4/e;)V

    const-string v0, "open-scripts"

    invoke-virtual {p1, v0}, Lo4/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;Ljava/lang/String;)V

    invoke-static {v2}, LN7/c;->c0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method public x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea",
            "panelsControllerListener"
        }
    .end annotation

    move-object v0, p0

    invoke-super/range {p0 .. p17}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->E0()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->D0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    instance-of v3, v3, Ly6/c;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    check-cast v2, Ly6/c;

    invoke-virtual {v2}, Ly6/c;->w1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z(Lo4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->z(Lo4/e;)V

    const-string v0, "open-scripts"

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->openScripts:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lo4/e;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
