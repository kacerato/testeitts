.class public final Lcom/android/tools/r8/internal/vT;
.super Lcom/android/tools/r8/internal/iT;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/f6;

.field public d:Lcom/android/tools/r8/internal/s8;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/I2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ZY;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    sget-boolean p2, Lcom/android/tools/r8/internal/vT;->e:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of p2, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;Z)V
    .locals 0

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vT;->d:Lcom/android/tools/r8/internal/s8;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->d:Lcom/android/tools/r8/internal/s8;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y5;Ljava/lang/Object;)V
    .locals 0

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/y5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;ILjava/lang/Object;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/l1;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/f6;->c()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 0

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;)V
    .locals 0

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/f6;->a(I)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 0

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/vT;->c:Lcom/android/tools/r8/graph/f6;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method
