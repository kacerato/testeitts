.class public final Lcom/android/tools/r8/internal/Z00;
.super Lcom/android/tools/r8/internal/s50;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/s50;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Z00;->a:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/jg;ILcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/jg;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/jg;->b(I)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 9
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/Z00;->a:Z

    if-nez p1, :cond_5

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/jg;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->b0()Z

    move-result p1

    return p1
.end method
