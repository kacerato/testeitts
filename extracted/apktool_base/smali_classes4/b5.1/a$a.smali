.class public Lb5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb5/a;->t(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ltc/h;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic i:Laa/d;

.field public final synthetic j:F

.field public final synthetic k:Lb5/a;


# direct methods
.method public constructor <init>(Lb5/a;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Laa/d;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$touch",
            "val$editorCamera",
            "val$gameObject",
            "val$editor3DViewer",
            "val$deslocation",
            "val$useGrid",
            "val$gridOrigin",
            "val$ray",
            "val$distanceToCamera"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb5/a$a;->k:Lb5/a;

    iput-object p2, p0, Lb5/a$a;->b:Ltc/h;

    iput-object p3, p0, Lb5/a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iput-object p4, p0, Lb5/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p5, p0, Lb5/a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p6, p0, Lb5/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean p7, p0, Lb5/a$a;->g:Z

    iput-object p8, p0, Lb5/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p9, p0, Lb5/a$a;->i:Laa/d;

    iput p10, p0, Lb5/a$a;->j:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lb5/a$a;->b:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb5/a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v2, p0, Lb5/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lb5/a$a;->b:Ltc/h;

    iget-object v4, p0, Lb5/a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-static {v1, v2, v3, v4}, Lb5/a;->L(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Lb5/a$c;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Lb5/a$a;->k:Lb5/a;

    iget-object v7, p0, Lb5/a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v8, p0, Lb5/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v9, p0, Lb5/a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v10, p0, Lb5/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v11, p0, Lb5/a$a;->g:Z

    iget-object v12, p0, Lb5/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static/range {v5 .. v12}, Lb5/a;->M(Lb5/a;Lb5/a$c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lb5/a$a;->i:Laa/d;

    iget-object v2, v1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v1, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v3, p0, Lb5/a$a;->j:F

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lb5/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-boolean v2, p0, Lb5/a$a;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb5/a$a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lb5/a$a;->k:Lb5/a;

    iget-object v4, p0, Lb5/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, p0, Lb5/a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-static {v3, v1, v4, v5, v2}, Lb5/a;->N(Lb5/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v1, Lb5/a$a$a;

    invoke-direct {v1, p0, v2}, Lb5/a$a$a;-><init>(Lb5/a$a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lb5/a$a;->k:Lb5/a;

    invoke-static {v1}, Lb5/a;->O(Lb5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v2, p0, Lb5/a$a;->k:Lb5/a;

    invoke-static {v2}, Lb5/a;->O(Lb5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :cond_2
    :goto_3
    return-void
.end method
