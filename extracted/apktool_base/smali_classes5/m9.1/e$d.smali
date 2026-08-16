.class public final Lm9/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public final c:Z

.field public final d:Z

.field public final e:F

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lm9/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "Lm9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:[Lm9/d;

.field public j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public k:[Lm9/d;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZFLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Lm9/d;)V
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
            "materialObjects",
            "scene",
            "castShadow",
            "receiveShadow",
            "chunkSize",
            "chunks",
            "chunksByCell",
            "chunkByObject",
            "snapshot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            "ZZF",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lm9/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lm9/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "Lm9/d;",
            ">;[",
            "Lm9/d;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lm9/e;->a()[Lm9/d;

    move-result-object v0

    iput-object v0, p0, Lm9/e$d;->k:[Lm9/d;

    .line 4
    iput-object p1, p0, Lm9/e$d;->a:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lm9/e$d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    .line 6
    iput-boolean p3, p0, Lm9/e$d;->c:Z

    .line 7
    iput-boolean p4, p0, Lm9/e$d;->d:Z

    .line 8
    iput p5, p0, Lm9/e$d;->e:F

    .line 9
    iput-object p6, p0, Lm9/e$d;->f:Ljava/util/Map;

    .line 10
    iput-object p7, p0, Lm9/e$d;->g:Ljava/util/Map;

    .line 11
    iput-object p8, p0, Lm9/e$d;->h:Ljava/util/Map;

    .line 12
    iput-object p9, p0, Lm9/e$d;->i:[Lm9/d;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZFLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Lm9/d;Lm9/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lm9/e$d;-><init>(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZFLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Lm9/d;)V

    return-void
.end method

.method public static synthetic a(Lm9/e$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p0
.end method

.method public static synthetic b(Lm9/e$d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lm9/e$d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 0

    iput-object p1, p0, Lm9/e$d;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p1
.end method

.method public static synthetic d(Lm9/e$d;)[Lm9/d;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->i:[Lm9/d;

    return-object p0
.end method

.method public static synthetic e(Lm9/e$d;)I
    .locals 0

    iget p0, p0, Lm9/e$d;->l:I

    return p0
.end method

.method public static synthetic f(Lm9/e$d;)I
    .locals 2

    iget v0, p0, Lm9/e$d;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm9/e$d;->l:I

    return v0
.end method

.method public static synthetic g(Lm9/e$d;)I
    .locals 0

    iget p0, p0, Lm9/e$d;->m:I

    return p0
.end method

.method public static synthetic h(Lm9/e$d;)I
    .locals 2

    iget v0, p0, Lm9/e$d;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm9/e$d;->m:I

    return v0
.end method

.method public static synthetic i(Lm9/e$d;)[Lm9/d;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->k:[Lm9/d;

    return-object p0
.end method

.method public static synthetic j(Lm9/e$d;[Lm9/d;)[Lm9/d;
    .locals 0

    iput-object p1, p0, Lm9/e$d;->k:[Lm9/d;

    return-object p1
.end method

.method public static synthetic k(Lm9/e$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p0
.end method

.method public static synthetic l(Lm9/e$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lm9/e$d;)Z
    .locals 0

    iget-boolean p0, p0, Lm9/e$d;->c:Z

    return p0
.end method

.method public static synthetic n(Lm9/e$d;)Z
    .locals 0

    iget-boolean p0, p0, Lm9/e$d;->d:Z

    return p0
.end method

.method public static synthetic o(Lm9/e$d;)F
    .locals 0

    iget p0, p0, Lm9/e$d;->e:F

    return p0
.end method

.method public static synthetic p(Lm9/e$d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->f:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic q(Lm9/e$d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm9/e$d;->g:Ljava/util/Map;

    return-object p0
.end method
