.class public final Lcom/android/tools/r8/internal/fe;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/internal/kq0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/kq0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kq0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fe;->g:Lcom/android/tools/r8/internal/kq0;

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/vP;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FP;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    .line 8
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Invalid class name pattern: null"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/vP;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/FP;->b:Lcom/android/tools/r8/internal/FP;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FP;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Invalid class name pattern: null"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ee;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;
    .locals 2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/fe;->g:Lcom/android/tools/r8/internal/kq0;

    sget-object v0, Lcom/android/tools/r8/internal/jq0;->c:Lcom/android/tools/r8/internal/jq0;

    new-instance v1, Lcom/android/tools/r8/internal/Wa1;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/internal/Wa1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/tools/r8/internal/kq0;->a(Lcom/android/tools/r8/internal/jq0;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/ee;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/fe;->a(Lcom/android/tools/r8/internal/ee;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/A50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ee;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/fe;->g:Lcom/android/tools/r8/internal/kq0;

    sget-object v0, Lcom/android/tools/r8/internal/jq0;->b:Lcom/android/tools/r8/internal/jq0;

    new-instance v1, Lcom/android/tools/r8/internal/Va1;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/Va1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/kq0;->a(Lcom/android/tools/r8/internal/jq0;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ee;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/fe;->a(Lcom/android/tools/r8/internal/ee;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
