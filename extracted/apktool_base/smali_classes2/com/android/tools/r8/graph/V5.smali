.class public final Lcom/android/tools/r8/graph/V5;
.super Lcom/android/tools/r8/graph/K5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/sb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/sb;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/graph/K5;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p0

    return p0
.end method

.method public static synthetic a()Ljava/util/Set;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/tools/r8/graph/tb;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/tb;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
