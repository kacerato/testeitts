.class public abstract Lcom/android/tools/r8/internal/Ke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/xK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xK0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/GK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/GK0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/HK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/HK0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/IK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/IK0;-><init>()V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    new-instance v0, Lcom/android/tools/r8/internal/JK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JK0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/KK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/KK0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/LK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/LK0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/MK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/MK0;-><init>()V

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Ke;->a:Ljava/util/stream/Collector;

    new-instance v0, Lcom/android/tools/r8/internal/yK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yK0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/zK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zK0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/EK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/EK0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/FK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/FK0;-><init>()V

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    return-void
.end method

.method public static synthetic a()Lcom/android/tools/r8/internal/Je;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Je;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Je;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/stream/Collector;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/AK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AK0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/BK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/BK0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/CK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/CK0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/DK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/DK0;-><init>()V

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    filled-new-array {v4}, [Ljava/util/stream/Collector$Characteristics;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method
