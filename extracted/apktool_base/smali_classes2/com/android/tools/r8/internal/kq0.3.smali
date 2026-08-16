.class public final Lcom/android/tools/r8/internal/kq0;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kq0;Lcom/android/tools/r8/internal/iq0;Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/iq0;Ljava/util/function/Consumer;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/vP;

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    const-string p0, "Cannot specify both the exact string and a suffix"

    .line 24
    invoke-static {p2, p2, p0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p0

    .line 25
    throw p0

    .line 26
    :cond_1
    const-string p0, "Cannot specify both the exact string and a prefix"

    .line 27
    invoke-static {p2, p2, p0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p0

    .line 28
    throw p0

    :cond_2
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 30
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 31
    sget-object p0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    goto :goto_0

    .line 32
    :cond_3
    new-instance p3, Lcom/android/tools/r8/internal/vP;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/vP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p3

    .line 33
    :goto_0
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jq0;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jq0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;
    .locals 7

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/B50;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/kq0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/kq0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/iq0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/iq0;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 13
    new-instance v4, Lcom/android/tools/r8/internal/iq0;

    invoke-direct {v4, p2}, Lcom/android/tools/r8/internal/iq0;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 14
    sget-object p1, Lcom/android/tools/r8/internal/jq0;->b:Lcom/android/tools/r8/internal/jq0;

    const-string p3, "exact"

    invoke-virtual {v1, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/hq0;->b:Lcom/android/tools/r8/internal/hq0;

    const-string p3, "startsWith"

    invoke-virtual {v2, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    const-string p3, "endsWith"

    invoke-virtual {v4, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/A50;

    .line 18
    invoke-static {v1, v2, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p3

    new-instance v6, Lcom/android/tools/r8/internal/Th1;

    move-object v0, v6

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Th1;-><init>(Lcom/android/tools/r8/internal/kq0;Lcom/android/tools/r8/internal/iq0;Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/iq0;Ljava/util/function/Consumer;)V

    invoke-direct {p1, p2, p3, v6}, Lcom/android/tools/r8/internal/A50;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/hC;Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/jq0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kq0;->a(Lcom/android/tools/r8/internal/jq0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/jq0;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
