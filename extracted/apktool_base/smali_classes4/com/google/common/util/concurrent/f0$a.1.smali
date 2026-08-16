.class public abstract Lcom/google/common/util/concurrent/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/f0;
    .annotation build Lq3/i;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public c:I
    .annotation build LJ2/a;
        value = "monitor.lock"
    .end annotation
.end field

.field public d:Lcom/google/common/util/concurrent/f0$a;
    .annotation build LJ2/a;
        value = "monitor.lock"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/util/concurrent/f0$a;->c:I

    const-string v0, "monitor"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/f0;

    iput-object v0, p0, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    invoke-static {p1}, Lcom/google/common/util/concurrent/f0;->a(Lcom/google/common/util/concurrent/f0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method
