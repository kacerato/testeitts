.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public c:LRb/c;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public g:LRb/d;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public i:Lo9/a;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;

.field public l:Z

.field public m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:LTb/a;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/String;

.field public final y:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->l:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->m:I

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->n:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->o:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->p:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->q:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->r:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->s:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->y:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->p:I

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->p:I

    return p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;LTb/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->u(LTb/a;)V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;LTb/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t(LTb/a;)V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->p()V

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->m:I

    return p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->m:I

    return p1
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)[I
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->n:[I

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->l:Z

    return p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;LTb/a;LTb/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->r(LTb/a;LTb/a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;

    return-object p0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->o:I

    return p0
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->o:I

    return p1
.end method


# virtual methods
.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->j:Ljava/util/Map;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->y:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public q()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo9/a;->k()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->g:LRb/d;

    invoke-virtual {v0}, LRb/d;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->g:LRb/d;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->l:Z

    return-void
.end method

.method public final r(LTb/a;LTb/a;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameBuffer",
            "cacheBuffer",
            "cameraColorTextureParam"
        }
    .end annotation

    invoke-virtual {p1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->w:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->x:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v1, v2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->w:Ljava/lang/Object;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->x:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, LTb/a;->i()I

    move-result p3

    invoke-virtual {p1}, LTb/a;->h()I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->q:I

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->r:I

    if-eq p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1, v1, p3, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->q:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->r:I

    :cond_3
    invoke-virtual {p2}, LTb/a;->i()I

    move-result p1

    invoke-virtual {p2}, LTb/a;->h()I

    move-result p3

    invoke-virtual {p2}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->u:LTb/a;

    const/4 v3, 0x1

    if-eq p2, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->v:Ljava/lang/Object;

    if-eq v0, v4, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->s:I

    if-ne p1, v5, :cond_6

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t:I

    if-eq p3, v5, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    if-nez v2, :cond_9

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    invoke-virtual {v0, p2}, Lo9/a;->c(LTb/a;)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->s:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t:I

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    invoke-virtual {v1, p2}, Lo9/a;->a(LTb/a;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->u:LTb/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->v:Ljava/lang/Object;

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->s:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t:I

    :cond_a
    :goto_3
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->l:Z

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->access$100(Lcom/google/android/filament/Engine;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->access$200(Lcom/google/android/filament/Engine;)LRb/d;

    move-result-object v2

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->g:LRb/d;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v2, LRb/c;

    invoke-direct {v2}, LRb/c;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v3, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v3, v1}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->g:LRb/d;

    sget-object v9, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v17, Lcom/google/android/filament/Box;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->c:LRb/c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->l(FFFFFF)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    invoke-static {}, Lo9/a;->l()V

    new-instance v2, Lo9/a;

    invoke-direct {v2}, Lo9/a;-><init>()V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->m:I

    :goto_0
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->n:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->o:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->p:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->q:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->r:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->s:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->t:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->u:LTb/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->v:Ljava/lang/Object;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->w:Ljava/lang/Object;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->x:Ljava/lang/String;

    return-void
.end method

.method public final t(LTb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->i:Lo9/a;

    invoke-virtual {v0, p1}, Lo9/a;->h(LTb/a;)V

    return-void
.end method

.method public final u(LTb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheBuffer"
        }
    .end annotation

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p1, v0}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-virtual {p1}, LTb/a;->z()V

    return-void
.end method
