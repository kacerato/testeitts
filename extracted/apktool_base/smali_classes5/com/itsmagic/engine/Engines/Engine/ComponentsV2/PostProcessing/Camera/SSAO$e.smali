.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
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

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->QUALITY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)Lcom/google/android/filament/View$n;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;)V

    const-class v3, Lcom/google/android/filament/View$n;

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOW_PASS_FILTER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)Lcom/google/android/filament/View$n;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;)V

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UPSAMPLING:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)Lcom/google/android/filament/View$n;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO$e;)V

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
