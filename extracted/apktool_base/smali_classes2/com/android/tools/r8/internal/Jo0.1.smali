.class public final Lcom/android/tools/r8/internal/Jo0;
.super Lcom/android/tools/r8/internal/Ko0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ko0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, p4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p4

    .line 9
    invoke-virtual {p5, p2, p1, p3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Jo0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Jo0;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v2, Lcom/android/tools/r8/internal/eK0;

    invoke-direct {v2, v0, p2, p1, p3}, Lcom/android/tools/r8/internal/eK0;-><init>(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jo0;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jo0;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object p1
.end method
