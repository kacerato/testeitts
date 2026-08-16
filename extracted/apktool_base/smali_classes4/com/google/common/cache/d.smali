.class public final Lcom/google/common/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/d$e;,
        Lcom/google/common/cache/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final q:I = 0x10

.field public static final r:I = 0x4

.field public static final s:I = 0x0

.field public static final t:I = 0x0

.field public static final u:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lcom/google/common/cache/f;

.field public static final w:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lw2/U;

.field public static final y:Ljava/util/logging/Logger;

.field public static final z:I = -0x1


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:Lcom/google/common/cache/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/x<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public g:Lcom/google/common/cache/k$t;

.field public h:Lcom/google/common/cache/k$t;

.field public i:J

.field public j:J

.field public k:J

.field public l:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public o:Lw2/U;

.field public p:Lw2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/Q<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/common/cache/d$a;

    invoke-direct {v0}, Lcom/google/common/cache/d$a;-><init>()V

    invoke-static {v0}, Lw2/S;->d(Ljava/lang/Object;)Lw2/Q;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->u:Lw2/Q;

    new-instance v0, Lcom/google/common/cache/f;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/f;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/d;->v:Lcom/google/common/cache/f;

    new-instance v0, Lcom/google/common/cache/d$b;

    invoke-direct {v0}, Lcom/google/common/cache/d$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->w:Lw2/Q;

    new-instance v0, Lcom/google/common/cache/d$c;

    invoke-direct {v0}, Lcom/google/common/cache/d$c;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->x:Lw2/U;

    const-class v0, Lcom/google/common/cache/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->y:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/cache/d;->b:I

    iput v0, p0, Lcom/google/common/cache/d;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/cache/d;->d:J

    iput-wide v0, p0, Lcom/google/common/cache/d;->e:J

    iput-wide v0, p0, Lcom/google/common/cache/d;->i:J

    iput-wide v0, p0, Lcom/google/common/cache/d;->j:J

    iput-wide v0, p0, Lcom/google/common/cache/d;->k:J

    sget-object v0, Lcom/google/common/cache/d;->u:Lw2/Q;

    iput-object v0, p0, Lcom/google/common/cache/d;->p:Lw2/Q;

    return-void
.end method

.method public static D()Lcom/google/common/cache/d;
    .locals 1
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/d;

    invoke-direct {v0}, Lcom/google/common/cache/d;-><init>()V

    return-object v0
.end method

.method public static h(Lcom/google/common/cache/e;)Lcom/google/common/cache/d;
    .locals 0
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/e;",
            ")",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/e;->f()Lcom/google/common/cache/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/cache/d;->A()Lcom/google/common/cache/d;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lcom/google/common/cache/d;
    .locals 0
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lcom/google/common/cache/e;->e(Ljava/lang/String;)Lcom/google/common/cache/e;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/cache/d;->h(Lcom/google/common/cache/e;)Lcom/google/common/cache/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    return-object p0
.end method

.method public B(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v4, v7, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    move v5, v6

    :cond_3
    const-string v0, "maximum size must not be negative"

    invoke-static {v5, v0}, Lw2/H;->e(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/common/cache/d;->d:J

    return-object p0
.end method

.method public C(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v4, v7, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    move v5, v6

    :cond_2
    const-string v0, "maximum weight must not be negative"

    invoke-static {v5, v0}, Lw2/H;->e(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/common/cache/d;->e:J

    return-object p0
.end method

.method public E()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/d;->w:Lw2/Q;

    iput-object v0, p0, Lcom/google/common/cache/d;->p:Lw2/Q;

    return-object p0
.end method

.method public F(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "refresh was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    move v3, v4

    :cond_1
    const-string v0, "duration must be positive: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lw2/H;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->k:J

    return-object p0
.end method

.method public G(Lcom/google/common/cache/r;)Lcom/google/common/cache/d;
    .locals 1
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/r<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/r;

    iput-object p1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    return-object p0
.end method

.method public H(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$t;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$t;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/k$t;

    iput-object p1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$t;

    return-object p0
.end method

.method public I(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$t;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$t;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/k$t;

    iput-object p1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$t;

    return-object p0
.end method

.method public J()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/k$t;->SOFT:Lcom/google/common/cache/k$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public K(Lw2/U;)Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/U;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lw2/U;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/U;

    iput-object p1, p0, Lcom/google/common/cache/d;->o:Lw2/U;

    return-object p0
.end method

.method public L(Lw2/m;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lw2/m;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/m;

    iput-object p1, p0, Lcom/google/common/cache/d;->m:Lw2/m;

    return-object p0
.end method

.method public M()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->H(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    sget-object v0, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public O(Lcom/google/common/cache/x;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/x<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Lw2/H;->s0(ZLjava/lang/String;J)V

    :cond_2
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/x;

    iput-object p1, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    return-object p0
.end method

.method public a()Lcom/google/common/cache/c;
    .locals 1
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/c<",
            "TK1;TV1;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/d;->d()V

    invoke-virtual {p0}, Lcom/google/common/cache/d;->c()V

    new-instance v0, Lcom/google/common/cache/k$o;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$o;-><init>(Lcom/google/common/cache/d;)V

    return-object v0
.end method

.method public b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/j;
    .locals 1
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lcom/google/common/cache/j<",
            "TK1;TV1;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/d;->d()V

    new-instance v0, Lcom/google/common/cache/k$n;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/k$n;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lw2/H;->h0(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lw2/H;->h0(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/common/cache/d;->y:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(I)Lcom/google/common/cache/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v1, v4, v0}, Lw2/H;->n0(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/cache/d;->c:I

    return-object p0
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    move v3, v4

    :cond_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lw2/H;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->j:J

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v2, v5, v0, v1}, Lw2/H;->s0(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    move v3, v4

    :cond_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v3, v0, p1, p2, p3}, Lw2/H;->t(ZLjava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->i:J

    return-object p0
.end method

.method public j()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public k()J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public l()J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public m()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public n()Lw2/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lw2/m;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->o()Lcom/google/common/cache/k$t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/k$t;->b()Lw2/m;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/m;

    return-object v0
.end method

.method public o()Lcom/google/common/cache/k$t;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$t;

    sget-object v1, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/k$t;

    return-object v0
.end method

.method public p()J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    :goto_0
    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method public q()J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public r()Lcom/google/common/cache/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/r<",
            "TK1;TV1;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    sget-object v1, Lcom/google/common/cache/d$d;->INSTANCE:Lcom/google/common/cache/d$d;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/r;

    return-object v0
.end method

.method public s()Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/Q<",
            "+",
            "Lcom/google/common/cache/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->p:Lw2/Q;

    return-object v0
.end method

.method public t(Z)Lw2/U;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lw2/U;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lw2/U;->b()Lw2/U;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/cache/d;->x:Lw2/U;

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/d;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    :cond_0
    iget v1, p0, Lcom/google/common/cache/d;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    :cond_1
    iget-wide v1, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v5, "maximumSize"

    invoke-virtual {v0, v5, v1, v2}, Lw2/z$b;->e(Ljava/lang/String;J)Lw2/z$b;

    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v5, "maximumWeight"

    invoke-virtual {v0, v5, v1, v2}, Lw2/z$b;->e(Ljava/lang/String;J)Lw2/z$b;

    :cond_3
    iget-wide v1, p0, Lcom/google/common/cache/d;->i:J

    cmp-long v5, v1, v3

    const-string v6, "ns"

    const/16 v7, 0x16

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_5
    iget-object v1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$t;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$t;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/d;->l:Lw2/m;

    if-eqz v1, :cond_8

    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/d;->m:Lw2/m;

    if-eqz v1, :cond_9

    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    if-eqz v1, :cond_a

    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    :cond_a
    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lw2/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lw2/m;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->v()Lcom/google/common/cache/k$t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/k$t;->b()Lw2/m;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/m;

    return-object v0
.end method

.method public v()Lcom/google/common/cache/k$t;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$t;

    sget-object v1, Lcom/google/common/cache/k$t;->STRONG:Lcom/google/common/cache/k$t;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/k$t;

    return-object v0
.end method

.method public w()Lcom/google/common/cache/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/x<",
            "TK1;TV1;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/x;

    sget-object v1, Lcom/google/common/cache/d$e;->INSTANCE:Lcom/google/common/cache/d$e;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    return-object v0
.end method

.method public x(I)Lcom/google/common/cache/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/cache/d;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v1, v4, v0}, Lw2/H;->n0(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/cache/d;->b:I

    return-object p0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->p:Lw2/Q;

    sget-object v1, Lcom/google/common/cache/d;->w:Lw2/Q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z(Lw2/m;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lw2/m;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/m;

    iput-object p1, p0, Lcom/google/common/cache/d;->l:Lw2/m;

    return-object p0
.end method
