.class public Lfc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc/d$a;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lfc/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfc/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public c:LRb/d;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public final g:[D

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfc/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/google/android/filament/w;

.field public final j:[F

.field public k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:LTb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfc/c;

    invoke-direct {v0}, Lfc/c;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lfc/d;->q:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quadrenderer:true-false-false-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc/d;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lfc/d;->a:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lfc/d;->g:[D

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lfc/d;->h:Ljava/util/List;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lfc/d;->j:[F

    const/4 v0, -0x1

    iput v0, p0, Lfc/d;->l:I

    iput v0, p0, Lfc/d;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lfc/d;->n:I

    iput v0, p0, Lfc/d;->o:I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lfc/d;->c(Z)V

    return-void
.end method

.method public static c(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRebuild"
        }
    .end annotation

    sget-object v0, Lfc/d;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Lec/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {v0}, Lec/b;->h(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lec/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0, p0}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :cond_1
    new-instance p0, LSb/b;

    invoke-direct {p0}, LSb/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuadRenderer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    check-cast p0, LSb/b;

    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->U(I)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "baseColor"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v1, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n"

    invoke-virtual {p0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v0, p0}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Falha ao compilar material em runtime!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lfc/d;->c(Z)V

    return-void
.end method

.method public static i(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfc/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfc/b;

    invoke-virtual {v2}, Lfc/b;->c()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfc/b;

    invoke-virtual {v3}, Lfc/b;->c()I

    move-result v3

    if-le v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static l([FFFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "tx",
            "ty",
            "tz",
            "sx",
            "sy"
        }
    .end annotation

    const/4 v0, 0x0

    aput p4, p0, v0

    const/4 p4, 0x1

    const/4 v0, 0x0

    aput v0, p0, p4

    const/4 p4, 0x2

    aput v0, p0, p4

    const/4 p4, 0x3

    aput v0, p0, p4

    const/4 p4, 0x4

    aput v0, p0, p4

    const/4 p4, 0x5

    aput p5, p0, p4

    const/4 p4, 0x6

    aput v0, p0, p4

    const/4 p4, 0x7

    aput v0, p0, p4

    const/16 p4, 0x8

    aput v0, p0, p4

    const/16 p4, 0x9

    aput v0, p0, p4

    const/16 p4, 0xa

    const/high16 p5, 0x3f800000    # 1.0f

    aput p5, p0, p4

    const/16 p4, 0xb

    aput v0, p0, p4

    const/16 p4, 0xc

    aput p1, p0, p4

    const/16 p1, 0xd

    aput p2, p0, p1

    const/16 p1, 0xe

    aput p3, p0, p1

    const/16 p1, 0xf

    aput p5, p0, p1

    return-void
.end method


# virtual methods
.method public a(Lfc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quadImage"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfc/d;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lfc/d;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 15

    iget-object v0, p0, Lfc/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v0, p0, Lfc/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iget-object v3, p0, Lfc/d;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    new-array v0, v2, [F

    new-array v3, v2, [F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v3, v1, v0, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    new-array v0, v2, [D

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v3, v4

    float-to-double v5, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lfc/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->k([D)V

    :cond_1
    iget v0, p0, Lfc/d;->l:I

    iget v3, p0, Lfc/d;->n:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lfc/d;->m:I

    iget v4, p0, Lfc/d;->o:I

    if-eq v0, v4, :cond_4

    :cond_2
    new-array v0, v2, [F

    int-to-float v8, v3

    iget v3, p0, Lfc/d;->o:I

    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v3, v2, [D

    :goto_1
    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    float-to-double v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lfc/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->j([DFF)V

    iget v0, p0, Lfc/d;->n:I

    iput v0, p0, Lfc/d;->l:I

    iget v0, p0, Lfc/d;->o:I

    iput v0, p0, Lfc/d;->m:I

    :cond_4
    return-void
.end method

.method public final g(I)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needed"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v2

    :goto_0
    iget-object v4, v0, Lfc/d;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, p1

    if-ge v4, v5, :cond_0

    new-instance v4, LRb/c;

    invoke-direct {v4}, LRb/c;-><init>()V

    iget-object v6, v0, Lfc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v14

    new-instance v15, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v6, Lcom/google/android/filament/RenderableManager$a;

    const/4 v13, 0x1

    invoke-direct {v6, v13}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    iget-object v10, v0, Lfc/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v11, v0, Lfc/d;->c:LRb/d;

    sget-object v16, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v9, Lcom/google/android/filament/Box;

    new-array v6, v1, [F

    fill-array-data v6, :array_0

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    invoke-direct {v9, v6, v8}, Lcom/google/android/filament/Box;-><init>([F[F)V

    move-object v6, v15

    move-object v8, v14

    move-object/from16 v17, v9

    move-object v9, v4

    move v1, v12

    move-object/from16 v12, v16

    move v5, v13

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iget-object v6, v0, Lfc/d;->h:Ljava/util/List;

    new-instance v7, Lfc/d$a;

    invoke-direct {v7, v4, v15, v14}, Lfc/d$a;-><init>(LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, LRb/c;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/filament/TransformManager;->b(I)I

    invoke-virtual {v4}, LRb/c;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v4

    invoke-virtual {v2, v4, v1, v5}, Lcom/google/android/filament/RenderableManager;->m0(IIZ)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x39e3c000    # -10000.0f
        -0x39e3c000    # -10000.0f
        -0x39e3c000    # -10000.0f
    .end array-data

    :array_1
    .array-data 4
        0x461c4000    # 10000.0f
        0x461c4000    # 10000.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public h()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v2, v0, Lfc/d;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v2, v0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, v0, Lfc/d;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v2, v0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    iget-object v2, v0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v4, Lcom/google/android/filament/View$d;->TRANSLUCENT:Lcom/google/android/filament/View$d;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    sget-object v2, Lfc/d;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Lec/b;->f(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v6, Lcom/google/android/filament/Material$b;

    invoke-direct {v6}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object v4, v0, Lfc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    goto/16 :goto_0

    :cond_0
    new-instance v4, LSb/b;

    invoke-direct {v4}, LSb/b;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuadRenderer-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v4

    check-cast v4, LSb/b;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->U(I)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v7, "baseColor"

    invoke-virtual {v4, v6, v7}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v7, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v8, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v9, "albedo"

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v6, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0()); // sRGB -> linear (autom\u00e1tico)\n  c *= materialParams.baseColor;   // tint, se quiser\n  c.rgb *= c.a;                    // premultiplied para evitar halos\n  material.baseColor = c;\n}\n"

    invoke-virtual {v4, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v4}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v2, v4}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v4, Lcom/google/android/filament/Material$b;

    invoke-direct {v4}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object v2, v0, Lfc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    :goto_0
    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    new-array v4, v1, [S

    fill-array-data v4, :array_1

    const/16 v6, 0x50

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v7, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v7}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v12, 0x0

    const/16 v13, 0x14

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v14

    sget-object v15, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v17, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v18, 0xc

    const/16 v19, 0x14

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iput-object v2, v0, Lfc/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v2, v3, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    new-instance v3, LRb/d;

    new-instance v4, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    sget-object v4, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v1, v4}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    invoke-direct {v3, v1}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iput-object v3, v0, Lfc/d;->c:LRb/d;

    invoke-virtual {v3, v2}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Falha ao compilar material em runtime!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public j()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lfc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    const-string v2, "QuadRenderer"

    if-eqz v0, :cond_13

    iget-object v0, v1, Lfc/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lfc/d;->c:LRb/d;

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v0, v1, Lfc/d;->n:I

    if-lez v0, :cond_12

    iget v0, v1, Lfc/d;->o:I

    if-gtz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lfc/d;->f()V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    iget-object v2, v1, Lfc/d;->a:Ljava/util/List;

    invoke-static {v2}, Lfc/d;->i(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lfc/d;->a:Ljava/util/List;

    sget-object v3, Lfc/d;->q:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_3
    iget-object v2, v1, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lfc/d;->g(I)V

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    iget-object v6, v1, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfc/b;

    invoke-virtual {v6}, Lfc/b;->d()Lub/p;

    move-result-object v7

    invoke-static {v7}, Lub/p;->L(Lub/p;)Z

    move-result v7

    if-nez v7, :cond_4

    move/from16 v22, v4

    goto/16 :goto_1

    :cond_4
    iget-object v7, v1, Lfc/d;->h:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfc/d$a;

    iget-object v8, v7, Lfc/d$a;->a:LRb/c;

    iget-object v15, v7, Lfc/d$a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v6}, Lfc/b;->c()I

    move-result v9

    invoke-virtual {v6}, Lfc/b;->f()I

    move-result v10

    invoke-virtual {v6}, Lfc/b;->g()I

    move-result v11

    invoke-virtual {v6}, Lfc/b;->e()I

    move-result v12

    invoke-virtual {v6}, Lfc/b;->b()I

    move-result v13

    int-to-float v14, v10

    int-to-float v3, v12

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v17, v3, v16

    add-float v17, v14, v17

    iget v14, v1, Lfc/d;->o:I

    move/from16 v22, v4

    int-to-float v4, v14

    move/from16 v23, v5

    int-to-float v5, v11

    move-object/from16 v24, v15

    int-to-float v15, v13

    mul-float v16, v16, v15

    add-float v5, v5, v16

    sub-float v18, v4, v5

    iget-boolean v4, v7, Lfc/d$a;->e:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget v4, v7, Lfc/d$a;->f:I

    if-ne v4, v10, :cond_5

    iget v4, v7, Lfc/d$a;->g:I

    if-ne v4, v11, :cond_5

    iget v4, v7, Lfc/d$a;->h:I

    if-ne v4, v12, :cond_5

    iget v4, v7, Lfc/d$a;->i:I

    if-ne v4, v13, :cond_5

    iget v4, v7, Lfc/d$a;->j:I

    if-ne v4, v14, :cond_5

    iget v4, v7, Lfc/d$a;->k:I

    iget v14, v1, Lfc/d;->n:I

    if-eq v4, v14, :cond_6

    :cond_5
    iget-object v4, v1, Lfc/d;->j:[F

    const/16 v19, 0x0

    move-object/from16 v16, v4

    move/from16 v20, v3

    move/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lfc/d;->l([FFFFFF)V

    invoke-virtual {v8}, LRb/c;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v3

    iget-object v4, v1, Lfc/d;->j:[F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iput-boolean v5, v7, Lfc/d$a;->e:Z

    iput v10, v7, Lfc/d$a;->f:I

    iput v11, v7, Lfc/d$a;->g:I

    iput v12, v7, Lfc/d$a;->h:I

    iput v13, v7, Lfc/d$a;->i:I

    iget v3, v1, Lfc/d;->o:I

    iput v3, v7, Lfc/d$a;->j:I

    iget v3, v1, Lfc/d;->n:I

    iput v3, v7, Lfc/d$a;->k:I

    :cond_6
    iget-boolean v3, v7, Lfc/d$a;->l:Z

    if-eqz v3, :cond_7

    iget v3, v7, Lfc/d$a;->m:I

    if-eq v3, v9, :cond_8

    :cond_7
    invoke-virtual {v8}, LRb/c;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v9

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10, v4}, Lcom/google/android/filament/RenderableManager;->b0(III)V

    iput-boolean v5, v7, Lfc/d$a;->l:Z

    iput v9, v7, Lfc/d$a;->m:I

    :cond_8
    invoke-virtual {v6}, Lfc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-boolean v9, v7, Lfc/d$a;->n:Z

    if-eqz v9, :cond_9

    iget v9, v7, Lfc/d$a;->o:I

    if-eq v9, v4, :cond_a

    :cond_9
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v11

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v12

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v14

    const-string v10, "baseColor"

    move-object/from16 v9, v24

    invoke-virtual/range {v9 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    iput-boolean v5, v7, Lfc/d$a;->n:Z

    iput v4, v7, Lfc/d$a;->o:I

    :cond_a
    invoke-virtual {v6}, Lfc/b;->d()Lub/p;

    move-result-object v3

    iget-boolean v4, v7, Lfc/d$a;->p:Z

    if-eqz v4, :cond_b

    iget-object v4, v7, Lfc/d$a;->q:Lub/p;

    if-eq v4, v3, :cond_c

    :cond_b
    const-string v4, "albedo"

    move-object/from16 v6, v24

    invoke-virtual {v3, v6, v4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    iput-boolean v5, v7, Lfc/d$a;->p:Z

    iput-object v3, v7, Lfc/d$a;->q:Lub/p;

    :cond_c
    iget-boolean v3, v7, Lfc/d$a;->d:Z

    if-nez v3, :cond_d

    iget-object v3, v1, Lfc/d;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v3, v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iput-boolean v5, v7, Lfc/d$a;->d:Z

    :cond_d
    add-int/lit8 v5, v23, 0x1

    :goto_1
    add-int/lit8 v4, v22, 0x1

    goto/16 :goto_0

    :cond_e
    move/from16 v23, v5

    :goto_2
    iget-object v0, v1, Lfc/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_11

    iget-object v0, v1, Lfc/d;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfc/d$a;

    iget-boolean v0, v2, Lfc/d$a;->d:Z

    if-nez v0, :cond_f

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    iget-object v0, v2, Lfc/d$a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->k()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lfc/d$a;->p:Z

    const/4 v0, 0x0

    iput-object v0, v2, Lfc/d$a;->q:Lub/p;

    :try_start_0
    iget-object v0, v1, Lfc/d;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v3, v2, Lfc/d$a;->a:LRb/c;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object v0, v2, Lfc/d$a;->a:LRb/c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v3, v2, Lfc/d$a;->a:LRb/c;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_4
    iput-boolean v3, v2, Lfc/d$a;->d:Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_11
    return-void

    :cond_12
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viewport n\u00e3o configurado: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lfc/d;->n:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lfc/d;->o:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    :goto_7
    const-string v0, "ERRO: QuadRenderer.onSurfaceCreated() n\u00e3o foi chamado!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lfc/d;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfc/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfc/d;->c:LRb/d;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v0, p0, Lfc/d;->n:I

    if-lez v0, :cond_4

    iget v0, p0, Lfc/d;->o:I

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lfc/d;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    iget-object v2, p0, Lfc/d;->p:LTb/a;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2, v3}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    :goto_0
    iget-object v2, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, p0, Lfc/d;->i:Lcom/google/android/filament/w;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->E(Lcom/google/android/filament/w;)V

    iget-object v2, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, p0, Lfc/d;->k:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    invoke-virtual {v1}, Lcom/google/android/filament/Renderer;->e()Lcom/google/android/filament/Renderer$a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean v3, v2, Lcom/google/android/filament/Renderer$a;->c:Z

    iget-object v3, p0, Lfc/d;->g:[D

    iput-object v3, v2, Lcom/google/android/filament/Renderer$a;->a:[D

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    iget-object v1, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v1}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v1, p0, Lfc/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lfc/d;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_4
    :goto_2
    const-string v0, "QuadRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewport n\u00e3o configurado: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lfc/d;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lfc/d;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_3
    const-string v0, "QuadRenderer"

    const-string v1, "ERRO: QuadRenderer.onSurfaceCreated() n\u00e3o foi chamado!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public m(FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iget-object v0, p0, Lfc/d;->g:[D

    const/4 v1, 0x0

    float-to-double v2, p1

    aput-wide v2, v0, v1

    const/4 p1, 0x1

    float-to-double v1, p2

    aput-wide v1, v0, p1

    const/4 p1, 0x2

    float-to-double p2, p3

    aput-wide p2, v0, p1

    const/4 p1, 0x3

    float-to-double p2, p4

    aput-wide p2, v0, p1

    return-void
.end method

.method public n(LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    iput-object p1, p0, Lfc/d;->p:LTb/a;

    return-void
.end method

.method public o(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iput p1, p0, Lfc/d;->n:I

    iput p2, p0, Lfc/d;->o:I

    new-instance v0, Lcom/google/android/filament/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/google/android/filament/w;-><init>(IIII)V

    iput-object v0, p0, Lfc/d;->i:Lcom/google/android/filament/w;

    return-void
.end method
