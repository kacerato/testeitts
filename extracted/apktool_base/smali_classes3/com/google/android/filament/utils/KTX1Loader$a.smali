.class public final Lcom/google/android/filament/utils/KTX1Loader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/KTX1Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/IndirectLight;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/filament/Texture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/google/android/filament/utils/KTX1Loader$a;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V
    .locals 0
    .param p1    # Lcom/google/android/filament/IndirectLight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/KTX1Loader$a;->a:Lcom/google/android/filament/IndirectLight;

    iput-object p2, p0, Lcom/google/android/filament/utils/KTX1Loader$a;->b:Lcom/google/android/filament/Texture;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/KTX1Loader$a;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/Texture;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/utils/KTX1Loader$a;->b:Lcom/google/android/filament/Texture;

    return-object v0
.end method

.method public final b()Lcom/google/android/filament/IndirectLight;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/utils/KTX1Loader$a;->a:Lcom/google/android/filament/IndirectLight;

    return-object v0
.end method
