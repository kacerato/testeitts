.class public LJAVARuntime/EditorPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Editor"
    }
.end annotation


# instance fields
.field public transient panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-void
.end method


# virtual methods
.method public blink()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i()V

    return-void
.end method

.method public copy()LJAVARuntime/EditorPanel;
    .locals 1

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j1()LJAVARuntime/EditorPanel;

    move-result-object v0

    return-object v0
.end method

.method public determineTouch(LJAVARuntime/GUIUtils$TouchFilter;)LJAVARuntime/Touch;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touchFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public determineTouch(LJAVARuntime/GUIUtils$TouchFilter;I)LJAVARuntime/Touch;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touchFilter",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchFilter",
            "offset"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x(LJAVARuntime/GUIUtils$TouchFilter;IZ)Ltc/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public determineTouchPosition(LJAVARuntime/Touch;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object p1, p1, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Z(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "touch can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public determineTouchPosition(LJAVARuntime/Touch;LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "out"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object p1, p1, LJAVARuntime/Touch;->touch:Ltc/h;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "touch can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContentHeightPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H()I

    move-result v0

    return v0
.end method

.method public getContentWidthPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J()I

    move-result v0

    return v0
.end method

.method public getContentXPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K()I

    move-result v0

    return v0
.end method

.method public getContentYPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the editor panel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do painel do editor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect grammar or spelling"
        }
    .end annotation

    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the editor panel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do painel do editor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/EditorPanel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalHeightPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R()I

    move-result v0

    return v0
.end method

.method public getTotalWidthPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c0()I

    move-result v0

    return v0
.end method

.method public getTotalXPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e0()I

    move-result v0

    return v0
.end method

.method public getTotalYPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g0()I

    move-result v0

    return v0
.end method

.method public isAllowCloseX()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j0()Z

    move-result v0

    return v0
.end method

.method public isFloating()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l0()Z

    move-result v0

    return v0
.end method

.method public isRequestCloseConfirmation()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q0()Z

    move-result v0

    return v0
.end method

.method public isTouchInside(LJAVARuntime/Touch;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch",
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iget-object p1, p1, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "touch can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isVisible()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    return v0
.end method

.method public requestDetach()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public setAllowCloseX(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowCloseX"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->W0(Z)V

    return-void
.end method

.method public setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPanel"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-void
.end method

.method public setRequestCloseConfirmation(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeWhenClickOutside"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the editor panel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do painel do editor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    return-void
.end method

.method public setTittle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect grammar or spelling"
        }
    .end annotation

    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the editor panel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do painel do editor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/EditorPanel;->setTitle(Ljava/lang/String;)V

    return-void
.end method
