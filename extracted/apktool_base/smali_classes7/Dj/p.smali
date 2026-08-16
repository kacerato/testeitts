.class public LDj/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDj/p$a;,
        LDj/p$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:LFk/s0;

.field public final c:LDj/p$b;


# direct methods
.method public constructor <init>(JLFk/s0;LDj/p$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LDj/p;->a:J

    iput-object p3, p0, LDj/p;->b:LFk/s0;

    iput-object p4, p0, LDj/p;->c:LDj/p$b;

    return-void
.end method

.method public constructor <init>(LFk/A0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LFk/A0;->x()LFk/p0;

    move-result-object v0

    invoke-virtual {v0}, LFk/x0;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LDj/p;->a:J

    invoke-virtual {p1}, LFk/A0;->v()LFk/i;

    move-result-object p1

    invoke-virtual {p1}, LFk/i;->v()LFk/s0;

    move-result-object v0

    iput-object v0, p0, LDj/p;->b:LFk/s0;

    invoke-static {}, LDj/p$b;->values()[LDj/p$b;

    move-result-object v0

    invoke-virtual {p1}, LFk/i;->u()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, LDj/p;->c:LDj/p$b;

    return-void
.end method

.method public static a(Ljava/util/Date;)LDj/p$a;
    .locals 1

    new-instance v0, LDj/p$a;

    invoke-direct {v0, p0}, LDj/p$a;-><init>(Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, LDj/p;->a:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public c()LFk/A0;
    .locals 6

    invoke-static {}, LFk/A0;->u()LFk/A0$a;

    move-result-object v0

    new-instance v1, LFk/p0;

    iget-wide v2, p0, LDj/p;->a:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, LFk/p0;-><init>(J)V

    invoke-virtual {v0, v1}, LFk/A0$a;->c(LFk/p0;)LFk/A0$a;

    move-result-object v0

    new-instance v1, LFk/i;

    iget-object v2, p0, LDj/p;->c:LDj/p$b;

    invoke-static {v2}, LDj/p$b;->b(LDj/p$b;)I

    move-result v2

    iget-object v3, p0, LDj/p;->b:LFk/s0;

    invoke-direct {v1, v2, v3}, LFk/i;-><init>(ILFk/s0;)V

    invoke-virtual {v0, v1}, LFk/A0$a;->b(LFk/i;)LFk/A0$a;

    move-result-object v0

    invoke-virtual {v0}, LFk/A0$a;->a()LFk/A0;

    move-result-object v0

    return-object v0
.end method
