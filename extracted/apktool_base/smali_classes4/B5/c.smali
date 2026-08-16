.class public LB5/c;
.super LB5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB5/c$r;
    }
.end annotation


# instance fields
.field public g:LC5/c;

.field public h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Landroid/view/LayoutInflater;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentObject",
            "scrollView",
            "scrollContent",
            "topContent",
            "midListview",
            "context",
            "layoutInflater"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, LB5/a;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public static synthetic i(LB5/c;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic j(LB5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
    .locals 0

    invoke-virtual {p0, p1}, LB5/c;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, LB5/a;->a()V

    invoke-virtual {p0}, LB5/c;->k()V

    invoke-virtual {p0}, LB5/c;->l()V

    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    new-instance v0, LB5/c$f;

    invoke-direct {v0, p0, p1}, LB5/c$f;-><init>(LB5/c;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, LB5/c$g;

    invoke-direct {v0, p0}, LB5/c$g;-><init>(LB5/c;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, LB5/a;->d()V

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    invoke-virtual {v0}, La8/b;->b()La8/b$a;

    move-result-object v0

    sget-object v1, La8/b$a;->GameObject:La8/b$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LB5/c;->u()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    invoke-super {p0}, LB5/a;->h()V

    iget-object v0, p0, LB5/c;->g:LC5/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LB5/c;->g:LC5/c;

    invoke-virtual {v1}, LC5/c;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LB5/c;->g:LC5/c;

    invoke-virtual {v1, v0}, LC5/c;->i(I)LC5/d;

    move-result-object v1

    iget-object v1, v1, LC5/d;->d:LC5/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    invoke-virtual {v2}, LC5/b;->b()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, LB5/c;->g:LC5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LC5/c;->h()V

    :cond_0
    return-void
.end method

.method public final m()LC5/d;
    .locals 5

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    new-instance v0, LC5/a;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPTIONS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0, v2, v1, v3}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f07019c

    iput v1, v0, LC5/a;->j:I

    new-instance v1, LC5/d;

    iget-object v2, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateComponentNames:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getDisplayableTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LC5/a;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, LC5/a;->e:Z

    goto :goto_0

    :cond_1
    new-instance v1, LC5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    new-instance v3, LB5/c$d;

    invoke-direct {v3, p0, p1}, LB5/c$d;-><init>(LB5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LB5/c$e;

    invoke-direct {v0, p0}, LB5/c$e;-><init>(LB5/c;)V

    iput-object v0, v1, LC5/a;->h:LD5/g;

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIconResource()I

    move-result v0

    iput v0, v1, LC5/a;->j:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->shouldTintIcon()Z

    move-result v0

    iput-boolean v0, v1, LC5/a;->k:Z

    iget-object v0, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorColorDirectV2(Landroid/content/Context;)LJAVARuntime/Color;

    move-result-object v0

    iput-object v0, v1, LC5/a;->q:LJAVARuntime/Color;

    iget-object v0, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorColorV2(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, LC5/a;->p:I

    const v0, 0x7f050165

    const/16 v2, 0xc

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isDeprecated()Z

    move-result v3

    iput-boolean v3, v1, LC5/a;->s:Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, v1, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DEPRECATED_PREFIX:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getDeprecatedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v3, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInternalInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LC5/a;->o:Ljava/util/List;

    iget-object v3, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, v1, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, v1, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    iget-object v0, v1, LC5/a;->o:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, v1, LC5/a;->o:Ljava/util/List;

    :cond_5
    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v1, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->exposeAnimationEntries(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getLongTapMenu()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v1, LC5/a;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorExtras()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v1, LC5/a;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    new-instance v0, LC5/d;

    iget-object v2, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    invoke-direct {v0, v2, v3, v1, p1}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->u:LC5/d;

    return-object v0
.end method

.method public final o()LC5/d;
    .locals 6

    new-instance v0, LC5/a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPTIONS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LB5/c$a;

    invoke-direct {v3, p0}, LB5/c$a;-><init>(LB5/c;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DONT_DESTROY_ON_LOAD:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LB5/c$b;

    invoke-direct {v3, p0}, LB5/c$b;-><init>(LB5/c;)V

    const-string v4, "Allow animations"

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LB5/c;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LB5/c$c;

    invoke-direct {v3, p0}, LB5/c$c;-><init>(LB5/c;)V

    const-string v4, "Meta ID"

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LB5/c;->r()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    iget-object v2, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TAG:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I0(Ljava/lang/String;Landroid/content/Context;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, LB5/c;->r()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHANGING_META_ID:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const v1, 0x7f070146

    iput v1, v0, LC5/a;->j:I

    new-instance v1, LC5/d;

    iget-object v2, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method public final p()LC5/d;
    .locals 6

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    new-instance v1, LC5/a;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RECT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v3, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, LC5/a;->o:Ljava/util/List;

    const v0, 0x7f07009c

    iput v0, v1, LC5/a;->j:I

    new-instance v0, LC5/d;

    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, LC5/d$a;->Component:LC5/d$a;

    invoke-direct {v0, v3, v4, v1, v2}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v0

    :cond_0
    new-instance v0, LC5/a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TRANSFORM:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LC5/a;->o:Ljava/util/List;

    const v1, 0x7f0700de

    iput v1, v0, LC5/a;->j:I

    new-instance v1, LC5/d;

    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, LC5/d$a;->Component:LC5/d$a;

    invoke-direct {v1, v3, v4, v0, v2}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->isChild()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 2

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    iget-object v0, p0, LB5/c;->g:LC5/c;

    if-eqz v0, :cond_0

    new-instance v0, LB5/c$h;

    invoke-direct {v0, p0, p1}, LB5/c$h;-><init>(LB5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iput-object p1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, LB5/c;->u()V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB5/c;->a()V

    :try_start_0
    invoke-virtual {p0}, LB5/c;->x()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LB5/c;->a()V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, LB5/c;->r()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v1, v3, :cond_2

    :try_start_0
    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, LB5/c;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    if-eq v4, v5, :cond_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, LB5/c;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v3

    iget-object v4, v3, LC5/d;->d:LC5/a;

    new-instance v5, LB5/c$o;

    invoke-direct {v5, p0}, LB5/c$o;-><init>(LB5/c;)V

    iput-object v5, v4, LC5/a;->h:LD5/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LB5/c;->q()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, LB5/c;->p()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, LB5/c;->o()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v2, v1, :cond_a

    :try_start_1
    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->c:Z

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    if-eq v3, v4, :cond_5

    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->clonedByPrefab:Z

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, LB5/c;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, LB5/c;->p()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, LB5/c;->o()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v2, v1, :cond_a

    :try_start_2
    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->c:Z

    if-nez v3, :cond_8

    invoke-virtual {p0, v1}, LB5/c;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, LB5/c;->m()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, LB5/c;->g:LC5/c;

    if-nez v1, :cond_b

    new-instance v1, LC5/c;

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    new-instance v3, LB5/c$p;

    invoke-direct {v3, p0}, LB5/c$p;-><init>(LB5/c;)V

    invoke-direct {v1, v0, v2, v3}, LC5/c;-><init>(Ljava/util/List;Landroid/content/Context;LC5/j;)V

    iput-object v1, p0, LB5/c;->g:LC5/c;

    iget-object v0, p0, LB5/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LB5/c$q;

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, LB5/c$q;-><init>(LB5/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, LB5/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LB5/c;->g:LC5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v1, v0}, LC5/c;->f(Ljava/util/List;)V

    :goto_7
    return-void
.end method

.method public final w()V
    .locals 0

    invoke-virtual {p0}, LB5/c;->l()V

    invoke-virtual {p0}, LB5/c;->v()V

    return-void
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, LB5/a;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB5/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB5/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c1()Z

    move-result v0

    const v1, 0x7f09023a

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LB5/a;->f:Landroid/view/LayoutInflater;

    const v3, 0x7f0c009f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    iget-object v2, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090552

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    const v3, 0x7f090088

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->SingleLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    new-instance v4, LB5/c$i;

    invoke-direct {v4, p0, v3}, LB5/c$i;-><init>(LB5/c;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    new-instance v4, LB5/c$j;

    invoke-direct {v4, p0, v1}, LB5/c$j;-><init>(LB5/c;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    new-instance v1, LB5/c$k;

    invoke-direct {v1, p0}, LB5/c$k;-><init>(LB5/c;)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    new-instance v1, LB5/c$l;

    invoke-direct {v1, p0}, LB5/c$l;-><init>(LB5/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB5/a;->f:Landroid/view/LayoutInflater;

    const v3, 0x7f0c00a0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    iget-object v2, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, LB5/c;->h:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->SingleLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    new-instance v2, LB5/c$m;

    invoke-direct {v2, p0, v1}, LB5/c$m;-><init>(LB5/c;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    new-instance v2, LB5/c$n;

    invoke-direct {v2, p0, v0}, LB5/c$n;-><init>(LB5/c;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_0
    invoke-virtual {p0}, LB5/c;->w()V

    return-void
.end method
