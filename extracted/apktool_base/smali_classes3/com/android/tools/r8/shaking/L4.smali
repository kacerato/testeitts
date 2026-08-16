.class public final Lcom/android/tools/r8/shaking/L4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/L4;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/L4;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/L4;->c:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/L4;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/V6;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/shaking/V6;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    .line 3
    new-instance p1, Lcom/android/tools/r8/shaking/L4;

    iget-object p2, p0, Lcom/android/tools/r8/shaking/L4;->a:Ljava/util/Set;

    .line 4
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/L4;->b:Ljava/util/Set;

    .line 5
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/L4;->c:Ljava/util/Set;

    .line 6
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Lcom/android/tools/r8/shaking/L4;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method
