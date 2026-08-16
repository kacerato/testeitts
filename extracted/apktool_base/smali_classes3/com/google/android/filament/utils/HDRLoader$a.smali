.class public final Lcom/google/android/filament/utils/HDRLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/HDRLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/filament/Texture$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/Texture$f;->RGB16F:Lcom/google/android/filament/Texture$f;

    iput-object v0, p0, Lcom/google/android/filament/utils/HDRLoader$a;->a:Lcom/google/android/filament/Texture$f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/Texture$f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/utils/HDRLoader$a;->a:Lcom/google/android/filament/Texture$f;

    return-object v0
.end method

.method public final b(Lcom/google/android/filament/Texture$f;)V
    .locals 1
    .param p1    # Lcom/google/android/filament/Texture$f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/filament/utils/HDRLoader$a;->a:Lcom/google/android/filament/Texture$f;

    return-void
.end method
