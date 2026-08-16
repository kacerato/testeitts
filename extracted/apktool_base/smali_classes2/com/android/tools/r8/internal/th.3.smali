.class public final Lcom/android/tools/r8/internal/th;
.super Lcom/android/tools/r8/internal/Wl0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Wl0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Wl0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 1

    .line 2
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/internal/th;->c:Z

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 14
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 15
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/th;->c:Z

    if-nez p1, :cond_5

    .line 16
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 17
    iget-object v0, p2, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iG;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_5
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p1

    .line 21
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/cm0;->a(I)Lcom/android/tools/r8/internal/th;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 1

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Pf1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pf1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method
