.class public LD7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD7/f$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LD7/f$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LD7/f$c;",
            ">;"
        }
    .end annotation
.end field

.field public static c:LD7/f$c;

.field public static d:LE7/b;

.field public static final e:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LD7/f;->a:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LD7/f;->b:Ljava/util/List;

    new-instance v0, LD7/f$a;

    invoke-direct {v0}, LD7/f$a;-><init>()V

    sput-object v0, LD7/f;->e:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, LD7/f;->g()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, LD7/f;->e()V

    return-void
.end method

.method public static c(Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "display"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LD7/f;->e:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    sget-object v0, LD7/f;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, LD7/f$c;

    invoke-direct {v1, p0}, LD7/f$c;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p0, v1, LD7/f$c;->g:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "distance"
        }
    .end annotation

    const v0, 0x3fb33333    # 1.4f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, LNc/b;->M(FF)F

    move-result v0

    const/16 v1, 0x10

    new-array v8, v1, [F

    new-array v9, v1, [D

    new-array v15, v1, [F

    new-array v14, v1, [F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v10, v0, v2

    const/4 v3, 0x0

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    move-object v2, v8

    move v7, v10

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v8, v3

    float-to-double v4, v4

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, LD7/f;->d:LE7/b;

    iget-object v3, v3, LE7/b;->a:LE7/e;

    iget-object v3, v3, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v9, v4, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->j([DFF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    neg-float v0, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const/high16 v0, 0x41c80000    # 25.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v3, v0, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotateLocal(FFF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v17

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v10, v15

    move-object v0, v14

    move v14, v3

    move-object v3, v15

    move v15, v4

    invoke-static/range {v10 .. v20}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v0, v2, v3, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    float-to-double v3, v3

    aput-wide v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, LD7/f;->d:LE7/b;

    iget-object v0, v0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->k([D)V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, LD7/f;->c:LD7/f$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, LD7/f;->d:LE7/b;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, LD7/f$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, v1, LE7/b;->e:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, v1, LE7/b;->a:LE7/e;

    iget-object v1, v0, LE7/e;->e:LTb/a;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v1, v0}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    const/4 v0, 0x1

    invoke-static {v0, v0}, LQb/a;->b(ZZ)V

    sget-object v1, LD7/f;->d:LE7/b;

    iget-object v1, v1, LE7/b;->a:LE7/e;

    iget-object v1, v1, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v1}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    sget-object v1, LD7/f;->d:LE7/b;

    iget-object v1, v1, LE7/b;->a:LE7/e;

    iget-object v1, v1, LE7/e;->e:LTb/a;

    invoke-virtual {v1}, LTb/a;->z()V

    sget-object v1, LD7/f;->d:LE7/b;

    iput-boolean v0, v1, LE7/b;->d:Z

    return-void
.end method

.method public static f()V
    .locals 2

    sget-object v0, LD7/f;->c:LD7/f$c;

    iget-object v0, v0, LD7/f$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LE7/c;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LE7/c$b;

    move-result-object v0

    invoke-virtual {v0}, LE7/c$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LE7/c$b;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0}, LE7/c$b;->c()F

    move-result v0

    invoke-static {v1, v0}, LD7/f;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    :cond_0
    sget-object v0, LD7/f;->c:LD7/f$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, LD7/f$c;->c:Z

    return-void
.end method

.method public static g()V
    .locals 6

    sget-object v0, LD7/f;->d:LE7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LE7/b;->c()V

    :cond_0
    sget-object v0, LD7/f;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, LD7/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LD7/f;->c:LD7/f$c;

    if-nez v0, :cond_6

    sget-object v0, LD7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD7/f$c;

    sput-object v0, LD7/f;->c:LD7/f$c;

    sget-object v0, LD7/f;->d:LE7/b;

    if-nez v0, :cond_2

    new-instance v0, LE7/b;

    invoke-direct {v0}, LE7/b;-><init>()V

    sput-object v0, LD7/f;->d:LE7/b;

    :cond_2
    :try_start_1
    sget-object v0, LD7/f;->c:LD7/f$c;

    iget-object v0, v0, LD7/f$c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v3, v1, v2}, LFb/c;->n(Ljava/lang/String;ZLandroid/content/Context;ZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@vertexthumbbuilder-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->S()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>()V

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setModel(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    sget-object v3, LD7/f;->c:LD7/f$c;

    iput-object v0, v3, LD7/f$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(F)V

    sget-object v3, LD7/f;->d:LE7/b;

    invoke-virtual {v3, v0}, LE7/b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    sget-object v0, LD7/f;->d:LE7/b;

    iput-boolean v1, v0, LE7/b;->d:Z

    iput-boolean v1, v0, LE7/b;->e:Z

    goto :goto_3

    :cond_4
    sput-object v2, LD7/f;->c:LD7/f$c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sput-object v2, LD7/f;->c:LD7/f$c;

    :cond_5
    :goto_3
    sget-object v0, LD7/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, LD7/f;->c:LD7/f$c;

    if-nez v0, :cond_7

    sget-object v0, LD7/f;->e:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    sget-object v0, LD7/f;->d:LE7/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LE7/b;->b()V

    sput-object v2, LD7/f;->d:LE7/b;

    goto :goto_4

    :cond_6
    invoke-static {}, LD7/f;->h()V

    :cond_7
    :goto_4
    return-void

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static h()V
    .locals 5

    sget-object v0, LD7/f;->c:LD7/f$c;

    iget-object v0, v0, LD7/f$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LE7/d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    sget-object v1, LD7/f;->d:LE7/b;

    const/4 v2, 0x1

    iput-boolean v2, v1, LE7/b;->e:Z

    sget-object v1, LD7/f;->c:LD7/f$c;

    iget-object v1, v1, LD7/f$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, LD7/f;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LD7/f;->f()V

    if-nez v0, :cond_1

    sget-object v0, LD7/f;->c:LD7/f$c;

    invoke-virtual {v0}, LD7/f$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sget-object v1, LD7/f;->c:LD7/f$c;

    iget v3, v1, LD7/f$c;->d:I

    if-gtz v3, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v1}, LD7/f$c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LD7/f;->d:LE7/b;

    iget-boolean v0, v0, LE7/b;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, LD7/f;->c:LD7/f$c;

    const/4 v1, 0x5

    iput v1, v0, LD7/f$c;->d:I

    invoke-virtual {v0}, LD7/f$c;->e()Ljava/io/File;

    move-result-object v0

    sget-object v1, LD7/f;->c:LD7/f$c;

    iget-object v1, v1, LD7/f$c;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, LD7/f;->d:LE7/b;

    iget-object v2, v2, LE7/b;->a:LE7/e;

    iget-object v2, v2, LE7/e;->e:LTb/a;

    sget-object v3, LD7/f;->c:LD7/f$c;

    invoke-virtual {v3}, LD7/f$c;->e()Ljava/io/File;

    move-result-object v3

    new-instance v4, LD7/f$b;

    invoke-direct {v4, v1, v0}, LD7/f$b;-><init>(Landroid/widget/ImageView;Ljava/io/File;)V

    const/16 v0, 0x50

    invoke-virtual {v2, v3, v0, v4}, LTb/a;->g(Ljava/io/File;ILjava/lang/Runnable;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;->b()V

    sget-object v1, LD7/f;->c:LD7/f$c;

    iget-object v1, v1, LD7/f$c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LE7/f;->b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/ThumbBuilder/Core/Manifest;)V

    goto :goto_2

    :cond_2
    sub-int/2addr v3, v2

    iput v3, v1, LD7/f$c;->d:I

    if-gtz v3, :cond_3

    invoke-virtual {v1}, LD7/f$c;->a()V

    const/4 v0, 0x0

    sput-object v0, LD7/f;->c:LD7/f$c;

    :cond_3
    :goto_2
    return-void
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    sget-object v3, LD7/f;->d:LE7/b;

    iget-object v3, v3, LE7/b;->a:LE7/e;

    invoke-virtual {v2, p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->updateForThumb(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LE7/e;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, LD7/f;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
