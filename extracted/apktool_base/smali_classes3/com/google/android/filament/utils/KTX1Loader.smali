.class public final Lcom/google/android/filament/utils/KTX1Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/KTX1Loader$a;,
        Lcom/google/android/filament/utils/KTX1Loader$b;,
        Lcom/google/android/filament/utils/KTX1Loader$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/filament/utils/KTX1Loader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/KTX1Loader;

    invoke-direct {v0}, Lcom/google/android/filament/utils/KTX1Loader;-><init>()V

    sput-object v0, Lcom/google/android/filament/utils/KTX1Loader;->a:Lcom/google/android/filament/utils/KTX1Loader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/filament/utils/KTX1Loader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;ILjava/lang/Object;)Lcom/google/android/filament/utils/KTX1Loader$a;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/google/android/filament/utils/KTX1Loader$b;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KTX1Loader$b;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->a(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/utils/KTX1Loader$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/filament/utils/KTX1Loader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;ILjava/lang/Object;)Lcom/google/android/filament/utils/KTX1Loader$c;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/google/android/filament/utils/KTX1Loader$b;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KTX1Loader$b;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->c(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/utils/KTX1Loader$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/filament/utils/KTX1Loader;Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;ILjava/lang/Object;)Lcom/google/android/filament/Texture;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/google/android/filament/utils/KTX1Loader$b;

    invoke-direct {p3}, Lcom/google/android/filament/utils/KTX1Loader$b;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->e(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/Texture;

    move-result-object p0

    return-object p0
.end method

.method private final native nCreateIndirectLight(JJ[F)J
.end method

.method private final native nCreateKTXTexture(JLjava/nio/Buffer;IZ)J
.end method

.method private final native nCreateSkybox(JJ)J
.end method

.method private final native nGetSphericalHarmonics(Ljava/nio/Buffer;I[F)Z
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/utils/KTX1Loader$a;
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/utils/KTX1Loader$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/KTX1Loader;->g(Ljava/nio/Buffer;)[F

    move-result-object v6

    if-nez v6, :cond_0

    new-instance p1, Lcom/google/android/filament/utils/KTX1Loader$a;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader$a;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/x;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->e(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/KTX1Loader;->nCreateIndirectLight(JJ[F)J

    move-result-wide p2

    new-instance v0, Lcom/google/android/filament/utils/KTX1Loader$a;

    new-instance v1, Lcom/google/android/filament/IndirectLight;

    invoke-direct {v1, p2, p3}, Lcom/google/android/filament/IndirectLight;-><init>(J)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/filament/utils/KTX1Loader$a;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V

    return-object v0
.end method

.method public final c(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/utils/KTX1Loader$c;
    .locals 2
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/utils/KTX1Loader$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->e(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide p2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/filament/utils/KTX1Loader;->nCreateSkybox(JJ)J

    move-result-wide p2

    new-instance v0, Lcom/google/android/filament/utils/KTX1Loader$c;

    new-instance v1, Lcom/google/android/filament/Skybox;

    invoke-direct {v1, p2, p3}, Lcom/google/android/filament/Skybox;-><init>(J)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/filament/utils/KTX1Loader$c;-><init>(Lcom/google/android/filament/Skybox;Lcom/google/android/filament/Texture;)V

    return-object v0
.end method

.method public final e(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;Lcom/google/android/filament/utils/KTX1Loader$b;)Lcom/google/android/filament/Texture;
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/utils/KTX1Loader$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/filament/utils/KTX1Loader$b;->a()Z

    move-result v6

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/KTX1Loader;->nCreateKTXTexture(JLjava/nio/Buffer;IZ)J

    move-result-wide p1

    new-instance p3, Lcom/google/android/filament/Texture;

    invoke-direct {p3, p1, p2}, Lcom/google/android/filament/Texture;-><init>(J)V

    return-object p3
.end method

.method public final g(Ljava/nio/Buffer;)[F
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1b

    new-array v0, v0, [F

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/filament/utils/KTX1Loader;->nGetSphericalHarmonics(Ljava/nio/Buffer;I[F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
