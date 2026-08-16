.class public Lcom/google/common/cache/k$p;
.super Lcom/google/common/cache/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/h<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final o:J = 0x1L


# instance fields
.field public final b:Lcom/google/common/cache/k$t;

.field public final c:Lcom/google/common/cache/k$t;

.field public final d:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lcom/google/common/cache/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/x<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public final l:Lw2/U;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final m:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field public transient n:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k$t;Lcom/google/common/cache/k$t;Lw2/m;Lw2/m;JJJLcom/google/common/cache/x;ILcom/google/common/cache/r;Lw2/U;Lcom/google/common/cache/CacheLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$t;",
            "Lcom/google/common/cache/k$t;",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lcom/google/common/cache/x<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/r<",
            "-TK;-TV;>;",
            "Lw2/U;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/h;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/cache/k$p;->b:Lcom/google/common/cache/k$t;

    .line 4
    iput-object p2, p0, Lcom/google/common/cache/k$p;->c:Lcom/google/common/cache/k$t;

    .line 5
    iput-object p3, p0, Lcom/google/common/cache/k$p;->d:Lw2/m;

    .line 6
    iput-object p4, p0, Lcom/google/common/cache/k$p;->e:Lw2/m;

    .line 7
    iput-wide p5, p0, Lcom/google/common/cache/k$p;->f:J

    .line 8
    iput-wide p7, p0, Lcom/google/common/cache/k$p;->g:J

    .line 9
    iput-wide p9, p0, Lcom/google/common/cache/k$p;->h:J

    .line 10
    iput-object p11, p0, Lcom/google/common/cache/k$p;->i:Lcom/google/common/cache/x;

    .line 11
    iput p12, p0, Lcom/google/common/cache/k$p;->j:I

    .line 12
    iput-object p13, p0, Lcom/google/common/cache/k$p;->k:Lcom/google/common/cache/r;

    .line 13
    invoke-static {}, Lw2/U;->b()Lw2/U;

    move-result-object p1

    if-eq p14, p1, :cond_0

    sget-object p1, Lcom/google/common/cache/d;->x:Lw2/U;

    if-ne p14, p1, :cond_1

    :cond_0
    const/4 p14, 0x0

    :cond_1
    iput-object p14, p0, Lcom/google/common/cache/k$p;->l:Lw2/U;

    .line 14
    iput-object p15, p0, Lcom/google/common/cache/k$p;->m:Lcom/google/common/cache/CacheLoader;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/common/cache/k;->h:Lcom/google/common/cache/k$t;

    iget-object v2, v0, Lcom/google/common/cache/k;->i:Lcom/google/common/cache/k$t;

    iget-object v3, v0, Lcom/google/common/cache/k;->f:Lw2/m;

    iget-object v4, v0, Lcom/google/common/cache/k;->g:Lw2/m;

    iget-wide v5, v0, Lcom/google/common/cache/k;->m:J

    iget-wide v7, v0, Lcom/google/common/cache/k;->l:J

    iget-wide v9, v0, Lcom/google/common/cache/k;->j:J

    iget-object v11, v0, Lcom/google/common/cache/k;->k:Lcom/google/common/cache/x;

    iget v12, v0, Lcom/google/common/cache/k;->e:I

    iget-object v13, v0, Lcom/google/common/cache/k;->p:Lcom/google/common/cache/r;

    iget-object v14, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    iget-object v15, v0, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k$t;Lcom/google/common/cache/k$t;Lw2/m;Lw2/m;JJJLcom/google/common/cache/x;ILcom/google/common/cache/r;Lw2/U;Lcom/google/common/cache/CacheLoader;)V

    return-void
.end method

.method private o0(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$p;->q0()Lcom/google/common/cache/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/cache/d;->a()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$p;->n:Lcom/google/common/cache/c;

    return-void
.end method

.method private p0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$p;->n:Lcom/google/common/cache/c;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k$p;->m0()Lcom/google/common/cache/c;

    move-result-object v0

    return-object v0
.end method

.method public m0()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$p;->n:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public q0()Lcom/google/common/cache/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/cache/d;->D()Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$p;->b:Lcom/google/common/cache/k$t;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->H(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$p;->c:Lcom/google/common/cache/k$t;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->I(Lcom/google/common/cache/k$t;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$p;->d:Lw2/m;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->z(Lw2/m;)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$p;->e:Lw2/m;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->L(Lw2/m;)Lcom/google/common/cache/d;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/k$p;->j:I

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->e(I)Lcom/google/common/cache/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$p;->k:Lcom/google/common/cache/r;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->G(Lcom/google/common/cache/r;)Lcom/google/common/cache/d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/cache/d;->a:Z

    iget-wide v1, p0, Lcom/google/common/cache/k$p;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/common/cache/d;->g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_0
    iget-wide v1, p0, Lcom/google/common/cache/k$p;->g:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/d;->f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/k$p;->i:Lcom/google/common/cache/x;

    sget-object v2, Lcom/google/common/cache/d$e;->INSTANCE:Lcom/google/common/cache/d$e;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->O(Lcom/google/common/cache/x;)Lcom/google/common/cache/d;

    iget-wide v1, p0, Lcom/google/common/cache/k$p;->h:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->C(J)Lcom/google/common/cache/d;

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/k$p;->h:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->B(J)Lcom/google/common/cache/d;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/k$p;->l:Lw2/U;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->K(Lw2/U;)Lcom/google/common/cache/d;

    :cond_4
    return-object v0
.end method
