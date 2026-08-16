.class public final Lcom/android/tools/r8/graph/v4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/TR;Lcom/android/tools/r8/internal/je;Lcom/android/tools/r8/internal/a80;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/graph/Yg;

    invoke-direct {v0, p4}, Lcom/android/tools/r8/graph/Yg;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/jd;->a(Ljava/util/function/Predicate;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jd;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/graph/v4;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/Zg;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Zg;-><init>()V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/jd;->a(Ljava/util/function/Predicate;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/jd;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p3

    if-eqz p2, :cond_3

    new-instance v0, Lcom/android/tools/r8/graph/ah;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ah;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/jd;->a(Ljava/util/function/Predicate;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/jd;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p2

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    :goto_2
    iget-boolean v0, p4, Lcom/android/tools/r8/internal/nJ;->T0:Z

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/android/tools/r8/graph/v4;->c:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/graph/v4;->a:Lcom/android/tools/r8/internal/nC;

    new-instance p1, Lcom/android/tools/r8/graph/bh;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/graph/bh;-><init>(Lcom/android/tools/r8/internal/nC;)V

    invoke-static {p2, p1, p4}, Lcom/android/tools/r8/graph/w4;->a(Lcom/android/tools/r8/internal/nC;Ljava/util/function/Function;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/v4;->b:Lcom/android/tools/r8/internal/nC;

    return-void

    :cond_4
    new-instance v0, Lcom/android/tools/r8/graph/ch;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ch;-><init>()V

    invoke-static {p3, v0, p4}, Lcom/android/tools/r8/graph/w4;->a(Lcom/android/tools/r8/internal/nC;Ljava/util/function/Function;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/nC;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/graph/v4;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v0, Lcom/android/tools/r8/graph/bh;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/bh;-><init>(Lcom/android/tools/r8/internal/nC;)V

    invoke-static {p2, v0, p4}, Lcom/android/tools/r8/graph/w4;->a(Lcom/android/tools/r8/internal/nC;Ljava/util/function/Function;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/nC;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/graph/v4;->b:Lcom/android/tools/r8/internal/nC;

    new-instance p2, Lcom/android/tools/r8/graph/dh;

    invoke-direct {p2, p0, p4, p1}, Lcom/android/tools/r8/graph/dh;-><init>(Lcom/android/tools/r8/graph/v4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/nC;)V

    invoke-static {p1, p2, p4}, Lcom/android/tools/r8/graph/w4;->a(Lcom/android/tools/r8/internal/nC;Ljava/util/function/Function;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/v4;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/v4;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/u2;

    .line 7
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/nJ;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/M2;)V

    return-object v0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/v4;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    return-object p1
.end method
