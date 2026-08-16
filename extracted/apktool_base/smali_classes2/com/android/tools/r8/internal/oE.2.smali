.class public final Lcom/android/tools/r8/internal/oE;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/E50;

    const-string v1, "instance-of"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/j7;Lcom/android/tools/r8/internal/Ad;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/mP;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 33
    sget-object p1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Invalid instance-of pattern matching any class exclusive. This pattern matches nothing."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/CO;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    move-object p1, v0

    .line 36
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/nE;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;
    .locals 3

    .line 37
    sget-object v0, Lcom/android/tools/r8/internal/nE;->f:Lcom/android/tools/r8/internal/nE;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 39
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/android/tools/r8/internal/B50;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/android/tools/r8/internal/j7;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/j7;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 42
    sget-object p3, Lcom/android/tools/r8/internal/i7;->b:Lcom/android/tools/r8/internal/i7;

    const-string v0, "inclusive"

    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    new-instance p3, Lcom/android/tools/r8/internal/Ad;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 44
    sget-object v0, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v1, "classNamePattern"

    invoke-virtual {p3, v1, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/android/tools/r8/internal/A50;

    .line 46
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/yo1;

    invoke-direct {v2, p4, p1, p3}, Lcom/android/tools/r8/internal/yo1;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/j7;Lcom/android/tools/r8/internal/Ad;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/android/tools/r8/internal/A50;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/hC;Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 28
    check-cast p1, Lcom/android/tools/r8/internal/nE;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/oE;->a(Lcom/android/tools/r8/internal/nE;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/nE;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const-string v1, "Invalid instance-of pattern matching any class exclusive. This pattern matches nothing."

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 4
    check-cast p3, Lcom/android/tools/r8/internal/tt0;

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/tt0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Lcom/android/tools/r8/internal/CO;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 10
    check-cast p3, Lcom/android/tools/r8/internal/tt0;

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/tt0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    goto :goto_1

    .line 14
    :cond_3
    new-instance p3, Lcom/android/tools/r8/internal/CO;

    invoke-direct {p3, p1, v0}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    :goto_0
    move-object p1, p3

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 16
    check-cast p3, Ljava/lang/String;

    .line 17
    invoke-static {p3}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-nez p3, :cond_5

    .line 19
    new-instance p3, Lcom/android/tools/r8/internal/CO;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    goto :goto_0

    .line 20
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 22
    check-cast p3, Ljava/lang/String;

    .line 23
    invoke-static {p3}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 25
    sget-object p1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    goto :goto_1

    .line 26
    :cond_7
    new-instance p3, Lcom/android/tools/r8/internal/CO;

    invoke-direct {p3, p1, v0}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_8

    .line 27
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v0

    :cond_8
    return p2
.end method
