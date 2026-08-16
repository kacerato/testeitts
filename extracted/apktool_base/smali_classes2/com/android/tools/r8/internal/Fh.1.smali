.class public final Lcom/android/tools/r8/internal/Fh;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/E50;

    const-string v1, "constraints"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/zN;)V
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/android/tools/r8/internal/xN;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/uN;

    check-cast p1, Lcom/android/tools/r8/internal/xN;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/uN;-><init>(Lcom/android/tools/r8/internal/xN;)V

    move-object p1, v0

    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/zN;->a:Z

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/tools/r8/internal/yN;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/tools/r8/internal/uN;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Eh;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/AN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/AN;

    new-instance v0, Lcom/android/tools/r8/internal/JE0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/JE0;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/AN;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/AN;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/KE0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/KE0;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/AN;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;)V

    return-object p1
.end method

.method public final bridge synthetic c(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    check-cast p3, Lcom/android/tools/r8/internal/Eh;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Fh;->a(Lcom/android/tools/r8/internal/Eh;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/AN;

    move-result-object p1

    return-object p1
.end method
