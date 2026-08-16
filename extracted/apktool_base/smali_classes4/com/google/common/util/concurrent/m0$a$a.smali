.class public Lcom/google/common/util/concurrent/m0$a$a;
.super Lcom/google/common/util/concurrent/m0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/m0$a;->a()Lcom/google/common/util/concurrent/m0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lw2/O;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m0$a;-><init>()V

    invoke-static {}, Lw2/O;->c()Lw2/O;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/m0$a$a;->a:Lw2/O;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/m0$a$a;->a:Lw2/O;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/H0;->k(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method
