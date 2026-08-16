.class public final Lcom/android/tools/r8/androidapi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/androidapi/a$a;

.field public final b:Lcom/android/tools/r8/internal/F2;

.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Ljava/util/Set;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a$a;Lcom/android/tools/r8/internal/hC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/androidapi/c;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/androidapi/c;->a:Lcom/android/tools/r8/androidapi/a$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    new-instance p2, Lcom/android/tools/r8/internal/F2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p2, p3, v0, v1}, Lcom/android/tools/r8/internal/F2;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/DiagnosticsHandler;)V

    iput-object p2, p0, Lcom/android/tools/r8/androidapi/c;->b:Lcom/android/tools/r8/internal/F2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "com.android.tools.r8.reportUnknownApiReferences"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/androidapi/c;->f:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a$a;)Lcom/android/tools/r8/androidapi/c;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/androidapi/c;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    :goto_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 7
    new-instance v1, Ls/e;

    invoke-direct {v1}, Ls/e;-><init>()V

    .line 8
    new-instance v2, Ls/f;

    invoke-direct {v2, v0}, Ls/f;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/bi;->a(Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 10
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/E2;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/H2;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/androidapi/c;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/androidapi/c;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a$a;Lcom/android/tools/r8/internal/hC;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;Z)Lcom/android/tools/r8/androidapi/f;
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/androidapi/c;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;Z)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    return-object p1

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    :cond_5
    if-nez p3, :cond_6

    .line 29
    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p3

    .line 32
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p3

    .line 33
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 36
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->d:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/u1$c;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 39
    iget-object p2, p0, Lcom/android/tools/r8/androidapi/c;->b:Lcom/android/tools/r8/internal/F2;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/D2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    if-nez p1, :cond_7

    .line 41
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1

    .line 43
    :cond_7
    iget-object p2, p0, Lcom/android/tools/r8/androidapi/c;->a:Lcom/android/tools/r8/androidapi/a$a;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    return-object p1

    .line 44
    :cond_8
    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->b:Lcom/android/tools/r8/internal/F2;

    .line 45
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls/b;

    invoke-direct {v0, p3}, Ls/b;-><init>(Lcom/android/tools/r8/internal/D2;)V

    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->b:Lcom/android/tools/r8/internal/F2;

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls/c;

    invoke-direct {v1, p3}, Ls/c;-><init>(Lcom/android/tools/r8/internal/D2;)V

    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->b:Lcom/android/tools/r8/internal/F2;

    .line 47
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ls/d;

    invoke-direct {v2, p3}, Ls/d;-><init>(Lcom/android/tools/r8/internal/D2;)V

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/C2;

    if-nez p3, :cond_a

    .line 49
    iget-boolean p3, p0, Lcom/android/tools/r8/androidapi/c;->f:Z

    if-eqz p3, :cond_9

    .line 50
    iget-object p3, p0, Lcom/android/tools/r8/androidapi/c;->e:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-object p2

    .line 51
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->a:Lcom/android/tools/r8/androidapi/a$a;

    iget-object p2, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/C2;->c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    return-object p1

    .line 52
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/androidapi/c;->c:Lcom/android/tools/r8/graph/y;

    .line 53
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-object p1
.end method
