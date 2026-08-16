.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;
    }
.end annotation


# static fields
.field public static final T:Ljava/lang/String; = "SpriteRenderer"

.field public static final U:Ljava/lang/Class;

.field public static final V:Ljava/lang/String; = "Shaders/Sprites/sprite_renderer.glsl"

.field public static final W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lec/a;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:[F

.field public static final Y:[S


# instance fields
.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:Lub/p;

.field public I:Z

.field public J:F

.field public final K:[F

.field public L:LRb/c;

.field public M:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public O:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public P:LRb/d;

.field public Q:Z

.field public final R:LBb/e;

.field public final S:Lib/h;

.field private blendingMode:Lec/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private castShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priority:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private receiveShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private speed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private spriteIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private textureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->U:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lec/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->W:Ljava/util/Map;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->X:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Y:[S

    return-void

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

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "SpriteRenderer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;->Sprite:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    .line 5
    sget-object v2, Lec/a;->TRANSPARENT:Lec/a;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    .line 7
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    .line 8
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    .line 9
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    .line 10
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    .line 12
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    const/16 v0, 0x10

    .line 15
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->K:[F

    .line 16
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->R:LBb/e;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 19
    const-string v0, "SpriteRenderer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;->Sprite:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    .line 23
    sget-object v2, Lec/a;->TRANSPARENT:Lec/a;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    .line 25
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    .line 26
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    .line 27
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    .line 28
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    .line 30
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    const/16 v0, 0x10

    .line 33
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->K:[F

    .line 34
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    .line 35
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->R:LBb/e;

    .line 36
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    .line 37
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    return p0
.end method

.method public static synthetic access$1002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)LRb/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->K:[F

    return-object p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    return p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    return p0
.end method

.method private addTextureListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->R:LBb/e;

    invoke-virtual {v0, v1}, Lub/p;->e(LBb/e;)V

    :cond_0
    return-void
.end method

.method private addToGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    :cond_0
    return-void
.end method

.method private applyTextureToMaterial()V
    .locals 13

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getSpriteRect()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v2, "albedoSprite"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v10

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v11

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v12

    const-string v8, "albedoSprite"

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lyb/b;->g:Lub/p;

    :cond_2
    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "albedo"

    invoke-virtual {v0, v1, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private static buildCacheHash(Ljava/lang/String;Lec/i;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shaderCode",
            "variance"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spriterenderer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lec/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static buildShaderCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildShaderCache(Z)V

    return-void
.end method

.method private static declared-synchronized buildShaderCache(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRebuild"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lec/a;->values()[Lec/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-static {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildSharedPayload(Lec/a;Z)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildShaderCache(Z)V

    return-void
.end method

.method private static buildSharedPayload(Lec/a;Z)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "forceRebuild"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lec/a;->TRANSPARENT:Lec/a;

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->loadSpriteShaderCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildVariance(Lec/a;)Lec/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildCacheHash(Ljava/lang/String;Lec/i;)I

    move-result v2

    if-nez p1, :cond_1

    invoke-static {v2}, Lec/b;->f(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lec/b;->h(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lec/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    new-instance p1, LSb/b;

    invoke-direct {p1}, LSb/b;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpriteRenderer-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->h()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->c()Lcom/google/android/filament/filamat/MaterialBuilder$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lec/i;->e()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(F)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    check-cast p0, LSb/b;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v1, "albedoSprite"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v2, p1}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Falha ao compilar material de sprite."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object p1
.end method

.method private static buildVariance(Lec/a;)Lec/i;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lec/a;->TRANSPARENT:Lec/a;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v1

    new-instance p0, Lec/i;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    return-object p0
.end method

.method private static createIndexBuffer()LRb/d;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Y:[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, LRb/d;

    new-instance v3, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v3}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    array-length v0, v0

    invoke-virtual {v3, v0}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    sget-object v3, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v0, v3}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v2, v0}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    invoke-virtual {v2, v1}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    return-object v2
.end method

.method private static createTemplateFromPayload(Lec/a;Ljava/nio/ByteBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "payload"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lec/a;->TRANSPARENT:Lec/a;

    :goto_0
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

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->W:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static createVertexBuffer()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 16

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->X:[F

    array-length v1, v0

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v3, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v3}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v7, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v10

    sget-object v11, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v13, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v14, 0xc

    const/16 v15, 0x14

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private destroyRenderable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    return-void
.end method

.method private destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "destroyIfCan"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeFromGraphics()V

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->M:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    .line 6
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->M:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->O:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    .line 9
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->O:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->P:LRb/d;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, LRb/d;->destroyImmediate()V

    .line 12
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->P:LRb/d;

    :cond_3
    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->l(LRb/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 16
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {p1}, LRb/c;->destroyImmediate()V

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_7

    .line 18
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    .line 19
    :cond_7
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    .line 20
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    return-void
.end method

.method private ensureRenderable()V
    .locals 11

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->addToGraphics()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->ensureSharedResources(Lec/a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->createVertexBuffer()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->O:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->createIndexBuffer()LRb/d;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->P:LRb/d;

    new-instance v2, LRb/c;

    invoke-direct {v2}, LRb/c;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->N:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->O:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->P:LRb/d;

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v9, Lcom/google/android/filament/Box;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-direct {v9, v2, v0}, Lcom/google/android/filament/Box;-><init>([F[F)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->M:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->K:[F

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->K:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_3
    iput-boolean v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->addToGraphics()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x457ced91    # -0.001f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3a83126f    # 0.001f
    .end array-data
.end method

.method private static declared-synchronized ensureSharedResources(Lec/a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->ensureSharedResources(Lec/a;Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized ensureSharedResources(Lec/a;Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "forceRebuild"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    sget-object p0, Lec/a;->TRANSPARENT:Lec/a;

    .line 3
    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->W:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildSharedPayload(Lec/a;Z)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 6
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->createTemplateFromPayload(Lec/a;Ljava/nio/ByteBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private getDataEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CAST_SHADOWS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v2, "Receive shadows"

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v2, "Priority"

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private getSpriteEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v3, "Texture"

    sget-object v4, LC5/b$a;->UITexture:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v2, "Blending mode"

    const-class v3, Lec/a;

    invoke-static {v2, v3, p1, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v2, "Speed"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "speed"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

    const-string v2, "Sprite index"

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "spriteIndex"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static loadSpriteShaderCode()Ljava/lang/String;
    .locals 1

    const-string v0, "Shaders/Sprites/sprite_renderer.glsl"

    invoke-static {v0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->Q:Z

    :cond_1
    return-void
.end method

.method private removeTextureListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeTextureListener(Lub/p;)V

    return-void
.end method

.method private removeTextureListener(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->R:LBb/e;

    invoke-virtual {p1, v0}, Lub/p;->T(LBb/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateSpriteAnimation()V
    .locals 6

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lub/g;

    if-nez v2, :cond_2

    return-void

    :cond_2
    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->f()I

    move-result v0

    if-gtz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, LK8/d;->b()F

    move-result v4

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_6

    return-void

    :cond_6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    int-to-float v0, v0

    mul-float/2addr v5, v0

    mul-float/2addr v5, v4

    add-float/2addr v1, v5

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    float-to-int v0, v1

    if-nez v0, :cond_7

    return-void

    :cond_7
    int-to-float v4, v0

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    add-int/2addr v1, v0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->wrapSpriteIndex(II)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    :cond_8
    :goto_0
    return-void
.end method

.method private updateTexture()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-nez v3, :cond_1

    const-string v3, "@@UIG@@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LH3/h;->G1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    :cond_1
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->addTextureListener()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeTextureListener(Lub/p;)V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    :cond_6
    return-void
.end method

.method private static wrapSpriteIndex(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "spriteCount"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    rem-int/2addr p0, p1

    if-gez p0, :cond_1

    add-int/2addr p0, p1

    :cond_1
    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getBlendingMode()Lec/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    return-object v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "@@UIG@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LH3/h;->G1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Sprite Renderer"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701f2

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    if-nez v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;->Sprite:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    :cond_1
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;Landroid/content/Context;)V

    const v3, 0x7f0c00f9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getDataEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getSpriteEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    return v0
.end method

.method public getSpriteIndex()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    return v0
.end method

.method public getSpriteRect()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    instance-of v1, v0, Lub/g;

    if-eqz v1, :cond_0

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, LNc/b;->F(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture()Lub/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    return-object v0
.end method

.method public getTextureFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SpriteRenderer"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SpriteRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCastShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    return v0
.end method

.method public isReceiveShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    return v0
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->updateTexture()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->ensureRenderable()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeTextureListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->destroyRenderable()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->S:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->addToGraphics()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeFromGraphics()V

    :goto_0
    return-void
.end method

.method public onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldScene"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->L:LRb/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->ensureRenderable()V

    :cond_1
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->updateTexture()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->updateSpriteAnimation()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "@@UIG@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LH3/h;->G1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpriteRenderer: REPLACING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TO "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setBlendingMode(Lec/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lec/a;->TRANSPARENT:Lec/a;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->blendingMode:Lec/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->destroyRenderable()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->ensureRenderable()V

    return-void
.end method

.method public setCastShadow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "castShadow"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->castShadow:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->priority:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->M:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    :cond_0
    return-void
.end method

.method public setReceiveShadow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveShadow"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->receiveShadow:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->speed:F

    return-void
.end method

.method public setSpriteIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->spriteIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    return-void
.end method

.method public setTexture(Lub/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->removeTextureListener(Lub/p;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    instance-of v0, p1, Lub/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lub/g;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->addTextureListener()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    return-void
.end method

.method public setTextureFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->textureFile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->H:Lub/p;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->F:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->G:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->J:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->updateTexture()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->I:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->applyTextureToMaterial()V

    return-void
.end method
