.class public final Lcom/android/tools/r8/internal/uX;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/internal/su0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/E50;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/su0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/su0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/uX;->g:Lcom/android/tools/r8/internal/su0;

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Gu1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Gu1;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/DP;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/internal/zP;

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/XO;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/XO;-><init>(Lcom/android/tools/r8/internal/DP;)V

    move-object p1, v0

    .line 5
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 14
    check-cast p1, Lcom/android/tools/r8/internal/ru0;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/uX;->g:Lcom/android/tools/r8/internal/su0;

    invoke-static {p4}, Lcom/android/tools/r8/internal/uX;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 3

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/ru0;

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/ru0;->c:Lcom/android/tools/r8/internal/ru0;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "void"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/ru0;->d:Lcom/android/tools/r8/internal/ru0;

    if-ne p1, v0, :cond_1

    const-string v0, "V"

    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/tt0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/uX;->g:Lcom/android/tools/r8/internal/su0;

    invoke-static {p4}, Lcom/android/tools/r8/internal/uX;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/su0;->a(Lcom/android/tools/r8/internal/ru0;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/ZO;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ZO;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ru0;

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/uX;->g:Lcom/android/tools/r8/internal/su0;

    invoke-static {p4}, Lcom/android/tools/r8/internal/uX;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    check-cast p3, Lcom/android/tools/r8/internal/ru0;

    iget-object p1, p0, Lcom/android/tools/r8/internal/uX;->g:Lcom/android/tools/r8/internal/su0;

    invoke-static {p2}, Lcom/android/tools/r8/internal/uX;->a(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ZO;

    return-object v0
.end method
