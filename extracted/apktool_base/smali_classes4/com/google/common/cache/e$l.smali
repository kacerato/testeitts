.class public Lcom/google/common/cache/e$l;
.super Lcom/google/common/cache/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/cache/e;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    iget-object v0, p1, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite already set"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    iput-wide p2, p1, Lcom/google/common/cache/e;->l:J

    iput-object p4, p1, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
