.class public final Lcom/android/tools/r8/internal/j50;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/i50;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/android/tools/r8/internal/fP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fP;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
