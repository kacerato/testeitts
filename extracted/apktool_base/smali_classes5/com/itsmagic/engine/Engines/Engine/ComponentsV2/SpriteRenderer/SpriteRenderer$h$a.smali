.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;->d(Lec/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lec/a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;Lec/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h$a;->b:Lec/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$h$a;->b:Lec/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setBlendingMode(Lec/a;)V

    return-void
.end method
