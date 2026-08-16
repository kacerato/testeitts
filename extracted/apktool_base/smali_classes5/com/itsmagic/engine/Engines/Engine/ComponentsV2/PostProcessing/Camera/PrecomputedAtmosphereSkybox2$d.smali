.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;

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
    .locals 3
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

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESOLUTION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->access$2800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;)I

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;)V

    invoke-static {v0, v1, v2}, LF5/c;->v(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->access$2900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;)I

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;)V

    const-string v2, "Transmittance LUT"

    invoke-static {v2, v0, v1}, LF5/c;->v(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->access$3100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;)I

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$d;)V

    const-string v2, "Skyview LUT"

    invoke-static {v2, v0, v1}, LF5/c;->v(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
