.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLayer"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    :cond_0
    return-void
.end method
