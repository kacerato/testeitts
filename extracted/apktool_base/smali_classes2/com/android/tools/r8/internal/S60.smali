.class public interface abstract Lcom/android/tools/r8/internal/S60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/R60;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/S60;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/R60;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    if-eq v0, p1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->j()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    if-eq v0, p1, :cond_3

    .line 11
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->H()Lcom/android/tools/r8/internal/ka;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-object v1

    :cond_3
    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/jy;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/S60;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/S60;

    move-result-object p1

    return-object p1
.end method
