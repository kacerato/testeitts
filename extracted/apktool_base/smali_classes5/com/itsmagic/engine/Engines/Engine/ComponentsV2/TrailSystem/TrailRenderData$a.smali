.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LSb/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->isReceiveLight()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->LIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :goto_0
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$e;->SURFACE:Lcom/google/android/filament/filamat/MaterialBuilder$e;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->s(Lcom/google/android/filament/filamat/MaterialBuilder$e;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$s;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$s;

    const-string v1, "vertexColor"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->T(Lcom/google/android/filament/filamat/MaterialBuilder$s;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$t;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    return-void
.end method
