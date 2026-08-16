.class public final Lcom/google/common/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/e$l;,
        Lcom/google/common/cache/e$o;,
        Lcom/google/common/cache/e$b;,
        Lcom/google/common/cache/e$d;,
        Lcom/google/common/cache/e$k;,
        Lcom/google/common/cache/e$n;,
        Lcom/google/common/cache/e$g;,
        Lcom/google/common/cache/e$c;,
        Lcom/google/common/cache/e$j;,
        Lcom/google/common/cache/e$i;,
        Lcom/google/common/cache/e$e;,
        Lcom/google/common/cache/e$h;,
        Lcom/google/common/cache/e$f;,
        Lcom/google/common/cache/e$m;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final o:Lw2/M;

.field public static final p:Lw2/M;

.field public static final q:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/e$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public b:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public c:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public e:Lcom/google/common/cache/k$t;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public f:Lcom/google/common/cache/k$t;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public g:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public h:J
    .annotation build Lv2/d;
    .end annotation
.end field

.field public i:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public j:J
    .annotation build Lv2/d;
    .end annotation
.end field

.field public k:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public l:J
    .annotation build Lv2/d;
    .end annotation
.end field

.field public m:Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2c

    invoke-static {v0}, Lw2/M;->h(C)Lw2/M;

    move-result-object v0

    invoke-virtual {v0}, Lw2/M;->q()Lw2/M;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->o:Lw2/M;

    const/16 v0, 0x3d

    invoke-static {v0}, Lw2/M;->h(C)Lw2/M;

    move-result-object v0

    invoke-virtual {v0}, Lw2/M;->q()Lw2/M;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->p:Lw2/M;

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$e;

    invoke-direct {v1}, Lcom/google/common/cache/e$e;-><init>()V

    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$i;

    invoke-direct {v1}, Lcom/google/common/cache/e$i;-><init>()V

    const-string v2, "maximumSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$j;

    invoke-direct {v1}, Lcom/google/common/cache/e$j;-><init>()V

    const-string v2, "maximumWeight"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$c;

    invoke-direct {v1}, Lcom/google/common/cache/e$c;-><init>()V

    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$g;

    sget-object v2, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    invoke-direct {v1, v2}, Lcom/google/common/cache/e$g;-><init>(Lcom/google/common/cache/k$t;)V

    const-string v3, "weakKeys"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$n;

    sget-object v3, Lcom/google/common/cache/k$t;->SOFT:Lcom/google/common/cache/k$t;

    invoke-direct {v1, v3}, Lcom/google/common/cache/e$n;-><init>(Lcom/google/common/cache/k$t;)V

    const-string v3, "softValues"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$n;

    invoke-direct {v1, v2}, Lcom/google/common/cache/e$n;-><init>(Lcom/google/common/cache/k$t;)V

    const-string v2, "weakValues"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$k;

    invoke-direct {v1}, Lcom/google/common/cache/e$k;-><init>()V

    const-string v2, "recordStats"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$b;

    invoke-direct {v1}, Lcom/google/common/cache/e$b;-><init>()V

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$o;

    invoke-direct {v1}, Lcom/google/common/cache/e$o;-><init>()V

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$l;

    invoke-direct {v1}, Lcom/google/common/cache/e$l;-><init>()V

    const-string v2, "refreshAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$l;

    invoke-direct {v1}, Lcom/google/common/cache/e$l;-><init>()V

    const-string v2, "refreshInterval"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->q:Lcom/google/common/collect/i1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/e;->n:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/cache/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/cache/e;
    .locals 1

    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/e;->e(Ljava/lang/String;)Lcom/google/common/cache/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 0
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/common/cache/e;
    .locals 7

    new-instance v0, Lcom/google/common/cache/e;

    invoke-direct {v0, p0}, Lcom/google/common/cache/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/common/cache/e;->o:Lw2/M;

    invoke-virtual {v1, p0}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/cache/e;->p:Lw2/M;

    invoke-virtual {v2, v1}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "blank key-value pair"

    invoke-static {v3, v5}, Lw2/H;->e(ZLjava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_1
    const-string v5, "key-value pair %s with more than one equals sign"

    invoke-static {v3, v5, v1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/google/common/cache/e;->q:Lcom/google/common/collect/i1;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/e$m;

    if-eqz v3, :cond_1

    move v6, v4

    :cond_1
    const-string v5, "unknown key %s"

    invoke-static {v6, v5, v1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/cache/e$m;->a(Lcom/google/common/cache/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/cache/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/common/cache/e;

    iget-object v1, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/k$t;

    iget-object v3, p1, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/k$t;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/k$t;

    iget-object v3, p1, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/k$t;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->h:J

    iget-object v1, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->h:J

    iget-object v5, p1, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->j:J

    iget-object v1, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->j:J

    iget-object v5, p1, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->l:J

    iget-object v1, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->l:J

    iget-object p1, p1, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, p1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lcom/google/common/cache/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/cache/d;->D()Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->x(I)Lcom/google/common/cache/d;

    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->B(J)Lcom/google/common/cache/d;

    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->C(J)Lcom/google/common/cache/d;

    :cond_2
    iget-object v1, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->e(I)Lcom/google/common/cache/d;

    :cond_3
    iget-object v1, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/k$t;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    sget-object v3, Lcom/google/common/cache/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/google/common/cache/d;->M()Lcom/google/common/cache/d;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/k$t;

    if-eqz v1, :cond_8

    sget-object v3, Lcom/google/common/cache/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/google/common/cache/d;->J()Lcom/google/common/cache/d;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {v0}, Lcom/google/common/cache/d;->N()Lcom/google/common/cache/d;

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/common/cache/d;->E()Lcom/google/common/cache/d;

    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_a

    iget-wide v2, p0, Lcom/google/common/cache/e;->h:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_a
    iget-object v1, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_b

    iget-wide v2, p0, Lcom/google/common/cache/e;->j:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_b
    iget-object v1, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_c

    iget-wide v2, p0, Lcom/google/common/cache/e;->l:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->F(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_c
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 12

    iget-object v0, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/k$t;

    iget-object v5, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/k$t;

    iget-object v6, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    iget-wide v7, p0, Lcom/google/common/cache/e;->h:J

    iget-object v9, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v8, v9}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/common/cache/e;->j:J

    iget-object v10, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v10}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/common/cache/e;->l:J

    iget-object v11, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    invoke-static {v9, v10, v11}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
