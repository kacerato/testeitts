.class public final Ldg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldg/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x10

.field public static final c:I = 0x7000

.field public static final d:J = 0x8000L

.field public static final e:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldg/h;

    invoke-direct {v0}, Ldg/h;-><init>()V

    sput-object v0, Ldg/h;->a:Ldg/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ldg/h;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/time/e;)Ldg/c;
    .locals 17
    .param p1    # Lkotlin/time/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Ldg/a;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clock"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-static {v0}, Ldg/e;->h([B)V

    const/16 v2, 0x8

    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v2, v3, 0x8

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x7000

    :cond_0
    sget-object v3, Ldg/h;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lkotlin/time/e;->a()Lkotlin/time/q;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/time/q;->k()J

    move-result-wide v6

    const/16 v8, 0x10

    ushr-long v9, v4, v8

    cmp-long v11, v9, v6

    if-gez v11, :cond_1

    shl-long/2addr v6, v8

    int-to-long v8, v2

    or-long/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x1

    add-long v11, v4, v6

    const-wide/32 v13, 0x8000

    and-long/2addr v13, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_2

    add-long/2addr v9, v6

    shl-long v6, v9, v8

    int-to-long v8, v2

    or-long/2addr v6, v8

    goto :goto_0

    :cond_2
    move-wide v6, v11

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-static {v0, v1}, Ldg/e;->b([BI)J

    move-result-wide v0

    sget-object v2, Ldg/c;->d:Ldg/c$a;

    invoke-virtual {v2, v6, v7, v0, v1}, Ldg/c$a;->b(JJ)Ldg/c;

    move-result-object v0

    return-object v0
.end method
