.class public LB5/d;
.super LB5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB5/d$l;
    }
.end annotation


# instance fields
.field public g:I

.field public h:LC5/c;

.field public i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


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

    const/4 p2, 0x1

    iput p2, p0, LB5/d;->g:I

    iput-object p1, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public static synthetic i(LB5/d;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic j(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
    .locals 0

    invoke-direct {p0, p1}, LB5/d;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(LB5/d;)I
    .locals 0

    iget p0, p0, LB5/d;->g:I

    return p0
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, LB5/d;->h:LC5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LC5/c;->h()V

    :cond_0
    return-void
.end method

.method private n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
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

    new-instance v3, LB5/d$h;

    invoke-direct {v3, p0, p1}, LB5/d$h;-><init>(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LB5/d$i;

    invoke-direct {v0, p0}, LB5/d$i;-><init>(LB5/d;)V

    iput-object v0, v1, LC5/a;->h:LD5/g;

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIconResource()I

    move-result v0

    iput v0, v1, LC5/a;->j:I

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

    iget-object v3, v1, LC5/a;->o:Ljava/util/List;

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInternalInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, LC5/a;->o:Ljava/util/List;

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInternalInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LC5/a;->o:Ljava/util/List;

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
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

    goto :goto_3

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

    :goto_3
    iget-object v0, v1, LC5/a;->o:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, v1, LC5/a;->o:Ljava/util/List;

    :cond_4
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v1, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->exposeAnimationEntries(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getLongTapMenu()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v1, LC5/a;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorExtras()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v1, LC5/a;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    new-instance v0, LB5/d$j;

    invoke-direct {v0, p0, p1}, LB5/d$j;-><init>(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setCustomInspectorListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$d;)V

    new-instance v0, LC5/d;

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    invoke-direct {v0, v2, v3, v1, p1}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->u:LC5/d;

    return-object v0
.end method

.method private o()LC5/d;
    .locals 6

    new-instance v0, LC5/a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPTIONS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LB5/d$g;

    invoke-direct {v3, p0}, LB5/d$g;-><init>(LB5/d;)V

    const-string v4, "Meta ID"

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TAG:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I0(Ljava/lang/String;Landroid/content/Context;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHANGING_META_ID:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f070146

    iput v1, v0, LC5/a;->j:I

    new-instance v1, LC5/d;

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method private p()LC5/d;
    .locals 5

    new-instance v0, LC5/a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TRANSFORM:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LC5/a;->o:Ljava/util/List;

    const v1, 0x7f0700de

    iput v1, v0, LC5/a;->j:I

    new-instance v1, LC5/d;

    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, LC5/d$a;->Component:LC5/d$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, LC5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LC5/d$a;LC5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, LB5/d;->l()V

    invoke-direct {p0}, LB5/d;->m()V

    :try_start_0
    invoke-direct {p0}, LB5/d;->x()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, LB5/d;->l()V

    invoke-direct {p0}, LB5/d;->m()V

    :goto_0
    return-void
.end method

.method private v()V
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, LB5/d;->o()LC5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput v1, p0, LB5/d;->g:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, LB5/d;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LB5/d;->h:LC5/c;

    if-nez v1, :cond_2

    new-instance v1, LC5/c;

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    new-instance v3, LB5/d$e;

    invoke-direct {v3, p0}, LB5/d$e;-><init>(LB5/d;)V

    invoke-direct {v1, v0, v2, v3}, LC5/c;-><init>(Ljava/util/List;Landroid/content/Context;LC5/j;)V

    iput-object v1, p0, LB5/d;->h:LC5/c;

    iget-object v0, p0, LB5/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LB5/d$f;

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, LB5/d$f;-><init>(LB5/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, LB5/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LB5/d;->h:LC5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, LC5/c;->f(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method private w()V
    .locals 0

    invoke-direct {p0}, LB5/d;->m()V

    invoke-direct {p0}, LB5/d;->v()V

    return-void
.end method

.method private x()V
    .locals 8

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

    iget-object v0, p0, LB5/a;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00a2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    iget-object v2, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f090159

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09033b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Edit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, LM7/c;

    new-instance v4, LB5/d$c;

    invoke-direct {v4, p0}, LB5/d$c;-><init>(LB5/d;)V

    sget-object v5, LM7/c$b;->Left:LM7/c$b;

    iget-object v6, p0, LB5/a;->e:Landroid/app/Activity;

    const v7, 0x7f070212

    invoke-direct {v3, v7, v4, v5, v6}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LM7/c;

    new-instance v4, LB5/d$d;

    invoke-direct {v4, p0}, LB5/d$d;-><init>(LB5/d;)V

    sget-object v5, LM7/c$b;->Right:LM7/c$b;

    iget-object v6, p0, LB5/a;->e:Landroid/app/Activity;

    const v7, 0x7f0701de

    invoke-direct {v3, v7, v4, v5, v6}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM7/g;

    iget-object v4, p0, LB5/a;->e:Landroid/app/Activity;

    iget-object v5, p0, LB5/a;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, v4, v5}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    new-instance v4, LM7/k;

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, p0, LB5/a;->e:Landroid/app/Activity;

    invoke-static {v5, v6}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v5}, LM7/k;-><init>(I)V

    iget-object v5, p0, LB5/a;->e:Landroid/app/Activity;

    iget-object v6, p0, LB5/a;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v5, v6}, LM7/k;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {v4}, LM7/g;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, LM7/g;->n(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, LB5/d;->w()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, LB5/a;->a()V

    invoke-virtual {p0}, LB5/d;->t()V

    invoke-direct {p0}, LB5/d;->l()V

    invoke-direct {p0}, LB5/d;->m()V

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

    new-instance v0, LB5/d$k;

    invoke-direct {v0, p0, p1}, LB5/d$k;-><init>(LB5/d;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, LB5/d$a;

    invoke-direct {v0, p0}, LB5/d$a;-><init>(LB5/d;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, LB5/a;->d()V

    iget-object v0, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0}, LB5/d;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public final q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB5/a;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iput-object p1, p0, LB5/d;->i:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, LB5/d;->u()V

    :cond_1
    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p0}, LB5/d;->t()V

    invoke-virtual {p0, p1}, LB5/d;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
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

    iget-object v0, p0, LB5/d;->h:LC5/c;

    if-eqz v0, :cond_0

    new-instance v0, LB5/d$b;

    invoke-direct {v0, p0, p1}, LB5/d$b;-><init>(LB5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 0

    invoke-direct {p0}, LB5/d;->l()V

    return-void
.end method
