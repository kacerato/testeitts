.class public final synthetic Ln0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/a;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$f;

.field public final synthetic c:Lcom/google/android/filament/gltfio/FilamentAsset;

.field public final synthetic d:Lcom/google/android/filament/utils/a;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/m0$f;Lcom/google/android/filament/gltfio/FilamentAsset;Lcom/google/android/filament/utils/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/t;->b:Lkotlin/jvm/internal/m0$f;

    iput-object p2, p0, Ln0/t;->c:Lcom/google/android/filament/gltfio/FilamentAsset;

    iput-object p3, p0, Ln0/t;->d:Lcom/google/android/filament/utils/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln0/t;->b:Lkotlin/jvm/internal/m0$f;

    iget-object v1, p0, Ln0/t;->c:Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object v2, p0, Ln0/t;->d:Lcom/google/android/filament/utils/a;

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/utils/a;->b(Lkotlin/jvm/internal/m0$f;Lcom/google/android/filament/gltfio/FilamentAsset;Lcom/google/android/filament/utils/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
