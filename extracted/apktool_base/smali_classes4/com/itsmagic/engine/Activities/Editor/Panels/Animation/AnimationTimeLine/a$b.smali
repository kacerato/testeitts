.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->H2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p3, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_NEW_ANIMATION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;)V

    invoke-direct {p3, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    move-result-object p3

    const-string v0, "Animation "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object p3

    move v3, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-static {v6, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v6, Ldd/b;

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$b;

    invoke-direct {v7, p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;)V

    invoke-direct {v6, v5, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p3, LW7/b;->i:La8/a;

    iget-object p3, p3, La8/a;->a:La8/b;

    iget-object p3, p3, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p3, :cond_3

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {p3, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p3

    check-cast p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-static {v7, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Ldd/b;

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;

    invoke-direct {v8, p0, v5, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V

    invoke-direct {v7, v6, v8}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ldd/b;

    const-string v0, "No animations"

    invoke-direct {p3, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, p3, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
