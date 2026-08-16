.class public final Lcom/android/tools/r8/internal/m70;
.super Lcom/android/tools/r8/internal/k70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r70;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/k70;-><init>(Lcom/android/tools/r8/internal/r70;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/Tj1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tj1;-><init>(Lcom/android/tools/r8/internal/m70;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    return-void
.end method
