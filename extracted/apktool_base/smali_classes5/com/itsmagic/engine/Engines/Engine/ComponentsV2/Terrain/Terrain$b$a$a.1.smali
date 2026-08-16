.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;->d(Lz9/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz9/c;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;Lz9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a$a;->b:Lz9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$b$a$a;->b:Lz9/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->setLodAggressiveness(Lz9/c;)V

    return-void
.end method
