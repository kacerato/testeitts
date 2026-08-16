.class public Lc9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:I = 0x1

.field public static final m:Ljava/lang/String; = "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op\n}\n"

.field public static final n:Ljava/lang/String; = "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = float4(0.0);\n}\n"

.field public static final o:Ljava/lang/String; = "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op (outline via Transform scale)\n}\n"

.field public static final p:Ljava/lang/String; = "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = materialParams.outlineColor;\n}\n"


# instance fields
.field public a:F

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public e:LRb/c;

.field public f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public i:LRb/c;

.field public j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public final k:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    .line 2
    iput v0, p0, Lc9/h;->a:F

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x10

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lc9/h;->k:[F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    .line 6
    iput v0, p0, Lc9/h;->a:F

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x10

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lc9/h;->k:[F

    .line 9
    iput-object p1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "color"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    .line 11
    iput v0, p0, Lc9/h;->a:F

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [F

    iput-object v0, p0, Lc9/h;->k:[F

    .line 14
    iput-object p1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 15
    iput-object p2, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v4, v0, v1

    iget-object v0, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    div-float v5, v0, v1

    iget-object v0, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    div-float v6, v0, v1

    iget-object v2, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v3, "outlineColor"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "build outline materials"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc9/h;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iput-object v1, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p0}, Lc9/h;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iput-object v1, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v1, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lc9/h;->r(Lcom/google/android/filament/MaterialInstance;I)V

    iget-object v1, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lc9/h;->q(Lcom/google/android/filament/MaterialInstance;I)V

    iget-object v1, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/filament/MaterialInstance;->D(Z)V

    iget-object v1, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/filament/MaterialInstance;->D(Z)V

    iget-object v1, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/Material$d;->FRONT:Lcom/google/android/filament/Material$d;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/MaterialInstance;->z(Lcom/google/android/filament/Material$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw v1
.end method

.method public final c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 3

    new-instance v0, LSb/b;

    invoke-direct {v0}, LSb/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutlinePass_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$f;->PERFORMANCE:Lcom/google/android/filament/filamat/MaterialBuilder$f;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$f;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    check-cast v0, LSb/b;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "outlineColor"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    new-instance v1, Lec/e$a;

    const-string v2, "OutlinePass"

    invoke-direct {v1, v2}, Lec/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lec/e$a;->x(LSb/b;)Lec/e$a;

    move-result-object v0

    const-string v1, "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op (outline via Transform scale)\n}\n"

    invoke-virtual {v0, v1}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object v0

    const-string v1, "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = materialParams.outlineColor;\n}\n"

    invoke-virtual {v0, v1}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lec/e$a;->c()Lec/e$a;

    invoke-virtual {v0}, Lec/e$a;->j()Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lec/e$a;->e()Lec/e;

    move-result-object v1

    invoke-virtual {v0}, Lec/e$a;->b()V

    invoke-virtual {v1}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method

.method public final d([F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "out"
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lc9/h;->f()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    aget v0, p2, v1

    mul-float/2addr v0, p1

    aput v0, p2, v1

    const/4 v0, 0x1

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/4 v0, 0x2

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/4 v0, 0x4

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/4 v0, 0x5

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/4 v0, 0x6

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/16 v0, 0x8

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/16 v0, 0x9

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    const/16 v0, 0xa

    aget v1, p2, v0

    mul-float/2addr v1, p1

    aput v1, p2, v0

    return-void
.end method

.method public final e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 3

    new-instance v0, LSb/b;

    invoke-direct {v0}, LSb/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StencilPass_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$f;->PERFORMANCE:Lcom/google/android/filament/filamat/MaterialBuilder$f;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$f;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    check-cast v0, LSb/b;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    new-instance v1, Lec/e$a;

    const-string v2, "StencilPass"

    invoke-direct {v1, v2}, Lec/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lec/e$a;->x(LSb/b;)Lec/e$a;

    move-result-object v0

    const-string v1, "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op\n}\n"

    invoke-virtual {v0, v1}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object v0

    const-string v1, "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = float4(0.0);\n}\n"

    invoke-virtual {v0, v1}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lec/e$a;->c()Lec/e$a;

    invoke-virtual {v0}, Lec/e$a;->j()Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lec/e$a;->e()Lec/e;

    move-result-object v1

    invoke-virtual {v0}, Lec/e$a;->b()V

    invoke-virtual {v1}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method

.method public final f()F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    move v2, v3

    :cond_0
    const/4 v3, 0x2

    aget v1, v1, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lc9/h;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1

    :catchall_0
    return v0
.end method

.method public final g()V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "build outline renderable"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, LRb/c;

    invoke-direct {v4}, LRb/c;-><init>()V

    iput-object v4, p0, Lc9/h;->i:LRb/c;

    iget-object v4, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v5

    new-instance v13, Lcom/google/android/filament/Box;

    invoke-virtual {v4}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v4

    aget v6, v5, v2

    iget v7, p0, Lc9/h;->a:F

    add-float/2addr v6, v7

    aget v8, v5, v1

    add-float/2addr v8, v7

    aget v5, v5, v0

    add-float/2addr v5, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v6, v7, v2

    aput v8, v7, v1

    aput v5, v7, v0

    invoke-direct {v13, v4, v7}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v4, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v4, v1}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v7

    iget-object v8, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v9, p0, Lc9/h;->i:LRb/c;

    iget-object v1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v10

    iget-object v1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v11

    sget-object v12, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v0, p0, Lc9/h;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p0}, Lc9/h;->j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lc9/h;->i:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    throw v0
.end method

.method public final h()V
    .locals 10

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "build stencil renderable"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    new-instance v1, LRb/c;

    invoke-direct {v1}, LRb/c;-><init>()V

    iput-object v1, p0, Lc9/h;->e:LRb/c;

    iget-object v1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v9

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    iget-object v4, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v5, p0, Lc9/h;->e:LRb/c;

    iget-object v2, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    iget-object v2, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, p0, Lc9/h;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p0}, Lc9/h;->j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v1

    iget-object v2, p0, Lc9/h;->e:LRb/c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    throw v1
.end method

.method public i()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 1

    iget-object v0, p0, Lc9/h;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object v0
.end method

.method public final j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 1

    iget-object v0, p0, Lc9/h;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lc9/h;->e:LRb/c;

    invoke-virtual {p0, v0}, Lc9/h;->s(LRb/c;)V

    iget-object v0, p0, Lc9/h;->i:LRb/c;

    invoke-virtual {p0, v0}, Lc9/h;->s(LRb/c;)V

    iget-object v0, p0, Lc9/h;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_0
    iget-object v0, p0, Lc9/h;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc9/h;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v0, p0, Lc9/h;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v0, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v0, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v0, p0, Lc9/h;->e:LRb/c;

    iput-object v0, p0, Lc9/h;->i:LRb/c;

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachedScene"
        }
    .end annotation

    iput-object p1, p0, Lc9/h;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput-object p1, p0, Lc9/h;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public n(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineWidth"
        }
    .end annotation

    iput p1, p0, Lc9/h;->a:F

    return-void
.end method

.method public final o(LRb/c;[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entity",
            "renderMatrix"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, LRb/c;->getId()I

    move-result p1

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->b(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/filament/TransformManager;->u(I[F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    :goto_1
    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iput-object p1, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public final q(Lcom/google/android/filament/MaterialInstance;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mi",
            "ref"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/MaterialInstance;->o0(Z)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->m0(I)V

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->k0(I)V

    sget-object p2, Lcom/google/android/filament/TextureSampler$a;->ALWAYS:Lcom/google/android/filament/TextureSampler$a;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->c0(Lcom/google/android/filament/TextureSampler$a;)V

    sget-object p2, Lcom/google/android/filament/MaterialInstance$e;->KEEP:Lcom/google/android/filament/MaterialInstance$e;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->i0(Lcom/google/android/filament/MaterialInstance$e;)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->e0(Lcom/google/android/filament/MaterialInstance$e;)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->g0(Lcom/google/android/filament/MaterialInstance$e;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->B(Z)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->v(Z)V

    return-void
.end method

.method public final r(Lcom/google/android/filament/MaterialInstance;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mi",
            "ref"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/MaterialInstance;->v(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/filament/MaterialInstance;->o0(Z)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->m0(I)V

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->p0(I)V

    sget-object p2, Lcom/google/android/filament/TextureSampler$a;->ALWAYS:Lcom/google/android/filament/TextureSampler$a;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->c0(Lcom/google/android/filament/TextureSampler$a;)V

    sget-object p2, Lcom/google/android/filament/MaterialInstance$e;->KEEP:Lcom/google/android/filament/MaterialInstance$e;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->i0(Lcom/google/android/filament/MaterialInstance$e;)V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->e0(Lcom/google/android/filament/MaterialInstance$e;)V

    sget-object p2, Lcom/google/android/filament/MaterialInstance$e;->REPLACE:Lcom/google/android/filament/MaterialInstance$e;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/MaterialInstance;->g0(Lcom/google/android/filament/MaterialInstance$e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/filament/MaterialInstance;->B(Z)V

    return-void
.end method

.method public final s(LRb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fe"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc9/h;->j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public t([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, Lc9/h;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lc9/h;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc9/h;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lc9/h;->b()V

    :cond_2
    iget-object v0, p0, Lc9/h;->e:LRb/c;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc9/h;->h()V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lc9/h;->i:LRb/c;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lc9/h;->g()V

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lc9/h;->a()V

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lc9/h;->u([F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public u([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc9/h;->e:LRb/c;

    invoke-virtual {p0, v0, p1}, Lc9/h;->o(LRb/c;[F)V

    iget-object v0, p0, Lc9/h;->k:[F

    invoke-virtual {p0, p1, v0}, Lc9/h;->d([F[F)V

    iget-object p1, p0, Lc9/h;->i:LRb/c;

    iget-object v0, p0, Lc9/h;->k:[F

    invoke-virtual {p0, p1, v0}, Lc9/h;->o(LRb/c;[F)V

    :cond_1
    :goto_0
    return-void
.end method
