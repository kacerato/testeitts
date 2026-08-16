.class public Lcom/android/tools/r8/internal/i9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/i9;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    .line 6
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/i9;->d:Z

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xc0

    return v0
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 4
    iget-object p3, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/internal/i9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i9;

    .line 2
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/i9;->d:Z

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 1

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/i9;->d:Z

    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p5, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 9
    invoke-virtual {p7, p1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc0

    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/i9;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ob;)V
    .locals 2

    .line 18
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/i9;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ob;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/i9;
    .locals 0

    return-object p0
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i9;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
