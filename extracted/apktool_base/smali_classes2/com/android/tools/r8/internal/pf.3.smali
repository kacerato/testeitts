.class public abstract Lcom/android/tools/r8/internal/pf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(DD)I
.end method

.method public abstract a(FF)I
.end method

.method public abstract a(II)I
.end method

.method public abstract a(JJ)I
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)I
.end method

.method public abstract a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;TS;",
            "Lcom/android/tools/r8/internal/Nq0<",
            "TS;>;)I"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/android/tools/r8/internal/Kq0;)I
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/VM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VM0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/android/tools/r8/internal/Kq0;)I

    move-result p1

    return p1
.end method

.method public abstract a(ZZ)I
.end method
