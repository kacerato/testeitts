.class public final Lcom/google/common/util/concurrent/ServiceManager$f$d;
.super Lcom/google/common/util/concurrent/f0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/ServiceManager$f;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f$d;->e:Lcom/google/common/util/concurrent/ServiceManager$f;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/f0$a;-><init>(Lcom/google/common/util/concurrent/f0;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3
    .annotation build LJ2/a;
        value = "ServiceManagerState.this.monitor"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f$d;->e:Lcom/google/common/util/concurrent/ServiceManager$f;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-interface {v0, v1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f$d;->e:Lcom/google/common/util/concurrent/ServiceManager$f;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    sget-object v2, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    invoke-interface {v1, v2}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f$d;->e:Lcom/google/common/util/concurrent/ServiceManager$f;

    iget v1, v1, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
