.class public final Lcom/android/tools/r8/kotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/h0;


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vQ;

.field public final b:Lcom/android/tools/r8/kotlin/p0;

.field public final c:Lcom/android/tools/r8/kotlin/p0;

.field public final d:Lcom/android/tools/r8/kotlin/t0;

.field public final e:Lcom/android/tools/r8/internal/hC;

.field public final f:Lcom/android/tools/r8/kotlin/L;

.field public final g:Lcom/android/tools/r8/kotlin/N;

.field public final h:Lcom/android/tools/r8/kotlin/N;

.field public final i:Lcom/android/tools/r8/kotlin/N;

.field public final j:Lcom/android/tools/r8/kotlin/N;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/t0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/L;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/kotlin/a;->l:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/a;->b:Lcom/android/tools/r8/kotlin/p0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/a;->c:Lcom/android/tools/r8/kotlin/p0;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/a;->d:Lcom/android/tools/r8/kotlin/t0;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/a;->e:Lcom/android/tools/r8/internal/hC;

    iput-object p6, p0, Lcom/android/tools/r8/kotlin/a;->f:Lcom/android/tools/r8/kotlin/L;

    iput-object p7, p0, Lcom/android/tools/r8/kotlin/a;->g:Lcom/android/tools/r8/kotlin/N;

    iput-object p8, p0, Lcom/android/tools/r8/kotlin/a;->h:Lcom/android/tools/r8/kotlin/N;

    iput-object p9, p0, Lcom/android/tools/r8/kotlin/a;->i:Lcom/android/tools/r8/kotlin/N;

    iput-object p10, p0, Lcom/android/tools/r8/kotlin/a;->j:Lcom/android/tools/r8/kotlin/N;

    iput-object p11, p0, Lcom/android/tools/r8/kotlin/a;->k:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/a;
    .locals 13

    .line 7
    new-instance v12, Lcom/android/tools/r8/kotlin/a;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vQ;->d()Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vQ;->c()Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/vQ;->i:Lcom/android/tools/r8/internal/EQ;

    .line 11
    sget-object v1, Lcom/android/tools/r8/kotlin/t0;->d:Lcom/android/tools/r8/internal/Xe0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EQ;->a()Lcom/android/tools/r8/internal/yQ;

    move-result-object v4

    .line 13
    new-instance v5, Lcom/android/tools/r8/kotlin/t0;

    .line 14
    invoke-static {p1, p2, v4}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v4

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/EQ;->b()Lcom/android/tools/r8/internal/yQ;

    move-result-object v6

    invoke-static {p1, p2, v6}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v6

    invoke-direct {v5, v0, v4, v6}, Lcom/android/tools/r8/kotlin/t0;-><init>(Lcom/android/tools/r8/internal/EQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;)V

    move-object v4, v5

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vQ;->f:Ljava/util/ArrayList;

    .line 17
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/kotlin/q0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 18
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/CL;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 19
    :cond_1
    new-instance v1, Lcom/android/tools/r8/kotlin/L;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CL;->a()Ljava/lang/String;

    move-result-object v6

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/CL;->b:Ljava/lang/String;

    const/4 v7, 0x0

    .line 22
    invoke-static {v0, p1, v0, v7}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v0

    .line 23
    invoke-direct {v1, v0, v6}, Lcom/android/tools/r8/kotlin/L;-><init>(Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :goto_2
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v7

    .line 26
    invoke-static {p0}, Lcom/android/tools/r8/internal/BL;->c(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v8

    .line 28
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v9

    .line 30
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/XL;->f:Lcom/android/tools/r8/internal/OL;

    .line 32
    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;

    move-result-object v10

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/vQ;->h:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Lcom/android/tools/r8/kotlin/J1;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/kotlin/J1;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 35
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v11

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/tools/r8/kotlin/a;-><init>(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/t0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/L;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Lcom/android/tools/r8/kotlin/N;Ljava/util/List;)V

    return-object v12
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/p0;)Ljava/util/function/Consumer;
    .locals 1

    .line 139
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/b1;-><init>(Lcom/android/tools/r8/kotlin/p0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/q0;)Ljava/util/function/Consumer;
    .locals 1

    .line 138
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/X0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/X0;-><init>(Lcom/android/tools/r8/kotlin/q0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/CL;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/XL;->b:Lcom/android/tools/r8/internal/CL;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    .line 4
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/XL;->c:Lcom/android/tools/r8/internal/OL;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p0

    iput-object p1, p0, Lcom/android/tools/r8/internal/XL;->d:Lcom/android/tools/r8/internal/OL;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p0

    iput-object p1, p0, Lcom/android/tools/r8/internal/XL;->e:Lcom/android/tools/r8/internal/OL;

    return-void
.end method

.method public static d(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p0

    iput-object p1, p0, Lcom/android/tools/r8/internal/XL;->f:Lcom/android/tools/r8/internal/OL;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->b:Lcom/android/tools/r8/kotlin/p0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->c:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->d:Lcom/android/tools/r8/kotlin/t0;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/t0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->e:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/S1;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/S1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->k:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/kotlin/I1;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/I1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->f:Lcom/android/tools/r8/kotlin/L;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, v0, Lcom/android/tools/r8/kotlin/L;->a:Lcom/android/tools/r8/kotlin/s0;

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->g:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->h:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->i:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->j:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z
    .locals 7

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/vQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vQ;->b()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 40
    invoke-direct {v0, v2, v2, v2, v1}, Lcom/android/tools/r8/internal/vQ;-><init>(IIILjava/lang/String;)V

    .line 41
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    .line 43
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 44
    const-string v3, "<this>"

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v3, Lcom/android/tools/r8/internal/i5;->e:Lcom/android/tools/r8/internal/Y6;

    const/4 v4, 0x3

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 46
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 47
    sget-object v3, Lcom/android/tools/r8/internal/i5;->G:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x1f

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Ax0;

    .line 48
    const-string v6, "<set-?>"

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 50
    sget-object v3, Lcom/android/tools/r8/internal/i5;->H:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x20

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/HX;

    .line 51
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 53
    sget-object v3, Lcom/android/tools/r8/internal/i5;->I:Lcom/android/tools/r8/internal/pu;

    const/16 v4, 0x21

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/HV;

    .line 54
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 56
    sget-object v3, Lcom/android/tools/r8/internal/i5;->J:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x22

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 57
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 58
    sget-object v3, Lcom/android/tools/r8/internal/i5;->K:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x23

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 59
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 60
    sget-object v3, Lcom/android/tools/r8/internal/i5;->L:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x24

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 61
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 62
    sget-object v3, Lcom/android/tools/r8/internal/i5;->M:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x25

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 63
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 64
    sget-object v3, Lcom/android/tools/r8/internal/i5;->N:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x26

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 65
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 66
    sget-object v3, Lcom/android/tools/r8/internal/i5;->O:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x27

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 67
    aget-object v4, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 68
    sget-object v3, Lcom/android/tools/r8/internal/i5;->P:Lcom/android/tools/r8/internal/Y6;

    const/16 v4, 0x28

    aget-object v5, v1, v4

    invoke-virtual {v3, p1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    .line 69
    aget-object v1, v1, v4

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 70
    sget-object v1, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    .line 71
    sget-object v3, Lcom/android/tools/r8/internal/wL;->b:Lcom/android/tools/r8/internal/Y6;

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p1

    .line 72
    aget-object v1, v1, v2

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 73
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    .line 74
    iget-object p1, p1, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 75
    iget-object v1, v0, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 76
    invoke-static {p1, v1}, Lcom/android/tools/r8/kotlin/I;->a(Lcom/android/tools/r8/internal/wQ;Lcom/android/tools/r8/internal/wQ;)V

    .line 77
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    .line 78
    iget-object p1, p1, Lcom/android/tools/r8/internal/vQ;->e:Lcom/android/tools/r8/internal/wQ;

    if-eqz p1, :cond_0

    .line 79
    new-instance p1, Lcom/android/tools/r8/internal/wQ;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/wQ;-><init>()V

    .line 80
    iget-object v1, v0, Lcom/android/tools/r8/internal/vQ;->c:Lcom/android/tools/r8/internal/Y6;

    sget-object v3, Lcom/android/tools/r8/internal/vQ;->m:[Lcom/android/tools/r8/internal/XY;

    aget-object v2, v3, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 81
    iput-object p1, v0, Lcom/android/tools/r8/internal/vQ;->e:Lcom/android/tools/r8/internal/wQ;

    .line 82
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    .line 83
    iget-object v1, v1, Lcom/android/tools/r8/internal/vQ;->e:Lcom/android/tools/r8/internal/wQ;

    .line 84
    invoke-static {v1, p1}, Lcom/android/tools/r8/kotlin/I;->a(Lcom/android/tools/r8/internal/wQ;Lcom/android/tools/r8/internal/wQ;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/a;->b:Lcom/android/tools/r8/kotlin/p0;

    .line 86
    new-instance v1, Lcom/android/tools/r8/kotlin/H1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/H1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    new-instance v2, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 87
    invoke-static {p6, p1, v1, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    .line 88
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->c:Lcom/android/tools/r8/kotlin/p0;

    .line 89
    new-instance v2, Lcom/android/tools/r8/kotlin/O1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/O1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 90
    invoke-static {p6, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    .line 91
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->d:Lcom/android/tools/r8/kotlin/t0;

    .line 92
    new-instance v2, Lcom/android/tools/r8/kotlin/P1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/P1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    new-instance v3, Lcom/android/tools/r8/kotlin/d1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/d1;-><init>()V

    .line 93
    invoke-static {p6, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    .line 94
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->e:Lcom/android/tools/r8/internal/hC;

    .line 95
    iget-object v2, v0, Lcom/android/tools/r8/internal/vQ;->f:Ljava/util/ArrayList;

    .line 96
    new-instance v3, Lcom/android/tools/r8/kotlin/e1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/e1;-><init>()V

    .line 97
    invoke-static {p6, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    .line 98
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->k:Ljava/util/List;

    .line 99
    iget-object v2, v0, Lcom/android/tools/r8/internal/vQ;->h:Ljava/util/ArrayList;

    .line 100
    new-instance v3, Lcom/android/tools/r8/kotlin/K0;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/K0;-><init>()V

    .line 101
    invoke-static {p6, v1, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result v1

    or-int/2addr p1, v1

    .line 102
    iget-object v1, v0, Lcom/android/tools/r8/internal/vQ;->k:Ljava/util/ArrayList;

    .line 103
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    .line 104
    iget-object v2, v2, Lcom/android/tools/r8/internal/vQ;->k:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/a;->f:Lcom/android/tools/r8/kotlin/L;

    if-eqz v1, :cond_1

    .line 107
    new-instance v2, Lcom/android/tools/r8/kotlin/Q1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/Q1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    .line 108
    invoke-virtual {v1, v2, p2, p6}, Lcom/android/tools/r8/kotlin/L;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/a;->g:Lcom/android/tools/r8/kotlin/N;

    if-eqz p2, :cond_2

    .line 110
    new-instance v1, Lcom/android/tools/r8/kotlin/R1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/R1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    .line 111
    invoke-virtual {p2, v1, p3, p6}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 112
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/a;->h:Lcom/android/tools/r8/kotlin/N;

    if-eqz p2, :cond_3

    .line 113
    new-instance p3, Lcom/android/tools/r8/kotlin/K1;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/kotlin/K1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    .line 114
    invoke-virtual {p2, p3, p4, p6}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 115
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/a;->i:Lcom/android/tools/r8/kotlin/N;

    if-eqz p2, :cond_4

    .line 116
    new-instance p3, Lcom/android/tools/r8/kotlin/L1;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/kotlin/L1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    .line 117
    invoke-virtual {p2, p3, p5, p6}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 118
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/a;->j:Lcom/android/tools/r8/kotlin/N;

    new-instance p3, Lcom/android/tools/r8/kotlin/M1;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/kotlin/M1;-><init>(Lcom/android/tools/r8/internal/vQ;)V

    new-instance p4, Lcom/android/tools/r8/kotlin/N1;

    invoke-direct {p4}, Lcom/android/tools/r8/kotlin/N1;-><init>()V

    .line 119
    invoke-static {p6, p2, p3, p4}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/kotlin/a;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/a;->a:Lcom/android/tools/r8/internal/vQ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vQ;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KotlinPropertyInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
