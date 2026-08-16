.class public Lcom/android/tools/r8/R8Command$Builder;
.super Lcom/android/tools/r8/BaseCompilerCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/R8Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCompilerCommand$Builder<",
        "Lcom/android/tools/r8/R8Command;",
        "Lcom/android/tools/r8/R8Command$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic e0:Z = true


# instance fields
.field private final B:Ljava/util/ArrayList;

.field private C:Ljava/util/function/Consumer;

.field private D:Ljava/util/function/Consumer;

.field private E:Lcom/android/tools/r8/StringConsumer;

.field private final F:Ljava/util/ArrayList;

.field private final G:Ljava/util/ArrayList;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/util/Optional;

.field private M:Lcom/android/tools/r8/StringConsumer;

.field private N:Lcom/android/tools/r8/StringConsumer;

.field private O:Lcom/android/tools/r8/StringConsumer;

.field private P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field private Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field private R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

.field private S:Ljava/util/function/Consumer;

.field private final T:Lcom/android/tools/r8/internal/Ov;

.field private U:Ljava/lang/String;

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Lcom/android/tools/r8/internal/ll0;

.field private Z:Lcom/android/tools/r8/AndroidResourceProvider;

.field private a0:Lcom/android/tools/r8/AndroidResourceConsumer;

.field private b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

.field private c0:Lcom/android/tools/r8/internal/hb0;

.field private final d0:Lcom/android/tools/r8/shaking/t3$a;

.field public enableStartupLayoutOptimization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->E:Lcom/android/tools/r8/StringConsumer;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->H:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->K:Z

    .line 14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->L:Ljava/util/Optional;

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->M:Lcom/android/tools/r8/StringConsumer;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->N:Lcom/android/tools/r8/StringConsumer;

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 20
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->S:Ljava/util/function/Consumer;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/Ov;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ov;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->U:Ljava/lang/String;

    .line 25
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->V:Z

    .line 26
    const-string v1, "com.android.tools.r8.enableKeepAnnotations"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->W:Z

    .line 27
    const-string v1, "com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->X:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/tools/r8/R8Command$Builder;->enableStartupLayoutOptimization:Z

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Y:Lcom/android/tools/r8/internal/ll0;

    .line 30
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Z:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 31
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->a0:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 32
    sget-object p1, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->DEFAULT_CONFIGURATION:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 33
    const-string p1, "com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    const-string v1, "com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/hb0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    .line 36
    invoke-static {}, Lcom/android/tools/r8/shaking/t3;->a()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/t3$a;->b()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    .line 37
    const-string p1, "com.android.tools.r8.allowDexInputToR8"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    xor-int/lit8 p1, v0, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    .line 42
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    .line 43
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->E:Lcom/android/tools/r8/StringConsumer;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->H:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->K:Z

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->L:Ljava/util/Optional;

    .line 51
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->M:Lcom/android/tools/r8/StringConsumer;

    .line 52
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->N:Lcom/android/tools/r8/StringConsumer;

    .line 53
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    .line 54
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 55
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 56
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    .line 57
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->S:Ljava/util/function/Consumer;

    .line 58
    new-instance v1, Lcom/android/tools/r8/internal/Ov;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ov;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->U:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->V:Z

    .line 62
    const-string v1, "com.android.tools.r8.enableKeepAnnotations"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->W:Z

    .line 63
    const-string v1, "com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->X:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/tools/r8/R8Command$Builder;->enableStartupLayoutOptimization:Z

    .line 65
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Y:Lcom/android/tools/r8/internal/ll0;

    .line 66
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Z:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 67
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->a0:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 68
    sget-object p1, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->DEFAULT_CONFIGURATION:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 69
    const-string p1, "com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    const-string v1, "com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/hb0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    .line 72
    invoke-static {}, Lcom/android/tools/r8/shaking/t3;->a()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/t3$a;->b()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    .line 73
    const-string p1, "com.android.tools.r8.allowDexInputToR8"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    xor-int/lit8 p1, v0, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    .line 78
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    .line 79
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->E:Lcom/android/tools/r8/StringConsumer;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 82
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command$Builder;->H:Z

    .line 83
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    .line 84
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    .line 85
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command$Builder;->K:Z

    .line 86
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->L:Ljava/util/Optional;

    .line 87
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->M:Lcom/android/tools/r8/StringConsumer;

    .line 88
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->N:Lcom/android/tools/r8/StringConsumer;

    .line 89
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    .line 90
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 91
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 92
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    .line 93
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->S:Ljava/util/function/Consumer;

    .line 94
    new-instance v0, Lcom/android/tools/r8/internal/Ov;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ov;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->U:Ljava/lang/String;

    .line 97
    iput-boolean p2, p0, Lcom/android/tools/r8/R8Command$Builder;->V:Z

    .line 98
    const-string v0, "com.android.tools.r8.enableKeepAnnotations"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->W:Z

    .line 99
    const-string v0, "com.android.tools.r8.readEmbeddedRulesFromClasspathAndLibrary"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->X:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->enableStartupLayoutOptimization:Z

    .line 101
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Y:Lcom/android/tools/r8/internal/ll0;

    .line 102
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Z:Lcom/android/tools/r8/AndroidResourceProvider;

    .line 103
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->a0:Lcom/android/tools/r8/AndroidResourceConsumer;

    .line 104
    sget-object p1, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->DEFAULT_CONFIGURATION:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 105
    const-string p1, "com.android.tools.r8.experimentalPartialShrinkingIncludePatterns"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    const-string v0, "com.android.tools.r8.experimentalPartialShrinkingExcludePatterns"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/hb0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    .line 108
    invoke-static {}, Lcom/android/tools/r8/shaking/t3;->a()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/t3$a;->b()Lcom/android/tools/r8/shaking/t3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    .line 109
    const-string p1, "com.android.tools.r8.allowDexInputToR8"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move p2, v1

    :cond_2
    xor-int/lit8 p1, p2, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->b(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/F3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/F3;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/utils/i;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;Ljava/lang/String;)V
    .locals 2

    .line 118
    new-instance v0, Lcom/android/tools/r8/shaking/z3;

    .line 119
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/q3;->a(Lcom/android/tools/r8/shaking/w3;)V

    return-void
.end method

.method private a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/q3;)V
    .locals 13

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->Y:Lcom/android/tools/r8/internal/ll0;

    .line 59
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/ml0;->a(Lcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Uq0;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    new-array v2, v1, [Lcom/android/tools/r8/shaking/P0;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/android/tools/r8/utils/i$a;->b()V

    .line 64
    iget-object v4, v4, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    .line 65
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/C3;

    invoke-direct {v5}, Lcom/android/tools/r8/C3;-><init>()V

    .line 66
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/D3;

    invoke-direct {v5}, Lcom/android/tools/r8/D3;-><init>()V

    .line 67
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 68
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    iget-object v4, p2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    .line 70
    iget-object v4, v4, Lcom/android/tools/r8/shaking/o3$a;->b:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_0
    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/shaking/P0;

    .line 72
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/shaking/P0;)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 74
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-boolean v4, p0, Lcom/android/tools/r8/R8Command$Builder;->X:Z

    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v4

    .line 77
    iget-object v4, v4, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    .line 78
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/E3;

    invoke-direct {v5}, Lcom/android/tools/r8/E3;-><init>()V

    .line 79
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/D3;

    invoke-direct {v5}, Lcom/android/tools/r8/D3;-><init>()V

    .line 80
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 81
    new-instance v5, Lcom/android/tools/r8/s3;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/s3;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v4

    .line 83
    iget-object v4, v4, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    .line 84
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/E3;

    invoke-direct {v5}, Lcom/android/tools/r8/E3;-><init>()V

    .line 85
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/D3;

    invoke-direct {v5}, Lcom/android/tools/r8/D3;-><init>()V

    .line 86
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 87
    new-instance v5, Lcom/android/tools/r8/s3;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/s3;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    iget-object v4, p2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    .line 89
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/o3$a;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/o3;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/P0;

    .line 90
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/shaking/P0;)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :cond_4
    :goto_2
    if-ge v4, v2, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/DataResourceProvider;

    if-eqz v5, :cond_4

    .line 94
    :try_start_0
    new-instance v6, Lcom/android/tools/r8/internal/Ht;

    invoke-direct {v6, p1, v0}, Lcom/android/tools/r8/internal/Ht;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/Uq0;)V

    .line 95
    invoke-interface {v5, v6}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V

    .line 96
    iget-object v5, v6, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v6, Lcom/android/tools/r8/internal/Ht;->d:Ljava/util/ArrayList;

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_5
    iget-object v5, v6, Lcom/android/tools/r8/internal/Ht;->c:Ljava/util/ArrayList;

    .line 97
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :goto_4
    if-ge v8, v7, :cond_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/shaking/w3;
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    invoke-virtual {p2, v9}, Lcom/android/tools/r8/shaking/q3;->a(Lcom/android/tools/r8/shaking/w3;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v10

    .line 99
    :try_start_2
    iget-object v11, v6, Lcom/android/tools/r8/internal/Ht;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v12, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-interface {v9}, Lcom/android/tools/r8/shaking/w3;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v9

    invoke-direct {v12, v10, v9}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V
    :try_end_2
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 100
    :goto_5
    new-instance v6, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Lcom/android/tools/r8/ResourceException;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/vJ;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/vJ;->a:Ljava/util/Collection;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-boolean v2, Lcom/android/tools/r8/R8Command$Builder;->e0:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected method with DEX code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    return-void
.end method

.method private a(Lcom/android/tools/r8/shaking/q3;)V
    .locals 8

    .line 101
    iget-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->W:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i$a;->b()V

    .line 104
    iget-object v0, v0, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 106
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ProgramResource;

    .line 107
    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v5, v6, :cond_2

    .line 108
    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResource;->getBytes()[B

    move-result-object v5

    .line 109
    invoke-static {v5}, Lcom/android/tools/r8/internal/rO;->a([B)Ljava/util/ArrayList;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 111
    new-instance v6, Lcom/android/tools/r8/internal/qP;

    new-instance v7, Lcom/android/tools/r8/u3;

    invoke-direct {v7, v4, p1}, Lcom/android/tools/r8/u3;-><init>(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;)V

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/qP;-><init>(Ljava/util/function/Consumer;)V

    .line 112
    new-instance v4, Lcom/android/tools/r8/v3;

    invoke-direct {v4, v6}, Lcom/android/tools/r8/v3;-><init>(Lcom/android/tools/r8/internal/qP;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 113
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    .line 114
    iget-object v0, v0, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    .line 115
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Lcom/android/tools/r8/ResourceException;)V

    const/4 p1, 0x0

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 117
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 3

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/z3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 10
    const-string v3, "."

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/o3$a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 124
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/z3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    const-string v3, "."

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic c([Ljava/nio/file/Path;)V
    .locals 5

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/nio/file/Path;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lcom/android/tools/r8/shaking/Z1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Z1;-><init>(Ljava/nio/file/Path;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic f(Ljava/nio/file/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic f(Ljava/util/Collection;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/B3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/B3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/tools/r8/R8Command$Builder;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->e(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/tools/r8/R8Command$Builder;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->f(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;->a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->f(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/tools/r8/R8Command$Builder;[Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->c([Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic x(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/o3$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/o3$a;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;->b(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/hb0;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/internal/ll0;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Y:Lcom/android/tools/r8/internal/ll0;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->U:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/o3;)Lcom/android/tools/r8/R8Command;
    .locals 56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v50

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v9

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    .line 18
    sget-object v3, Lcom/android/tools/r8/shaking/q3;->f:Lcom/android/tools/r8/internal/hC;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 21
    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    :goto_0
    move-object v4, v2

    goto :goto_1

    .line 22
    :cond_0
    new-instance v3, Lcom/android/tools/r8/shaking/q3;

    invoke-direct {v3, v1, v9}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 23
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/q3;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/internal/vm;

    move-result-object v28

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/shaking/o3;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/util/Collection;)Lcom/android/tools/r8/utils/i$a;

    .line 27
    sget-boolean v1, Lcom/android/tools/r8/R8Command$Builder;->e0:Z

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 28
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_3

    .line 29
    sget-object v1, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    :goto_3
    move-object v10, v1

    goto :goto_4

    .line 30
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->desugarState:Lcom/android/tools/r8/internal/nJ$f;

    goto :goto_3

    .line 31
    :goto_4
    new-instance v53, Lcom/android/tools/r8/R8Command;

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v3

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v5

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v7

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v8

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/shaking/o3;->A()Z

    move-result v11

    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/shaking/o3;->v()Z

    move-result v12

    iget-boolean v13, v0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    iget-boolean v14, v0, Lcom/android/tools/r8/R8Command$Builder;->K:Z

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->L:Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    iget-object v1, v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->partitionMapConsumer:Lcom/android/tools/r8/PartitionMapConsumer;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->M:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->N:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->isOptimizeMultidexForLinearAlloc()Z

    move-result v24

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getIncludeClassesChecksum()Z

    move-result v25

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDexClassChecksumFilter()Ljava/util/function/BiPredicate;

    move-result-object v26

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/android/tools/r8/R8Command$Builder;->E:Lcom/android/tools/r8/StringConsumer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    move-object/from16 v27, v6

    .line 42
    iget-object v6, v1, Lcom/android/tools/r8/internal/Ov;->a:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    move-object/from16 v54, v1

    move-object/from16 v29, v15

    goto :goto_5

    .line 44
    :cond_4
    new-instance v6, Lcom/android/tools/r8/internal/Qv;

    move-object/from16 v29, v15

    iget-object v15, v1, Lcom/android/tools/r8/internal/Ov;->a:Ljava/util/ArrayList;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/Ov;->b:Z

    invoke-direct {v6, v15, v1}, Lcom/android/tools/r8/internal/Qv;-><init>(Ljava/util/ArrayList;Z)V

    move-object/from16 v54, v6

    .line 45
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->g()Ljava/util/List;

    move-result-object v30

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->j()Ljava/util/List;

    move-result-object v31

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->U:Ljava/lang/String;

    move-object/from16 v32, v1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->l()I

    move-result v33

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->i()Lcom/android/tools/r8/internal/qt;

    move-result-object v34

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMapIdProvider()Lcom/android/tools/r8/MapIdProvider;

    move-result-object v35

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getSourceFileProvider()Lcom/android/tools/r8/SourceFileProvider;

    move-result-object v36

    iget-boolean v1, v0, Lcom/android/tools/r8/R8Command$Builder;->V:Z

    move/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/R8Command$Builder;->enableStartupLayoutOptimization:Z

    move/from16 v38, v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getAndroidPlatformBuild()Z

    move-result v39

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->f()Ljava/util/List;

    move-result-object v40

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->k()Ljava/util/List;

    move-result-object v41

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->h()Lcom/android/tools/r8/ClassConflictResolver;

    move-result-object v42

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getCancelCompilationChecker()Lcom/android/tools/r8/CancelCompilationChecker;

    move-result-object v43

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->Z:Lcom/android/tools/r8/AndroidResourceProvider;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->a0:Lcom/android/tools/r8/AndroidResourceConsumer;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->S:Ljava/util/function/Consumer;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    move-object/from16 v49, v1

    const/16 v52, 0x0

    move-object/from16 v1, v53

    move-object/from16 v6, p2

    move-object/from16 v55, v29

    move-object/from16 v29, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v23

    move-object/from16 v23, v29

    move-object/from16 v27, v55

    move-object/from16 v29, v54

    invoke-direct/range {v1 .. v52}, Lcom/android/tools/r8/R8Command;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/ProgramConsumer;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/shaking/o3;Lcom/android/tools/r8/CompilationMode;ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/nJ$f;ZZZZLjava/util/Optional;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/PartitionMapConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/function/Consumer;ZZLjava/util/function/BiPredicate;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/vm;Lcom/android/tools/r8/internal/Qv;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/android/tools/r8/internal/qt;Lcom/android/tools/r8/MapIdProvider;Lcom/android/tools/r8/SourceFileProvider;ZZZLjava/util/List;Ljava/util/List;Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/CancelCompilationChecker;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/ResourceShrinkerConfiguration;Ljava/util/ArrayList;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/hb0;JLcom/android/tools/r8/G3;)V

    .line 56
    iget-object v1, v0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    if-eqz v1, :cond_5

    .line 57
    invoke-interface {v1}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->finished()V

    :cond_5
    return-object v53
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/shaking/o3$a;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    .line 122
    new-instance v1, Lcom/android/tools/r8/A3;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/A3;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    return-void
.end method

.method public addFeatureSplit(Ljava/util/function/Function;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/tools/r8/FeatureSplit$Builder;",
            "Lcom/android/tools/r8/FeatureSplit;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/FeatureSplit;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/FeatureSplit$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/FeatureSplit;

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ov;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/tools/r8/FeatureSplit;->getProgramResourceProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ProgramResourceProvider;

    new-instance v1, Lcom/android/tools/r8/f0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/f0;-><init>(Lcom/android/tools/r8/ProgramResourceProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/R8Command$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addKeepSpecificationData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->F:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/Y1;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/Y1;-><init>(Lcom/android/tools/r8/origin/Origin;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addKeepSpecificationFiles(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/w3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/w3;-><init>(Lcom/android/tools/r8/R8Command$Builder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public varargs addKeepSpecificationFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addKeepSpecificationFiles(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMainDexRules(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/z3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/z3;-><init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public addMainDexRulesFiles(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/t3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/t3;-><init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addMainDexRulesFiles(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/internal/vJ;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/vJ;

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/R8Command$Builder;->e0:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/internal/vJ;)V

    :cond_0
    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1

    .line 7
    :cond_3
    new-instance v0, Lcom/android/tools/r8/h0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/h0;-><init>(Lcom/android/tools/r8/ProgramResourceProvider;)V

    invoke-super {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->addProgramResourceProvider(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/x3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/x3;-><init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public addProguardConfigurationFiles(Ljava/util/List;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/r3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/r3;-><init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs addProguardConfigurationFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/y3;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/y3;-><init>(Lcom/android/tools/r8/R8Command$Builder;[Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public bridge synthetic addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/startup/StartupProfileProvider;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public varargs addStartupProfileProviders([Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->addStartupProfileProviders(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public b(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/v3;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->D:Ljava/util/function/Consumer;

    return-void
.end method

.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public c(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->X:Z

    return-void
.end method

.method public final d()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/DexFilePerClassFileConsumer;

    if-eqz v1, :cond_1

    const-string v1, "R8 does not support compiling to a single DEX file per Java class file"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Option --main-dex-list-output requires --main-dex-rules and/or --main-dex-list"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v3

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMainDexListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R8 does not support main-dex inputs and outputs when compiling to API level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and above"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ov;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_5
    :goto_0
    if-ge v4, v2, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/FeatureSplit;

    sget-boolean v6, Lcom/android/tools/r8/R8Command$Builder;->e0:Z

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/FeatureSplit;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v6

    instance-of v6, v6, Lcom/android/tools/r8/DexIndexedConsumer;

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v5

    instance-of v5, v5, Lcom/android/tools/r8/DexIndexedConsumer;

    if-nez v5, :cond_5

    const-string v5, "R8 does not support class file output when using feature splits"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/BaseCommand$Builder;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_9
    :goto_2
    if-ge v3, v2, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/nio/file/Path;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ww;->d(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v6, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string v4, "R8 does not support compiling DEX inputs"

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "R8 does not support --min-api when compiling to class files"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getDisableDesugaring()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Using desugared library configuration requires desugaring to be enabled"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/hb0;->a:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/tools/r8/DexIndexedConsumer;

    if-nez v1, :cond_d

    const-string v1, "Partial shrinking does not support generating class files"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->n()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMinApiLevel()I

    move-result v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    if-lt v1, v2, :cond_e

    goto :goto_3

    :cond_e
    const-string v1, "Partial shrinking requires min API level >= 21"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    if-eqz v1, :cond_f

    const-string v1, "Partial shrinking does not support Proguard compatibility mode"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_f
    invoke-super {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->d()V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/CompilationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method

.method public enableExperimentalPartialShrinking(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "androidx.**,kotlin.**,kotlinx.**"

    :cond_1
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hb0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->c0:Lcom/android/tools/r8/internal/hb0;

    return-object p0
.end method

.method public enableLegacyFullModeForKeepRules(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    iput-boolean p1, v0, Lcom/android/tools/r8/shaking/t3$a;->a:Z

    return-object p0
.end method

.method public enableLegacyFullModeForKeepRulesWarnings(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    iput-boolean p1, v0, Lcom/android/tools/r8/shaking/t3$a;->b:Z

    return-object p0
.end method

.method public getProguardCompatibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    return v0
.end method

.method public getProguardConfigurationConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public final bridge synthetic makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command$Builder;->p()Lcom/android/tools/r8/R8Command;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/R8Command;
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/t3$a;->a()Lcom/android/tools/r8/shaking/t3;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/q3;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/t3;Lcom/android/tools/r8/InputDependencyGraphConsumer;)V

    iget-object v3, v2, Lcom/android/tools/r8/shaking/q3;->a:Lcom/android/tools/r8/shaking/o3$a;

    iget-boolean v4, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    iput-boolean v4, v3, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    iget-object v4, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/R8Command$Builder;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->getMode()Lcom/android/tools/r8/CompilationMode;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3$a;->d()Lcom/android/tools/r8/shaking/o3$a;

    :cond_2
    iget-boolean v4, p0, Lcom/android/tools/r8/R8Command$Builder;->H:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3$a;->e()Lcom/android/tools/r8/shaking/o3$a;

    :cond_3
    iget-boolean v4, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3$a;->c()Lcom/android/tools/r8/shaking/o3$a;

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/R8Command$Builder;->C:Ljava/util/function/Consumer;

    if-eqz v4, :cond_5

    invoke-interface {v4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/q3;)V

    invoke-direct {p0, v2}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/shaking/q3;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3$a;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/t3;->f:Z

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Illegal attempt to keep runtime invisible annotations"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/R8Command$Builder;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/o3;)Lcom/android/tools/r8/R8Command;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_1
    new-instance v0, Lcom/android/tools/r8/R8Command;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/R8Command;-><init>(ZZLcom/android/tools/r8/G3;)V

    return-object v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->a(Z)Lcom/android/tools/r8/shaking/t3$a;

    return-void
.end method

.method public r()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->b(Z)Lcom/android/tools/r8/shaking/t3$a;

    return-void
.end method

.method public s()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->c(Z)Lcom/android/tools/r8/shaking/t3$a;

    return-void
.end method

.method public setAndroidResourceConsumer(Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->a0:Lcom/android/tools/r8/AndroidResourceConsumer;

    return-object p0
.end method

.method public setAndroidResourceProvider(Lcom/android/tools/r8/AndroidResourceProvider;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Z:Lcom/android/tools/r8/AndroidResourceProvider;

    return-object p0
.end method

.method public setBuildMetadataConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/metadata/R8BuildMetadata;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->S:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setDesugaredLibraryKeepRuleConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->E:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setDisableMinification(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->I:Z

    return-object p0
.end method

.method public setDisableTreeShaking(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->H:Z

    return-object p0
.end method

.method public setEnableExperimentalIsolatedSplits(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->setEnableIsolatedSplits(Z)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEnableExperimentalKeepAnnotations(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->W:Z

    return-object p0
.end method

.method public setEnableExperimentalMissingLibraryApiModeling(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->V:Z

    return-object p0
.end method

.method public setEnableIsolatedSplits(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->T:Lcom/android/tools/r8/internal/Ov;

    iput-boolean p1, v0, Lcom/android/tools/r8/internal/Ov;->b:Z

    return-object p0
.end method

.method public setEnableStartupLayoutOptimization(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->enableStartupLayoutOptimization:Z

    return-object p0
.end method

.method public setInputDependencyGraphConsumer(Lcom/android/tools/r8/InputDependencyGraphConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->R:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    return-object p0
.end method

.method public setKeptGraphConsumer(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->P:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-object p0
.end method

.method public setMainDexKeptGraphConsumer(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->Q:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-object p0
.end method

.method public bridge synthetic setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/R8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/R8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/R8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/R8Command$Builder;

    return-object p0
.end method

.method public setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->L:Ljava/util/Optional;

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public setProguardCompatibility(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->J:Z

    return-object p0
.end method

.method public setProguardConfigurationConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->O:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public bridge synthetic setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->proguardMapConsumer:Lcom/android/tools/r8/StringConsumer;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command$Builder;->c()Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 4
    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public setProguardMapInputFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    return-object p0
.end method

.method public bridge synthetic setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/R8Command$Builder;->setProguardMapConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/R8Command$Builder;

    return-object p1
.end method

.method public setProguardSeedsConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->N:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setProguardUsageConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->M:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setProtectApiSurface(Z)Lcom/android/tools/r8/R8Command$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/R8Command$Builder;->K:Z

    return-object p0
.end method

.method public setResourceShrinkerConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/R8Command$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;",
            "Lcom/android/tools/r8/ResourceShrinkerConfiguration;",
            ">;)",
            "Lcom/android/tools/r8/R8Command$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iput-object p1, p0, Lcom/android/tools/r8/R8Command$Builder;->b0:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    return-object p0
.end method

.method public t()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/R8Command$Builder;->d0:Lcom/android/tools/r8/shaking/t3$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t3$a;->d(Z)Lcom/android/tools/r8/shaking/t3$a;

    return-void
.end method
