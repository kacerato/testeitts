.class public abstract Lcom/android/tools/r8/internal/A10;
.super Lcom/android/tools/r8/internal/Wl0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Wl0;-><init>(I)V

    iput-wide p2, p0, Lcom/android/tools/r8/internal/A10;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 1

    .line 5
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/internal/A10;->d:Z

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of p2, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 18
    iget-wide p1, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/A10;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 21
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 22
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/A10;->d:Z

    if-nez p1, :cond_5

    .line 23
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 24
    iget-object v0, p2, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iG;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_5
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Wl0;->a(ILcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Wl0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(J)Z
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Wl0;->b:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/jy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jy0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/A10;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
