.class public final LB0/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:J

.field public c:Lh1/k;

.field public d:Lh1/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LB0/b0;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LB0/b0;->b:J

    invoke-static {}, Lh1/k;->n()Lh1/k;

    move-result-object v0

    iput-object v0, p0, LB0/b0;->c:Lh1/k;

    invoke-static {}, Lh1/k;->n()Lh1/k;

    move-result-object v0

    iput-object v0, p0, LB0/b0;->d:Lh1/k;

    return-void
.end method


# virtual methods
.method public final a(J)LB0/b0;
    .locals 0

    iput-wide p1, p0, LB0/b0;->b:J

    return-object p0
.end method

.method public final b(Ljava/util/List;)LB0/b0;
    .locals 0

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lh1/k;->m(Ljava/util/Collection;)Lh1/k;

    move-result-object p1

    iput-object p1, p0, LB0/b0;->d:Lh1/k;

    return-object p0
.end method

.method public final c(Ljava/util/List;)LB0/b0;
    .locals 0

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lh1/k;->m(Ljava/util/Collection;)Lh1/k;

    move-result-object p1

    iput-object p1, p0, LB0/b0;->c:Lh1/k;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)LB0/b0;
    .locals 0

    iput-object p1, p0, LB0/b0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e()LB0/A;
    .locals 9

    iget-object v0, p0, LB0/b0;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-wide v0, p0, LB0/b0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, LB0/b0;->c:Lh1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB0/b0;->d:Lh1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either orderedTestCerts or orderedProdCerts must have at least one cert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, LB0/A;

    iget-object v3, p0, LB0/b0;->a:Ljava/lang/String;

    iget-wide v4, p0, LB0/b0;->b:J

    iget-object v6, p0, LB0/b0;->c:Lh1/k;

    iget-object v7, p0, LB0/b0;->d:Lh1/k;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, LB0/A;-><init>(Ljava/lang/String;JLh1/k;Lh1/k;LB0/c0;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "minimumStampedVersionNumber must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "packageName must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
