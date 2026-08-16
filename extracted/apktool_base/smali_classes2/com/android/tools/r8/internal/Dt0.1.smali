.class public final Lcom/android/tools/r8/internal/Dt0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/qL;->d(Ljava/lang/String;)V

    return-void
.end method
