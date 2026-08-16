.class public Lcom/ardor3d/util/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final maxPoolSize:I

.field public static final stats:Z

.field public static final storeSavableImages:Z

.field public static final trackDirectMemory:Z

.field public static updateGraphs:Z = false

.field public static final useFastMath:Z

.field public static final useMathPools:Z

.field public static final useMultipleContexts:Z

.field public static useValidatingTransform:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ardor3d.stats"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ardor3d/util/Constants;->stats:Z

    const-string v0, "ardor3d.trackDirect"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    const-string v0, "ardor3d.useMultipleContexts"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/ardor3d/util/Constants;->useMultipleContexts:Z

    const-string v0, "ardor3d.noMathPools"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    const-string v0, "ardor3d.useFastMath"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    const-string v0, "ardor3d.storeSavableImages"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/ardor3d/util/Constants;->storeSavableImages:Z

    const-string v0, "ardor3d.maxPoolSize"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_6
    const/16 v0, 0xb

    :goto_6
    sput v0, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    const-string v0, "ardor3d.disableValidatingTransform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    sput-boolean v1, Lcom/ardor3d/util/Constants;->useValidatingTransform:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
