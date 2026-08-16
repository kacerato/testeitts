.class public final Lcom/android/tools/r8/internal/su0;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/DO;)V
    .locals 3

    .line 38
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/tools/r8/internal/CO;

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 45
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/BP;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/BP;-><init>(Lcom/android/tools/r8/internal/YM;)V

    .line 46
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/mP;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 31
    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 36
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/BP;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/BP;-><init>(Lcom/android/tools/r8/internal/YM;)V

    .line 37
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/su0;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/DP;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/oE;

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 13
    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/oE;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/nE;->f:Lcom/android/tools/r8/internal/nE;

    new-instance v1, Lcom/android/tools/r8/internal/vt1;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/internal/vt1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/tools/r8/internal/oE;->a(Lcom/android/tools/r8/internal/nE;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Ad;

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 17
    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    new-instance v1, Lcom/android/tools/r8/internal/wt1;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/internal/wt1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/zd;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/android/tools/r8/internal/B50;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/android/tools/r8/internal/su0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/su0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 23
    sget-object p3, Lcom/android/tools/r8/internal/ru0;->c:Lcom/android/tools/r8/internal/ru0;

    const-string v0, "name"

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    sget-object p3, Lcom/android/tools/r8/internal/ru0;->d:Lcom/android/tools/r8/internal/ru0;

    const-string v0, "constant"

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    sget-object p3, Lcom/android/tools/r8/internal/ru0;->e:Lcom/android/tools/r8/internal/ru0;

    const-string v0, "classNamePattern"

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object p3, Lcom/android/tools/r8/internal/ru0;->f:Lcom/android/tools/r8/internal/ru0;

    const-string v0, "instanceOfPattern"

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance p3, Lcom/android/tools/r8/internal/A50;

    new-instance v0, Lcom/android/tools/r8/internal/xt1;

    invoke-direct {v0, p4, p1}, Lcom/android/tools/r8/internal/xt1;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/su0;)V

    invoke-direct {p3, p2, p1, v0}, Lcom/android/tools/r8/internal/A50;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/y50;Ljava/lang/Runnable;)V

    return-object p3
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/ru0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    check-cast p3, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/DP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v0

    .line 5
    :cond_1
    check-cast p3, Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 8
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/H50;)Lcom/android/tools/r8/internal/DP;

    move-result-object p1

    .line 9
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ru0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
