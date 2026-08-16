.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setTextureFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method
