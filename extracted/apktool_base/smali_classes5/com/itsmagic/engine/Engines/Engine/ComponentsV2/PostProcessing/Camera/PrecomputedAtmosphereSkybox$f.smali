.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

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
    .locals 11
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

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f;)V

    const-string v2, "Auto height"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f$b;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$f;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v5, "Eye height (km)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox$t;ZZZZ)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
