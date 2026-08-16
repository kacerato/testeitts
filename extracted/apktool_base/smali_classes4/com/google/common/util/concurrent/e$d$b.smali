.class public final Lcom/google/common/util/concurrent/e$d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/util/concurrent/e$d$b;->a:J

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$d$b;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/e$d$b;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$d$b;->b:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/e$d$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/util/concurrent/e$d$b;->a:J

    return-wide v0
.end method
