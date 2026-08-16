.class public Lm9/b;
.super LIc/m;
.source "SourceFile"


# instance fields
.field public b:LRb/c;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public d:LRb/c;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public final i:[F

.field public j:Z

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LIc/m;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lm9/b;->i:[F

    new-instance v0, Lm9/b$a;

    invoke-direct {v0, p0}, Lm9/b$a;-><init>(Lm9/b;)V

    iput-object v0, p0, Lm9/b;->k:Ljava/lang/Runnable;

    new-instance v0, Lm9/b$b;

    invoke-direct {v0, p0}, Lm9/b$b;-><init>(Lm9/b;)V

    iput-object v0, p0, Lm9/b;->l:Ljava/lang/Runnable;

    return-void
.end method
