.class public final LSe/h;
.super LBe/J;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "RxNewThreadScheduler"

.field public static final e:LSe/k;

.field public static final f:Ljava/lang/String; = "rx2.newthread-priority"


# instance fields
.field public final c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.newthread-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, LSe/k;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, LSe/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, LSe/h;->e:LSe/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LSe/h;->e:LSe/k;

    invoke-direct {p0, v0}, LSe/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LBe/J;-><init>()V

    .line 3
    iput-object p1, p0, LSe/h;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 2
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/i;

    iget-object v1, p0, LSe/h;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, LSe/i;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
