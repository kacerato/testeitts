.class public final Lcom/android/tools/r8/internal/wf;
.super Lcom/android/tools/r8/internal/yf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)Lcom/android/tools/r8/internal/yf;
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yf;->b:Lcom/android/tools/r8/internal/xf;

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/yf;->c:Lcom/android/tools/r8/internal/xf;

    return-object p1

    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/yf;->a:Lcom/android/tools/r8/internal/wf;

    return-object p1
.end method
