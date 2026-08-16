.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Offset segment t"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$t;ZZZZ)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;)V

    const/4 v7, 0x0

    const-string v2, "Offset sample theta"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$t;ZZZZ)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$d;)V

    const-string v2, "Offset sample phi"

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$t;ZZZZ)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
