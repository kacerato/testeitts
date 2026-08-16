.class public final Lw2/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lv2/b;
    emulated = true
.end annotation

.annotation runtime Lw2/k;
.end annotation


# instance fields
.field public final a:Lw2/U;

.field public b:Z

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lw2/U;->b()Lw2/U;

    move-result-object v0

    iput-object v0, p0, Lw2/O;->a:Lw2/U;

    return-void
.end method

.method public constructor <init>(Lw2/U;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/U;

    iput-object p1, p0, Lw2/O;->a:Lw2/U;

    return-void
.end method

.method public static a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lw2/O$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "d"

    return-object p0

    :pswitch_1
    const-string p0, "h"

    return-object p0

    :pswitch_2
    const-string p0, "min"

    return-object p0

    :pswitch_3
    const-string p0, "s"

    return-object p0

    :pswitch_4
    const-string p0, "ms"

    return-object p0

    :pswitch_5
    const-string p0, "\u03bcs"

    return-object p0

    :pswitch_6
    const-string p0, "ns"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(J)Ljava/util/concurrent/TimeUnit;
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-lez p0, :cond_5

    return-object v0

    :cond_5
    return-object v1
.end method

.method public static c()Lw2/O;
    .locals 1

    new-instance v0, Lw2/O;

    invoke-direct {v0}, Lw2/O;-><init>()V

    invoke-virtual {v0}, Lw2/O;->k()Lw2/O;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lw2/U;)Lw2/O;
    .locals 1

    new-instance v0, Lw2/O;

    invoke-direct {v0, p0}, Lw2/O;-><init>(Lw2/U;)V

    invoke-virtual {v0}, Lw2/O;->k()Lw2/O;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lw2/O;
    .locals 1

    new-instance v0, Lw2/O;

    invoke-direct {v0}, Lw2/O;-><init>()V

    return-object v0
.end method

.method public static f(Lw2/U;)Lw2/O;
    .locals 1

    new-instance v0, Lw2/O;

    invoke-direct {v0, p0}, Lw2/O;-><init>(Lw2/U;)V

    return-object v0
.end method


# virtual methods
.method public g(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-virtual {p0}, Lw2/O;->h()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 4

    iget-boolean v0, p0, Lw2/O;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw2/O;->a:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lw2/O;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lw2/O;->c:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lw2/O;->c:J

    :goto_0
    return-wide v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lw2/O;->b:Z

    return v0
.end method

.method public j()Lw2/O;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw2/O;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw2/O;->b:Z

    return-object p0
.end method

.method public k()Lw2/O;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    iget-boolean v0, p0, Lw2/O;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lw2/O;->b:Z

    iget-object v0, p0, Lw2/O;->a:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lw2/O;->d:J

    return-object p0
.end method

.method public l()Lw2/O;
    .locals 6
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lw2/O;->a:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    iget-boolean v2, p0, Lw2/O;->b:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v2, v3}, Lw2/H;->h0(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lw2/O;->b:Z

    iget-wide v2, p0, Lw2/O;->c:J

    iget-wide v4, p0, Lw2/O;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lw2/O;->c:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lw2/O;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lw2/O;->b(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    long-to-double v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Lw2/G;->d(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lw2/O;->a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
