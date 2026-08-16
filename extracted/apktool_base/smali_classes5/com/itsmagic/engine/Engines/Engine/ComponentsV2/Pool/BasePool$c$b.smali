.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$O;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$c;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method
