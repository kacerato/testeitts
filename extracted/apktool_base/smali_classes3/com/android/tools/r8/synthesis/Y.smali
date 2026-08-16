.class public final Lcom/android/tools/r8/synthesis/Y;
.super Lcom/android/tools/r8/synthesis/o;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/k;


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/synthesis/o;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/a0;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v0, :cond_0

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    if-ne p1, p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p2, :cond_1

    return-object p0

    .line 13
    :cond_1
    new-instance p2, Lcom/android/tools/r8/synthesis/Y;

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 15
    invoke-direct {p2, v1, p1, v0}, Lcom/android/tools/r8/synthesis/Y;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    return-object p2
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/synthesis/t;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/synthesis/Y;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/synthesis/X;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/X;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H2;)V

    return-object v0
.end method
