.class public abstract Lcom/android/tools/r8/internal/Sj;
.super Lcom/android/tools/r8/internal/Uj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Uj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Qj;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Qj;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Qj;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/lp0;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/Hp0;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/lp0;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Qj;Ljava/util/function/Function;)V
.end method

.method public final b(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gW0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gW0;-><init>(Lcom/android/tools/r8/internal/Sj;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Sj;->a(Lcom/android/tools/r8/internal/Qj;Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method
