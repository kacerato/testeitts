.class public LDj/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDj/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LDj/p$a;->a:J

    return-void
.end method


# virtual methods
.method public a(I)LDj/p;
    .locals 4

    new-instance v0, LDj/p;

    iget-wide v1, p0, LDj/p$a;->a:J

    invoke-static {p1}, LFk/s0;->x(I)LFk/s0;

    move-result-object p1

    sget-object v3, LDj/p$b;->sixtyHours:LDj/p$b;

    invoke-direct {v0, v1, v2, p1, v3}, LDj/p;-><init>(JLFk/s0;LDj/p$b;)V

    return-object v0
.end method

.method public b(I)LDj/p;
    .locals 4

    new-instance v0, LDj/p;

    iget-wide v1, p0, LDj/p$a;->a:J

    invoke-static {p1}, LFk/s0;->x(I)LFk/s0;

    move-result-object p1

    sget-object v3, LDj/p$b;->years:LDj/p$b;

    invoke-direct {v0, v1, v2, p1, v3}, LDj/p;-><init>(JLFk/s0;LDj/p$b;)V

    return-object v0
.end method
