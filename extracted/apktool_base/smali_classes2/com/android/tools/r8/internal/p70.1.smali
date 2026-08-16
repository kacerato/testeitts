.class public final Lcom/android/tools/r8/internal/p70;
.super Lcom/android/tools/r8/internal/q70;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/r70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r70;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/p70;->b:Lcom/android/tools/r8/internal/r70;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/q70;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/p70;->a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/p70;->b:Lcom/android/tools/r8/internal/r70;

    iget-object v1, v1, Lcom/android/tools/r8/internal/r70;->d:Lcom/android/tools/r8/internal/m70;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Tj1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Tj1;-><init>(Lcom/android/tools/r8/internal/m70;)V

    .line 3
    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/p70;->b:Lcom/android/tools/r8/internal/r70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r70;->c:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/up1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/up1;-><init>(Lcom/android/tools/r8/internal/p70;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Dq;->b(Ljava/lang/Iterable;)V

    return-void
.end method
