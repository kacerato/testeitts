.class public Lcom/android/tools/r8/internal/t9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/t9;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/t9;->d:Z

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/internal/t9;

    iget-object p1, p1, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/t9;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->W0()C

    move-result p2

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type in const-class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    .line 14
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/t9;->d:Z

    .line 15
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p4, p5, p7}, Lcom/android/tools/r8/internal/t9;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/t9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 16
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 18
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/t9;
    .locals 0

    return-object p0
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/t9;->c:Lcom/android/tools/r8/graph/M2;

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
