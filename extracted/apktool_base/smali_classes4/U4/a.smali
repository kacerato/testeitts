.class public LU4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU4/a$a;
    }
.end annotation


# static fields
.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field public static final H:F = 1.0E-5f

.field public static final I:F = 1.0E-4f


# instance fields
.field public final A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final B:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final C:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public b:F

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final v:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public w:I

.field public final x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LU4/a;->b:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LU4/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, LU4/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, LU4/a;->v:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v0, 0x0

    iput v0, p0, LU4/a;->w:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, LU4/a;->B:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, LU4/a;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewer"
        }
    .end annotation

    invoke-virtual {p0, p1}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Global:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    :goto_0
    return-object p1
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "axisObject",
            "selectedObject",
            "viewer"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    :goto_0
    if-eqz p3, :cond_4

    iget-boolean p3, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2, p3}, LU4/a;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2, p3}, LU4/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_2
    return-void

    :cond_4
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gizmoTransform",
            "selectedObject",
            "viewer"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, LU4/a;->q(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G3()V

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axisObject",
            "camera",
            "editorCamera",
            "selectedObject",
            "editor3DViewe"
        }
    .end annotation

    return-void
.end method

.method public E(F)LU4/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userSensibility"
        }
    .end annotation

    iput p1, p0, LU4/a;->b:F

    return-object p0
.end method

.method public F(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distance",
            "step"
        }
    .end annotation

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, p2, v0

    if-lez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, p2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method public G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FF)V
    .locals 3
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
            "position",
            "origin",
            "normal",
            "tangent",
            "bitangent",
            "tangentStep",
            "bitangentStep"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    iget-object v1, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    iget-object v2, p0, LU4/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    invoke-virtual {p0, v0, p6}, LU4/a;->F(FF)F

    move-result p6

    invoke-virtual {p0, v1, p7}, LU4/a;->F(FF)F

    move-result p7

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p4, p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p5, p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    :goto_0
    return-void
.end method

.method public final H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "outCenter"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lgb/b;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lgb/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lgb/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, LU4/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, LU4/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, v1, Lgb/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2}, LU4/a;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "outCenter",
            "preferredSource"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1, p2}, LU4/a;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, LU4/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    invoke-virtual {p0, p1, p2}, LU4/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1, p2}, LU4/a;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0, p1, p2}, LU4/a;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-eqz p3, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0, p1, p2}, LU4/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "outCenter"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2}, LU4/a;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "camera",
            "axisTransform"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FFFFLcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
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
            0x0
        }
        names = {
            "gameObject",
            "startLocalRotation",
            "startGlobalRotation",
            "angleDegrees",
            "axisX",
            "axisY",
            "axisZ",
            "viewer",
            "outCurrentGlobalRotation"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LU4/a;->v:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p5, p6, p7, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0, p8}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, LU4/a;->v:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p9, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p9, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p9}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void

    :cond_1
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p3, p0, LU4/a;->v:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
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
            "gameObject",
            "axisDelta",
            "axisWorldDirection",
            "localAxisX",
            "localAxisY",
            "localAxisZ",
            "viewer"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p7}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p7

    if-nez p7, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    mul-float/2addr p4, p2

    mul-float/2addr p5, p2

    mul-float/2addr p6, p2

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    invoke-virtual {p1, p4, p5, p6, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y2(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void

    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p4, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p4, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p3}, LU4/a;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, LU4/a;->u:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "currentGlobalRotation",
            "pivotWorld",
            "pivotLocalOffset"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LU4/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x1

    invoke-virtual {p2, p4, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU4/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    iget-object p3, p0, LU4/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, LU4/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "viewer"
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V

    iget-object p2, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, p2}, LU4/a;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iput v1, p0, LU4/a;->w:I

    return v1

    :cond_2
    iget-object p2, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, p2}, LU4/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, LU4/a;->w:I

    return v1

    :cond_3
    iput v0, p0, LU4/a;->w:I

    return v0

    :cond_4
    :goto_1
    iput v0, p0, LU4/a;->w:I

    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startGlobalRotation",
            "startGlobalPosition",
            "pivotWorld",
            "outLocalOffset"
        }
    .end annotation

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    neg-float p1, p1

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    const/4 p1, 0x1

    invoke-virtual {p2, p4, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchSlide",
            "camObj",
            "axisWorldDirection",
            "axisTransform"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget-object v2, p0, LU4/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    const v3, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v1, v0, v4}, LU4/a;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, LU4/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v1, v2, v0}, LU4/a;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, LU4/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v0, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, LU4/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->N(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    div-float/2addr p1, v0

    iget p2, p0, LU4/a;->b:F

    mul-float/2addr p1, p2

    return p1

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, LU4/a;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    mul-float/2addr p1, v3

    return p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, LU4/a;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    mul-float/2addr p1, v3

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, LU4/a;->x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU4/a;->x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    iget-object p2, p0, LU4/a;->x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lgb/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lgb/b;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, LU4/a;->z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, LU4/a;->B:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, LU4/a;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, LU4/a;->z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LU4/a;->B:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v4, p0, LU4/a;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iget-object v2, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v3, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v5, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    iget-object v1, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    const/16 v8, 0x8

    if-ge p2, v8, :cond_8

    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_3

    move v8, p1

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    and-int/lit8 v9, p2, 0x2

    if-nez v9, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v5

    :goto_2
    and-int/lit8 v10, p2, 0x4

    if-nez v10, :cond_5

    move v10, v3

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    iget-object v11, p0, LU4/a;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v12, p0, LU4/a;->y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v8, v9, v10, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v8, p0, LU4/a;->y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, p0, LU4/a;->x:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v8

    cmpg-float v9, v8, v6

    if-gez v9, :cond_6

    move v6, v8

    :cond_6
    cmpl-float v9, v8, v7

    if-lez v9, :cond_7

    move v7, v8

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_8
    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_a
    :goto_4
    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchSlide",
            "camObj",
            "inWorldNormal",
            "axisTransform"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, p2, p4, v0}, LU4/a;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p4, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p4, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    iget-object p4, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p4

    sub-float/2addr p2, p4

    iget-object p4, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p4

    iget-object v0, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    sub-float/2addr p4, v0

    iget-object v0, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget-object v1, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchSlide",
            "camObj",
            "objAxis",
            "axisTransform"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LU4/a;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Z)F

    move-result p1

    return p1
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Z)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchSlide",
            "camObj",
            "objAxis",
            "axisTransform",
            "cameraDistanceMultiply"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v2, p4, v3}, LU4/a;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v3, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v4, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v3, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v6, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    cmpl-float p3, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez p3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    :cond_3
    :goto_0
    if-eqz p5, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p1

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p1, p3, :cond_4

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p1, p2, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v3

    :cond_5
    :goto_1
    iget p1, p0, LU4/a;->b:F

    const/high16 p2, 0x42a00000    # 80.0f

    mul-float/2addr p1, p2

    mul-float/2addr p1, v3

    mul-float/2addr p1, v0

    mul-float/2addr p1, v1

    return p1
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchSlide",
            "camObj",
            "objAxis",
            "axisTransform"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LU4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, p2, p4, v2}, LU4/a;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p4, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p4, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p0, LU4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p4, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    iget-object p4, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p4

    sub-float/2addr p2, p4

    iget-object p4, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p4

    iget-object v2, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr p4, v2

    iget-object v2, p0, LU4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, LU4/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, p2, p4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LU4/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    cmpl-float p2, p1, v1

    if-lez p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    :cond_3
    :goto_0
    iget p1, p0, LU4/a;->b:F

    mul-float/2addr p1, v0

    mul-float/2addr p1, v1

    return p1
.end method

.method public l(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorCamera",
            "editor3DViewer",
            "touch",
            "worldPivot",
            "outDirection"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Z(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->v0(F)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p4, p1

    sub-float/2addr v1, p4

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {p5, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p5, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public final m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "cameraLocalCoordinates",
            "out"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lo4/f;->e()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v0}, Lo4/f;->f()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v0}, Lo4/f;->d()F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v0}, Lo4/f;->c()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v6

    div-float/2addr v6, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    div-float/2addr p2, p1

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    sub-float/2addr v2, p2

    mul-float/2addr v2, v0

    add-float/2addr v4, v2

    invoke-virtual {p3, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->V1()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewer"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useGlobalOrientation:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->K1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$i;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$i;->Global:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$i;

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public q(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewer"
        }
    .end annotation

    invoke-virtual {p0, p1}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final r(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "viewer",
            "centerWasCached"
        }
    .end annotation

    if-eqz p3, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    :goto_0
    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V

    iget-object p2, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget p3, p0, LU4/a;->w:I

    invoke-virtual {p0, p1, p2, p3}, LU4/a;->I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const/4 p3, 0x3

    if-ge p2, p3, :cond_6

    iget-object p3, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p3

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, LU4/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LU4/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, LU4/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V

    iget-object p3, p0, LU4/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p0, LU4/a;->w:I

    invoke-virtual {p0, p1, p3, v0}, LU4/a;->I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
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
            "editorCamera",
            "gameObject",
            "camera",
            "axisTransform",
            "touchSlide",
            "touch",
            "editor3DViewer"
        }
    .end annotation

    return-void
.end method

.method public u(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
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
            "editorCamera",
            "gameObject",
            "camera",
            "axisTransform",
            "touchSlide",
            "touch",
            "editor3DViewer"
        }
    .end annotation

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LU4/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editorCamera",
            "gameObject"
        }
    .end annotation

    sget-object p1, LU4/a$a;->IGNORE:LU4/a$a;

    return-object p1
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referenceObject",
            "localAxis",
            "out",
            "viewer"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p4}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p4

    if-nez p4, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, LU4/a;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, LU4/a;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    :goto_2
    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p0, p1}, LU4/a;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "editor3DViewer",
            "outPivot"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return v0
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "axisTransform",
            "out"
        }
    .end annotation

    iget-object v0, p0, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lo4/f;->e()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v0}, Lo4/f;->f()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v0}, Lo4/f;->d()F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v0}, Lo4/f;->c()F

    move-result v0

    mul-float/2addr v0, v2

    iget-object v1, p0, LU4/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v5, v2

    add-float/2addr v6, v3

    div-float v2, v0, v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v1, p0, LU4/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LU4/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, p1, p2, v1}, LU4/a;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p1, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    iget-object p2, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    add-float/2addr v5, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v0, v4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v0, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object p1, p0, LU4/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_3
    :goto_0
    return-void
.end method
