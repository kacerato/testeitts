.class public LUg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LUg/n$b;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public c:LTb/a;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUg/n$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:LBb/b;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lub/p;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "albedoTextureParam",
            "tillingParam",
            "offsetParam",
            "allowDiffuseColor"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LUg/n;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LUg/n;->m:Ljava/util/Map;

    iput-object p1, p0, LUg/n;->j:Ljava/lang/String;

    iput-object p2, p0, LUg/n;->k:Ljava/lang/String;

    iput-object p3, p0, LUg/n;->l:Ljava/lang/String;

    iput-boolean p4, p0, LUg/n;->n:Z

    return-void
.end method

.method public static synthetic a(LUg/n;)LBb/b;
    .locals 0

    iget-object p0, p0, LUg/n;->g:LBb/b;

    return-object p0
.end method

.method public static synthetic b(LUg/n;)V
    .locals 0

    invoke-virtual {p0}, LUg/n;->i()V

    return-void
.end method

.method public static synthetic c(LUg/n;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LUg/n;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(LUg/n;)I
    .locals 0

    iget p0, p0, LUg/n;->e:I

    return p0
.end method

.method public static synthetic e(LUg/n;)I
    .locals 0

    iget p0, p0, LUg/n;->f:I

    return p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders/Atlas/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(LUg/g;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "color",
            "material"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "alphaCutout"

    const-string v4, "diffuse"

    const-string v5, "albedo"

    new-instance v6, LUg/n$b;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, LUg/n$b;-><init>(LUg/n$a;)V

    iget-object v7, v1, LUg/n;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, LUg/g;->i()Lvc/q;

    move-result-object v7

    invoke-virtual {v7}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, LUg/g;->e()Lvc/p;

    move-result-object v8

    invoke-virtual {v8}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, LUg/g;->a()Lvc/p;

    move-result-object v9

    invoke-virtual {v9}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, LUg/g;->g()Lvc/n;

    move-result-object v10

    invoke-virtual {v10}, Lvc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v12, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v12}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v13

    const/4 v14, 0x3

    div-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v15

    sget-object v16, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v18, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v21

    sget-object v22, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v18, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x1

    move-object/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v15

    sget-object v16, Lcom/google/android/filament/VertexBuffer$c;->UV1:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v21

    sget-object v22, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v24, Lcom/google/android/filament/VertexBuffer$a;->FLOAT4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v26}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    invoke-static {v6, v11}, LUg/n$b;->b(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    div-int/2addr v11, v14

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    mul-int/lit8 v12, v11, 0x10

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v13, 0x0

    move v15, v13

    :goto_0
    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v15, v11, :cond_0

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v12, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v6}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    invoke-virtual {v0, v13, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->u(ILjava/nio/FloatBuffer;)V

    invoke-static {v6}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->u(ILjava/nio/FloatBuffer;)V

    invoke-static {v6}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->u(ILjava/nio/FloatBuffer;)V

    invoke-static {v6}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->u(ILjava/nio/FloatBuffer;)V

    new-instance v0, LRb/d;

    new-instance v7, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v7}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v7

    sget-object v9, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v7, v9}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v7

    invoke-direct {v0, v7}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    invoke-static {v6, v0}, LUg/n$b;->d(LUg/n$b;LRb/d;)LRb/d;

    invoke-static {v6}, LUg/n$b;->c(LUg/n$b;)LRb/d;

    move-result-object v0

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->buildIndexData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    iget-object v0, v1, LUg/n;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v7

    invoke-static {v6, v7}, LUg/n$b;->f(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    new-instance v0, LRb/c;

    invoke-direct {v0}, LRb/c;-><init>()V

    invoke-static {v6, v0}, LUg/n$b;->h(LUg/n$b;LRb/c;)LRb/c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v9, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v9, v8}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v9, v13}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v16

    invoke-static {v6}, LUg/n$b;->e(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v17

    invoke-static {v6}, LUg/n$b;->g(LUg/n$b;)LRb/c;

    move-result-object v18

    invoke-static {v6}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v19

    invoke-static {v6}, LUg/n$b;->c(LUg/n$b;)LRb/d;

    move-result-object v20

    sget-object v21, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v9, Lcom/google/android/filament/Box;

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v22, v9

    invoke-direct/range {v22 .. v28}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    invoke-static {v6, v0}, LUg/n$b;->j(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v0, v1, LUg/n;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-static {v6}, LUg/n$b;->g(LUg/n$b;)LRb/c;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v9, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v0, v1, LUg/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->v(Ljava/lang/String;)Lub/p;

    move-result-object v0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v12, v0

    goto :goto_2

    :catch_0
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_2

    :try_start_1
    iget-object v0, v1, LUg/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v15
    :try_end_1
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v15, :cond_2

    :try_start_2
    new-instance v15, Lub/g;

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v13, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(Z)V

    invoke-direct {v15, v0, v13}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v12, v15

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    :goto_3
    move-object v0, v12

    :try_start_4
    iget-object v12, v1, LUg/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    :try_end_4
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    iget-object v12, v1, LUg/n;->l:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    :try_end_5
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :catch_4
    :goto_4
    if-nez v0, :cond_4

    invoke-virtual {v1, v2}, LUg/n;->k(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;

    move-result-object v0

    :cond_4
    move-object v12, v0

    invoke-static {v6, v12}, LUg/n$b;->l(LUg/n$b;Lub/p;)Lub/p;

    invoke-virtual {v1, v12}, LUg/n;->n(Lub/p;)Z

    move-result v6

    :try_start_6
    iget-boolean v0, v1, LUg/n;->n:Z

    if-eqz v0, :cond_5

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_6
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_5
    const/4 v13, 0x0

    :try_start_7
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r(Ljava/lang/String;)F

    move-result v0
    :try_end_7
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move v15, v0

    goto :goto_5

    :catch_6
    move v15, v13

    :goto_5
    :try_start_8
    const-string v0, "uvSource"

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v8, "World"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_6
    move v8, v0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v8, 0x0

    :goto_8
    :try_start_9
    invoke-virtual {v12, v7, v5}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v2}, LUg/n;->k(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;

    move-result-object v0

    invoke-virtual {v0}, Lub/p;->J()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v7, v5}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_9

    :cond_7
    sget-object v0, Lyb/b;->i:Lub/p;

    invoke-virtual {v0, v7, v5}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v7, v4, v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v7, v3, v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget v0, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoTilling"

    invoke-virtual {v7, v3, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    iget v0, v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoOffset"

    invoke-virtual {v7, v3, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    if-eqz v8, :cond_8

    move v0, v14

    goto :goto_a

    :cond_8
    move v0, v13

    :goto_a
    const-string v2, "useWorldUV"

    invoke-virtual {v7, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    if-eqz v6, :cond_9

    goto :goto_b

    :cond_9
    move v14, v13

    :goto_b
    const-string v0, "encodeSrgbForAtlas"

    invoke-virtual {v7, v0, v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    return-void
.end method

.method public g(LBb/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    iput-object p1, p0, LUg/n;->g:LBb/b;

    invoke-virtual {p1}, LBb/b;->p()I

    move-result v0

    iput v0, p0, LUg/n;->e:I

    invoke-virtual {p1}, LBb/b;->l()I

    move-result p1

    iput p1, p0, LUg/n;->f:I

    const-string p1, "FilamentTriangleRasterizer begin()"

    invoke-virtual {p0, p1}, LUg/n;->p(Ljava/lang/String;)V

    new-instance p1, LTb/a;

    iget v0, p0, LUg/n;->e:I

    iget v1, p0, LUg/n;->f:I

    invoke-direct {p1, v0, v1}, LTb/a;-><init>(II)V

    iput-object p1, p0, LUg/n;->c:LTb/a;

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object p1, p0, LUg/n;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object p1, p0, LUg/n;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, p0, LUg/n;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object p1, p0, LUg/n;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget v0, p0, LUg/n;->e:I

    iget v1, p0, LUg/n;->f:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v3, p0, LUg/n;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->l(FFFFFF)V

    iget-object p1, p0, LUg/n;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, p0, LUg/n;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object p1, p0, LUg/n;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v0, p0, LUg/n;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const-string p1, "RasterizeAtlasVertex.glsl"

    invoke-static {p1}, LUg/n;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RasterizeAtlasFragment.glsl"

    invoke-static {v0}, LUg/n;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, LSb/b;

    invoke-direct {v1}, LSb/b;-><init>()V

    const-string v2, "RasterizeAtlas"

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV1:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$t;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v1

    check-cast v1, LSb/b;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$s;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$s;

    const-string v3, "worldVertexPos"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->T(Lcom/google/android/filament/filamat/MaterialBuilder$s;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "albedo"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "diffuse"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "alphaCutout"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "albedoTilling"

    invoke-virtual {v1, v4, v3, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "albedoOffset"

    invoke-virtual {v1, v4, v3, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "useWorldUV"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "encodeSrgbForAtlas"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->t(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v1}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v1, Lcom/google/android/filament/Material$b;

    invoke-direct {v1}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object v0, p0, LUg/n;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Falha ao compilar material em runtime!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to load fragment shader"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to load vertex shader"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LUg/n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LUg/n;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUg/n$b;

    invoke-static {v2}, LUg/n$b;->k(LUg/n$b;)Lub/p;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, LUg/n$b;->k(LUg/n$b;)Lub/p;

    move-result-object v2

    invoke-virtual {v2}, Lub/p;->J()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LUg/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LUg/n;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg/n$b;

    iget-object v2, p0, LUg/n;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-static {v1}, LUg/n$b;->g(LUg/n$b;)LRb/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    invoke-static {v1}, LUg/n$b;->i(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    const/4 v2, 0x0

    invoke-static {v1, v2}, LUg/n$b;->j(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-static {v1, v2}, LUg/n$b;->h(LUg/n$b;LRb/c;)LRb/c;

    invoke-static {v1}, LUg/n$b;->a(LUg/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    invoke-static {v1, v2}, LUg/n$b;->b(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-static {v1}, LUg/n$b;->c(LUg/n$b;)LRb/d;

    move-result-object v3

    invoke-virtual {v3}, LRb/d;->destroyImmediate()V

    invoke-static {v1, v2}, LUg/n$b;->d(LUg/n$b;LRb/d;)LRb/d;

    invoke-static {v1, v2}, LUg/n$b;->f(LUg/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LUg/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LUg/n;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LUg/n;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lub/p;

    instance-of v2, v1, Lub/n;

    if-eqz v2, :cond_1

    check-cast v1, Lub/n;

    invoke-virtual {v1}, Lub/n;->destroyImmediate()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, LUg/n;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method

.method public final j(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, LUg/n;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r(Ljava/lang/String;)Lub/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "normalMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "roughness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "roughnessMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "ao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "aoMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "heightMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, LUg/n;->j:Ljava/lang/String;

    const-string v1, "emissive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, LUg/n;->j(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, LUg/n;->m(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    return-object v0

    :catch_0
    :cond_4
    if-eqz p1, :cond_5

    :try_start_1
    const-string v1, "emissiveColor"

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->L(I)V

    invoke-virtual {p0, p1}, LUg/n;->m(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, LUg/n;->l(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lub/p;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    sget-object p1, Lyb/b;->i:Lub/p;

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, LUg/n;->j(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lub/p;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    sget-object p1, Lyb/b;->g:Lub/p;

    return-object p1

    :cond_9
    :goto_0
    sget-object p1, Lyb/b;->i:Lub/p;

    return-object p1

    :cond_a
    :goto_1
    sget-object p1, Lyb/b;->g:Lub/p;

    return-object p1

    :cond_b
    :goto_2
    if-eqz p1, :cond_c

    :try_start_2
    const-string v0, "roughnessFallback"

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r(Ljava/lang/String;)F

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    :cond_c
    const p1, 0x3f19999a    # 0.6f

    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Q(F)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->P(F)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O(F)V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    invoke-virtual {p0, v2}, LUg/n;->l(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lub/p;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_4
    sget-object p1, Lyb/b;->l:Lub/p;

    return-object p1
.end method

.method public final l(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lub/p;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p0, LUg/n;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lub/p;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lub/n;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, Lub/n;-><init>(IIZZ)V

    invoke-virtual {v1, v3, v3, p1}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v1}, Lub/n;->apply()V

    iget-object p1, p0, LUg/n;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final m(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result p1

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Lub/p;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lub/g;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast p1, Lub/g;

    invoke-virtual {p1}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    instance-of v1, p1, Lub/n;

    if-eqz v1, :cond_3

    check-cast p1, Lub/n;

    invoke-virtual {p1}, Lub/n;->t0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "FilamentTriangleRasterizer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public q(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    iget-object v0, p0, LUg/n;->c:LTb/a;

    iget-object v1, p0, LUg/n;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, LUg/n;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, LUg/n;->c:LTb/a;

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    iget-object v1, p0, LUg/n;->c:LTb/a;

    invoke-virtual {v1}, LTb/a;->r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v1

    new-instance v2, LUg/n$a;

    invoke-direct {v2, p0, p1}, LUg/n$a;-><init>(LUg/n;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->U0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method
