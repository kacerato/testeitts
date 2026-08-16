.class public final Lcom/android/tools/r8/internal/Id;
.super Lcom/android/tools/r8/internal/Kd;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Id;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Id;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Id;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Id;->d:Lcom/android/tools/r8/internal/Id;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/tools/r8/internal/Kd;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Kd;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    return-void
.end method
