.class public Lnn/t;
.super Lnn/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnn/t$b;
    }
.end annotation


# instance fields
.field public final a:Ljn/L;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnn/a;-><init>()V

    new-instance v0, Lnn/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnn/t$b;-><init>(Lnn/t$a;)V

    iput-object v0, p0, Lnn/t;->a:Ljn/L;

    return-void
.end method

.method public static synthetic d(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;Ljn/s;Ljn/G;J)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lnn/t;->h(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;Ljn/s;Ljn/G;J)V

    return-void
.end method

.method public static synthetic e(Lnn/t;Ljn/A;Lnn/m;[FLjava/lang/Float;)Ljn/U;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnn/t;->i(Ljn/A;Lnn/m;[FLjava/lang/Float;)Ljn/U;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;Ljn/s;Ljn/G;J)V
    .locals 0

    invoke-virtual {p0, p7, p8, p1}, Ljn/A;->A(J[F)Ljn/O;

    move-result-object p0

    invoke-virtual {p0}, Ljn/O;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ljn/O;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    cmpl-float p5, p1, p5

    if-lez p5, :cond_0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lnn/m;Lwn/p$b;Lnn/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "result",
            "es"
        }
    .end annotation

    iget v0, p1, Lnn/m;->d:F

    iget v1, p1, Lnn/m;->f:F

    iget v2, p1, Lnn/m;->c:F

    invoke-virtual {p0, p2, v0, v1, v2}, Lnn/t;->f(Lwn/p$b;FFF)Ljn/A;

    move-result-object p2

    new-instance v0, Lnn/s;

    invoke-direct {v0, p0, p2, p1}, Lnn/s;-><init>(Lnn/t;Ljn/A;Lnn/m;)V

    invoke-virtual {p0, p1, p3, v0}, Lnn/a;->b(Lnn/m;Lnn/e;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final f(Lwn/p$b;FFF)Ljn/A;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "agentRadius",
            "agentHeight",
            "agentClimb"
        }
    .end annotation

    new-instance v0, Ljn/x;

    invoke-direct {v0}, Ljn/x;-><init>()V

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget-object v1, v1, Lwn/k;->a:[I

    iput-object v1, v0, Ljn/x;->a:[I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget v1, v1, Lwn/k;->e:I

    iput v1, v0, Ljn/x;->b:I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget-object v1, v1, Lwn/k;->b:[I

    iput-object v1, v0, Ljn/x;->c:[I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget-object v1, v1, Lwn/k;->d:[I

    iput-object v1, v0, Ljn/x;->e:[I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget-object v1, v1, Lwn/k;->i:[I

    iput-object v1, v0, Ljn/x;->d:[I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget v1, v1, Lwn/k;->f:I

    iput v1, v0, Ljn/x;->f:I

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object v1

    iget v1, v1, Lwn/k;->g:I

    iput v1, v0, Ljn/x;->g:I

    invoke-virtual {p1}, Lwn/p$b;->d()Lwn/l;

    move-result-object v1

    iget-object v1, v1, Lwn/l;->a:[I

    iput-object v1, v0, Ljn/x;->h:[I

    invoke-virtual {p1}, Lwn/p$b;->d()Lwn/l;

    move-result-object v1

    iget-object v1, v1, Lwn/l;->b:[F

    iput-object v1, v0, Ljn/x;->i:[F

    invoke-virtual {p1}, Lwn/p$b;->d()Lwn/l;

    move-result-object v1

    iget v1, v1, Lwn/l;->e:I

    iput v1, v0, Ljn/x;->j:I

    invoke-virtual {p1}, Lwn/p$b;->d()Lwn/l;

    move-result-object v1

    iget-object v1, v1, Lwn/l;->c:[I

    iput-object v1, v0, Ljn/x;->k:[I

    invoke-virtual {p1}, Lwn/p$b;->d()Lwn/l;

    move-result-object v1

    iget v1, v1, Lwn/l;->f:I

    iput v1, v0, Ljn/x;->l:I

    iput p2, v0, Ljn/x;->A:F

    iput p3, v0, Ljn/x;->z:F

    iput p4, v0, Ljn/x;->B:F

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object p2

    iget-object p2, p2, Lwn/k;->j:[F

    iput-object p2, v0, Ljn/x;->x:[F

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object p2

    iget-object p2, p2, Lwn/k;->k:[F

    iput-object p2, v0, Ljn/x;->y:[F

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object p2

    iget p2, p2, Lwn/k;->l:F

    iput p2, v0, Ljn/x;->C:F

    invoke-virtual {p1}, Lwn/p$b;->c()Lwn/k;

    move-result-object p1

    iget p1, p1, Lwn/k;->m:F

    iput p1, v0, Ljn/x;->D:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Ljn/x;->E:Z

    new-instance p1, Ljn/A;

    new-instance p2, Ljn/v;

    invoke-static {v0}, Ljn/w;->d(Ljn/x;)Ljn/q;

    move-result-object p3

    iget p4, v0, Ljn/x;->g:I

    const/4 v0, 0x0

    invoke-direct {p2, p3, p4, v0}, Ljn/v;-><init>(Ljn/q;II)V

    invoke-direct {p1, p2}, Ljn/A;-><init>(Ljn/v;)V

    return-object p1
.end method

.method public final g(Ljn/A;[FFF)Ljn/U;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "navMeshQuery",
            "pt",
            "cs",
            "heightRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn/A;",
            "[FFF)",
            "Ljn/U<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v2, 0x2

    aput p3, v0, v2

    aget p3, p2, v1

    add-float v6, p3, p4

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p4, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lnn/t;->a:Ljn/L;

    new-instance v9, Lnn/r;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lnn/r;-><init>(Ljn/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p1, p2, v0, v8, v9}, Ljn/A;->M([F[FLjn/L;Ljn/I;)Ljn/Q;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljn/U;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-direct {p1, p2, p3}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljn/U;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aget p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic i(Ljn/A;Lnn/m;[FLjava/lang/Float;)Ljn/U;
    .locals 0

    iget p2, p2, Lnn/m;->a:F

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p0, p1, p3, p2, p4}, Lnn/t;->g(Ljn/A;[FFF)Ljn/U;

    move-result-object p1

    return-object p1
.end method
