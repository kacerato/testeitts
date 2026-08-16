.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method
