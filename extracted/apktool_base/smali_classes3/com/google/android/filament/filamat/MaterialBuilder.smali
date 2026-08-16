.class public Lcom/google/android/filament/filamat/MaterialBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/filamat/MaterialBuilder$b;,
        Lcom/google/android/filament/filamat/MaterialBuilder$e;,
        Lcom/google/android/filament/filamat/MaterialBuilder$n;,
        Lcom/google/android/filament/filamat/MaterialBuilder$d;,
        Lcom/google/android/filament/filamat/MaterialBuilder$r;,
        Lcom/google/android/filament/filamat/MaterialBuilder$g;,
        Lcom/google/android/filament/filamat/MaterialBuilder$m;,
        Lcom/google/android/filament/filamat/MaterialBuilder$l;,
        Lcom/google/android/filament/filamat/MaterialBuilder$s;,
        Lcom/google/android/filament/filamat/MaterialBuilder$t;,
        Lcom/google/android/filament/filamat/MaterialBuilder$a;,
        Lcom/google/android/filament/filamat/MaterialBuilder$u;,
        Lcom/google/android/filament/filamat/MaterialBuilder$c;,
        Lcom/google/android/filament/filamat/MaterialBuilder$j;,
        Lcom/google/android/filament/filamat/MaterialBuilder$i;,
        Lcom/google/android/filament/filamat/MaterialBuilder$k;,
        Lcom/google/android/filament/filamat/MaterialBuilder$o;,
        Lcom/google/android/filament/filamat/MaterialBuilder$q;,
        Lcom/google/android/filament/filamat/MaterialBuilder$h;,
        Lcom/google/android/filament/filamat/MaterialBuilder$p;,
        Lcom/google/android/filament/filamat/MaterialBuilder$f;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Lcom/google/android/filament/filamat/MaterialBuilder$b;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "filamat-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.google.android.filament.Engine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder;->c:Ljava/lang/Class;

    const-string v1, "getNativeJobSystem"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/filamat/MaterialBuilder;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder;->nCreateMaterialBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    new-instance v2, Lcom/google/android/filament/filamat/MaterialBuilder$b;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder$b;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->a:Lcom/google/android/filament/filamat/MaterialBuilder$b;

    return-void
.end method

.method public static G()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderShutdown()V

    return-void
.end method

.method public static bridge synthetic a(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nDestroyMaterialBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nCreateMaterialBuilder()J
.end method

.method private static native nDestroyMaterialBuilder(J)V
.end method

.method private static native nDestroyPackage(J)V
.end method

.method private static native nGetPackageBytes(J)[B
.end method

.method private static native nGetPackageIsValid(J)Z
.end method

.method private static native nMaterialBuilderAlphaToCoverage(JZ)V
.end method

.method private static native nMaterialBuilderBlending(JI)V
.end method

.method private static native nMaterialBuilderClearCoatIorChange(JZ)V
.end method

.method private static native nMaterialBuilderColorWrite(JZ)V
.end method

.method private static native nMaterialBuilderColoredPenumbra(JZ)V
.end method

.method private static native nMaterialBuilderCulling(JI)V
.end method

.method private static native nMaterialBuilderCustomSurfaceShading(JZ)V
.end method

.method private static native nMaterialBuilderDepthCulling(JZ)V
.end method

.method private static native nMaterialBuilderDepthWrite(JZ)V
.end method

.method private static native nMaterialBuilderDoubleSided(JZ)V
.end method

.method private static native nMaterialBuilderFlipUV(JZ)V
.end method

.method private static native nMaterialBuilderInit()V
.end method

.method private static native nMaterialBuilderInterpolation(JI)V
.end method

.method private static native nMaterialBuilderMaskThreshold(JF)V
.end method

.method private static native nMaterialBuilderMaterial(JLjava/lang/String;)V
.end method

.method private static native nMaterialBuilderMaterialDomain(JI)V
.end method

.method private static native nMaterialBuilderMaterialVertex(JLjava/lang/String;)V
.end method

.method private static native nMaterialBuilderMultiBounceAmbientOcclusion(JZ)V
.end method

.method private static native nMaterialBuilderName(JLjava/lang/String;)V
.end method

.method private static native nMaterialBuilderOptimization(JI)V
.end method

.method private static native nMaterialBuilderPlatform(JI)V
.end method

.method private static native nMaterialBuilderPostLightingBlending(JI)V
.end method

.method private static native nMaterialBuilderReflectionMode(JI)V
.end method

.method private static native nMaterialBuilderRefractionMode(JI)V
.end method

.method private static native nMaterialBuilderRefractionType(JI)V
.end method

.method private static native nMaterialBuilderRequire(JI)V
.end method

.method private static native nMaterialBuilderSamplerParameter(JIIILjava/lang/String;)V
.end method

.method private static native nMaterialBuilderShading(JI)V
.end method

.method private static native nMaterialBuilderShadowMultiplier(JZ)V
.end method

.method private static native nMaterialBuilderShutdown()V
.end method

.method private static native nMaterialBuilderSpecularAmbientOcclusion(JI)V
.end method

.method private static native nMaterialBuilderSpecularAntiAliasing(JZ)V
.end method

.method private static native nMaterialBuilderSpecularAntiAliasingThreshold(JF)V
.end method

.method private static native nMaterialBuilderSpecularAntiAliasingVariance(JF)V
.end method

.method private static native nMaterialBuilderTargetApi(JI)V
.end method

.method private static native nMaterialBuilderTransparencyMode(JI)V
.end method

.method private static native nMaterialBuilderTransparentShadow(JZ)V
.end method

.method private static native nMaterialBuilderUniformParameter(JIILjava/lang/String;)V
.end method

.method private static native nMaterialBuilderUniformParameterArray(JIIILjava/lang/String;)V
.end method

.method private static native nMaterialBuilderUseLegacyMorphing(J)V
.end method

.method private static native nMaterialBuilderVariable(JILjava/lang/String;)V
.end method

.method private static native nMaterialBuilderVariantFilter(JI)V
.end method

.method private static native nMaterialBuilderVertexDomain(JI)V
.end method

.method public static o()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderInit()V

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/filament/filamat/MaterialBuilder$j;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderRefractionMode(JI)V

    return-object p0
.end method

.method public B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderRefractionType(JI)V

    return-object p0
.end method

.method public C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderRequire(JI)V

    return-object p0
.end method

.method public D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 6
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderSamplerParameter(JIIILjava/lang/String;)V

    return-object p0
.end method

.method public E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderShading(JI)V

    return-object p0
.end method

.method public F(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderShadowMultiplier(JZ)V

    return-object p0
.end method

.method public H(Lcom/google/android/filament/filamat/MaterialBuilder$o;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderSpecularAmbientOcclusion(JI)V

    return-object p0
.end method

.method public I(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderSpecularAntiAliasing(JZ)V

    return-object p0
.end method

.method public J(F)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderSpecularAntiAliasingThreshold(JF)V

    return-object p0
.end method

.method public K(F)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderSpecularAntiAliasingVariance(JF)V

    return-object p0
.end method

.method public L(Lcom/google/android/filament/filamat/MaterialBuilder$p;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    iget p1, p1, Lcom/google/android/filament/filamat/MaterialBuilder$p;->number:I

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderTargetApi(JI)V

    return-object p0
.end method

.method public M(Lcom/google/android/filament/filamat/MaterialBuilder$q;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderTransparencyMode(JI)V

    return-object p0
.end method

.method public N(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderTransparentShadow(JZ)V

    return-object p0
.end method

.method public O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderUniformParameter(JIILjava/lang/String;)V

    return-object p0
.end method

.method public P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 3
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderUniformParameter(JIILjava/lang/String;)V

    return-object p0
.end method

.method public Q(Lcom/google/android/filament/filamat/MaterialBuilder$r;ILcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 6
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderUniformParameterArray(JIIILjava/lang/String;)V

    return-object p0
.end method

.method public R(Lcom/google/android/filament/filamat/MaterialBuilder$r;ILjava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 6
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderUniformParameterArray(JIIILjava/lang/String;)V

    return-object p0
.end method

.method public S()Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderUseLegacyMorphing(J)V

    return-object p0
.end method

.method public T(Lcom/google/android/filament/filamat/MaterialBuilder$s;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderVariable(JILjava/lang/String;)V

    return-object p0
.end method

.method public U(I)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderVariantFilter(JI)V

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->S()Lcom/google/android/filament/filamat/MaterialBuilder;

    return-object p0
.end method

.method public V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderVertexDomain(JI)V

    return-object p0
.end method

.method public b(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderAlphaToCoverage(JZ)V

    return-object p0
.end method

.method public c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderBlending(JI)V

    return-object p0
.end method

.method public d()Lcom/google/android/filament/filamat/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->e(Ljava/lang/Object;)Lcom/google/android/filament/filamat/b;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lcom/google/android/filament/filamat/b;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-wide v2, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nBuilderBuild(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nGetPackageBytes(J)[B

    move-result-object p1

    new-instance v2, Lcom/google/android/filament/filamat/b;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nGetPackageIsValid(J)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/filament/filamat/b;-><init>(Ljava/nio/ByteBuffer;Z)V

    invoke-static {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nDestroyPackage(J)V

    return-object v2
.end method

.method public f(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderClearCoatIorChange(JZ)V

    return-object p0
.end method

.method public g(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderColorWrite(JZ)V

    return-object p0
.end method

.method public h(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderColoredPenumbra(JZ)V

    return-object p0
.end method

.method public i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderCulling(JI)V

    return-object p0
.end method

.method public j(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderCustomSurfaceShading(JZ)V

    return-object p0
.end method

.method public k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderDepthCulling(JZ)V

    return-object p0
.end method

.method public l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderDepthWrite(JZ)V

    return-object p0
.end method

.method public m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderDoubleSided(JZ)V

    return-object p0
.end method

.method public n(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderFlipUV(JZ)V

    return-object p0
.end method

.method public p(Lcom/google/android/filament/filamat/MaterialBuilder$d;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderInterpolation(JI)V

    return-object p0
.end method

.method public q(F)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderMaskThreshold(JF)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderMaterial(JLjava/lang/String;)V

    return-object p0
.end method

.method public s(Lcom/google/android/filament/filamat/MaterialBuilder$e;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderMaterialDomain(JI)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderMaterialVertex(JLjava/lang/String;)V

    return-object p0
.end method

.method public u(Z)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderMultiBounceAmbientOcclusion(JZ)V

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderName(JLjava/lang/String;)V

    return-object p0
.end method

.method public w(Lcom/google/android/filament/filamat/MaterialBuilder$f;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderOptimization(JI)V

    return-object p0
.end method

.method public x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderPlatform(JI)V

    return-object p0
.end method

.method public y(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .param p1    # Lcom/google/android/filament/filamat/MaterialBuilder$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderPostLightingBlending(JI)V

    return-object p0
.end method

.method public z(Lcom/google/android/filament/filamat/MaterialBuilder$i;)Lcom/google/android/filament/filamat/MaterialBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/filamat/MaterialBuilder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->nMaterialBuilderReflectionMode(JI)V

    return-object p0
.end method
