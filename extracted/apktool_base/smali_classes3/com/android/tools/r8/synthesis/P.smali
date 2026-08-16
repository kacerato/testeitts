.class public final Lcom/android/tools/r8/synthesis/P;
.super Lcom/android/tools/r8/synthesis/a0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/k;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/a0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/a0;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 10
    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    sget-boolean p1, Lcom/android/tools/r8/synthesis/P;->e:Z

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    sget-boolean p2, Lcom/android/tools/r8/synthesis/S;->a0:Z

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    if-ne p1, p2, :cond_2

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_2

    return-object p0

    .line 17
    :cond_2
    new-instance p2, Lcom/android/tools/r8/synthesis/P;

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 19
    invoke-direct {p2, v1, p1, v0}, Lcom/android/tools/r8/synthesis/P;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V

    return-object p2
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/synthesis/t;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/synthesis/P;->e:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    new-instance v0, Lcom/android/tools/r8/synthesis/O;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/O;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H5;)V

    :cond_3
    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/J2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final getHolder()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
