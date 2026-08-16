.class public final Lcom/android/tools/r8/internal/av;
.super Lcom/android/tools/r8/internal/Wl0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Wl0;-><init>(I)V

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/av;->c:Z

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

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    sget-boolean p1, Lcom/android/tools/r8/internal/av;->d:Z

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of p2, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p2, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Im0;->j0()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/av;->c:Z

    if-ne p1, p2, :cond_2

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 22
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 23
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/av;->d:Z

    if-nez p1, :cond_5

    .line 24
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 25
    iget-object v0, p2, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iG;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_5
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 28
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p1

    .line 29
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/av;->c:Z

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/cm0;->a(IZ)Lcom/android/tools/r8/internal/av;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 7
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/av;->c:Z

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
