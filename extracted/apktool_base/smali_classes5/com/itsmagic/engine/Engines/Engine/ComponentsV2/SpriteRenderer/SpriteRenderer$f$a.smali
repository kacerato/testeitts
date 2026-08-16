.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;->Sprite:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$l;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer$f;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method
