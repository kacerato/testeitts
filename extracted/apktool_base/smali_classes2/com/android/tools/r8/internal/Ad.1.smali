.class public final Lcom/android/tools/r8/internal/Ad;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/internal/H50;)Lcom/android/tools/r8/internal/mP;
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Wy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wy0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Xy0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Xy0;-><init>(Lcom/android/tools/r8/internal/H50;)V

    new-instance v2, Lcom/android/tools/r8/internal/Yy0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Yy0;-><init>(Lcom/android/tools/r8/internal/H50;)V

    new-instance p1, Lcom/android/tools/r8/internal/Zy0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Zy0;-><init>()V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/tools/r8/internal/DP;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/mP;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/JM;)Lcom/android/tools/r8/internal/mP;
    .locals 1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/FM;

    const-string v0, "Invalid use of array type where class type was expected"

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/kP;)Lcom/android/tools/r8/internal/mP;
    .locals 1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/FM;

    const-string v0, "Invalid use of primitive type where class type was expected"

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/Ad;Lcom/android/tools/r8/internal/fe;Lcom/android/tools/r8/internal/j50;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/mP;

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 37
    const-string p0, "unqualified name"

    goto :goto_1

    .line 38
    :cond_2
    const-string p0, "package"

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot specify both the full class name and its "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p3, p3, p0}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p0

    .line 40
    throw p0

    .line 41
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    .line 42
    sget-object p3, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    .line 43
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fP;

    .line 44
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/FP;

    .line 45
    new-instance p2, Lcom/android/tools/r8/internal/mP;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/mP;-><init>(Lcom/android/tools/r8/internal/fP;Lcom/android/tools/r8/internal/FP;)V

    .line 46
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zd;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;
    .locals 7

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/android/tools/r8/internal/B50;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/Ad;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 24
    new-instance v3, Lcom/android/tools/r8/internal/j50;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/j50;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/fe;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/fe;-><init>(Lcom/android/tools/r8/internal/B50;)V

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string p3, "name"

    invoke-virtual {v1, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string p3, "constant"

    invoke-virtual {v1, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object p1, Lcom/android/tools/r8/internal/i50;->b:Lcom/android/tools/r8/internal/i50;

    const-string p3, "packageName"

    invoke-virtual {v3, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/ee;->b:Lcom/android/tools/r8/internal/ee;

    const-string p3, "unqualifiedName"

    invoke-virtual {v2, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/ee;->c:Lcom/android/tools/r8/internal/ee;

    const-string p3, "unqualifiedNamePattern"

    invoke-virtual {v2, p3, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/A50;

    .line 32
    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p3

    new-instance v6, Lcom/android/tools/r8/internal/Ty0;

    move-object v0, v6

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ty0;-><init>(Lcom/android/tools/r8/internal/Ad;Lcom/android/tools/r8/internal/fe;Lcom/android/tools/r8/internal/j50;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)V

    invoke-direct {p1, p2, p3, v6}, Lcom/android/tools/r8/internal/A50;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/hC;Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/zd;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/zd;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/internal/DP;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/internal/H50;)Lcom/android/tools/r8/internal/mP;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zd;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/su0;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 8
    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/su0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    sget-object v0, Lcom/android/tools/r8/internal/ru0;->d:Lcom/android/tools/r8/internal/ru0;

    new-instance v1, Lcom/android/tools/r8/internal/Uy0;

    invoke-direct {v1, p0, p4, p2}, Lcom/android/tools/r8/internal/Uy0;-><init>(Lcom/android/tools/r8/internal/Ad;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/su0;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    .line 12
    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/su0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    sget-object v0, Lcom/android/tools/r8/internal/ru0;->c:Lcom/android/tools/r8/internal/ru0;

    new-instance v1, Lcom/android/tools/r8/internal/Vy0;

    invoke-direct {v1, p0, p4, p2}, Lcom/android/tools/r8/internal/Vy0;-><init>(Lcom/android/tools/r8/internal/Ad;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zd;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/zd;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/internal/DP;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/DP;Lcom/android/tools/r8/internal/H50;)Lcom/android/tools/r8/internal/mP;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
