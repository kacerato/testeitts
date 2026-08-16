.class public final Lcom/android/tools/r8/internal/P2;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/L2;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/L2;->c()Lcom/android/tools/r8/internal/IM;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    .line 11
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/M2;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/B50;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/L2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/L2;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 7
    new-instance p3, Lcom/android/tools/r8/internal/A50;

    new-instance v0, Lcom/android/tools/r8/internal/KQ0;

    invoke-direct {v0, p4, p1}, Lcom/android/tools/r8/internal/KQ0;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/L2;)V

    invoke-direct {p3, p2, p1, v0}, Lcom/android/tools/r8/internal/A50;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/y50;Ljava/lang/Runnable;)V

    return-object p3
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/M2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/P2;->a(Lcom/android/tools/r8/internal/M2;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method
