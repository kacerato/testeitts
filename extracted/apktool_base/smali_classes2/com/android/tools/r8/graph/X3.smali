.class public Lcom/android/tools/r8/graph/X3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Ljava/util/function/Predicate;

.field public final c:Ljava/util/function/Function;

.field public final d:Lcom/android/tools/r8/graph/H2;

.field public final e:Lcom/android/tools/r8/graph/H3$c;

.field public final f:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/u1;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Lcom/android/tools/r8/graph/H2;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/graph/X3;->a:Lcom/android/tools/r8/graph/u1;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/graph/X3;->b:Ljava/util/function/Predicate;

    .line 9
    iput-object p3, p0, Lcom/android/tools/r8/graph/X3;->c:Ljava/util/function/Function;

    .line 10
    iput-object p4, p0, Lcom/android/tools/r8/graph/X3;->d:Lcom/android/tools/r8/graph/H2;

    .line 11
    iput-object p5, p0, Lcom/android/tools/r8/graph/X3;->f:Ljava/util/function/Predicate;

    .line 12
    new-instance p2, Lcom/android/tools/r8/graph/H3$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 13
    sget-object p3, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    .line 14
    sget-object p4, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    const/4 p5, 0x0

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    .line 15
    iput-object p2, p0, Lcom/android/tools/r8/graph/X3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/Sb;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/Sb;-><init>(Lcom/android/tools/r8/shaking/i;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/android/tools/r8/graph/Tb;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/graph/Tb;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/X3;-><init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->i:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/W3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/X3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/W3;-><init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/u1;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/W3;->c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;
    .locals 2

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/W3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/X3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/W3;-><init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/u1;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H3$g;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    :cond_0
    return-object p1
.end method
