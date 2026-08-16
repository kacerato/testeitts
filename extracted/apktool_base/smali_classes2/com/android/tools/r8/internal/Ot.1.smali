.class public final Lcom/android/tools/r8/internal/Ot;
.super Lcom/android/tools/r8/internal/p;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/LQ;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Ot;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ot;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ot;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/p;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qg;ILcom/android/tools/r8/graph/proto/b;)V
    .locals 0

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    iget-object p3, p2, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    .line 15
    iget-object p3, p2, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 19
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :cond_0
    sget-boolean p0, Lcom/android/tools/r8/internal/Ot;->b:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/p;
    .locals 2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/jQ0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/jQ0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qg;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/internal/ZH;)V

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/p;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/LQ;
    .locals 0

    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
