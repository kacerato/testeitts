.class public Lcom/itsmagic/engine/Engines/Engine/World/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b;->d(LMb/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/a;


# direct methods
.method public constructor <init>(LMb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$dic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v3, v2, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_5

    iget-object v4, v2, LMb/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v4, :cond_1

    iget-boolean v0, v2, LMb/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget v3, v2, LMb/a;->c:I

    iget-object v2, v2, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v2, v2, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean v5, v2, LMb/a;->e:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v5, v2, LMb/a;->d:Z

    if-eqz v5, :cond_3

    iget v2, v2, LMb/a;->c:I

    invoke-static {v4, v3, v2, v0}, Lgb/e;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)V

    goto :goto_0

    :cond_3
    invoke-static {v4, v3, v0}, Lgb/e;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v2, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, LMb/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v2, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, LMb/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-boolean v0, v0, LMb/a;->e:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/b;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/World/b$b$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/b$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/b$b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    iget-object v2, v2, LMb/a;->g:LMb/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_b

    :try_start_1
    iget-object v3, v2, LMb/b;->d:LMb/b$a;

    sget-object v4, LMb/b$a;->OBJ:LMb/b$a;

    if-ne v3, v4, :cond_7

    iget-object v2, v2, LMb/b;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_6
    :goto_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v4, v4, LMb/a;->g:LMb/b;

    iget-object v4, v4, LMb/b;->b:Ljava/lang/String;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v7, v7, LMb/a;->g:LMb/b;

    iget-object v7, v7, LMb/b;->a:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v1, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    aput-object v6, v2, v0

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_2

    :cond_7
    sget-object v4, LMb/b$a;->PREFAB:LMb/b$a;

    if-ne v3, v4, :cond_8

    iget-object v2, v2, LMb/b;->a:Ljava/lang/String;

    invoke-static {v2}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->T(Ljava/lang/String;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_b

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_9

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->S1()V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z1()V

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z()V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r1()V

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v1

    :cond_a
    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->t1(Z)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v()V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$b;->b:LMb/a;

    iget-object v0, v0, LMb/a;->g:LMb/b;

    iget-boolean v0, v0, LMb/b;->f:Z

    if-eqz v0, :cond_b

    sget-object v0, LW7/b;->h:Lb8/f;

    invoke-virtual {v0, v3}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_5
    return-void
.end method
