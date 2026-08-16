.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->v1(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
    .locals 6
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object p3, LW7/b;->i:La8/a;

    iget-object p3, p3, La8/a;->a:La8/b;

    iget-object p3, p3, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v3, :cond_1

    new-instance v4, Ldd/b;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v5}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a;

    invoke-direct {v5, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    invoke-direct {v4, v3, v5}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ldd/b;

    const-string v0, "No materials on object."

    invoke-direct {p3, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, p3, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
