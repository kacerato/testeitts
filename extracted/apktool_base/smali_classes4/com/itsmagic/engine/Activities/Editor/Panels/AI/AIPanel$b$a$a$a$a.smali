.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->e:Ljava/io/File;

    const-string v2, "albedo"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "/"

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->f:Ljava/io/File;

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->h:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_5

    const-string v6, "Surface/Standard"

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->h:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->f:Ljava/io/File;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->e:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "normal"

    invoke-virtual {v6, v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;->g:Ljava/io/File;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "roughness"

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v0, LW7/b;->h:Lb8/f;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b$a$a$a$a;)V

    invoke-virtual {v0, v1, v2}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method
