.class public final LSe/g$c;
.super LSe/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, LSe/i;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSe/g$c;->d:J

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    iget-wide v0, p0, LSe/g$c;->d:J

    return-wide v0
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, LSe/g$c;->d:J

    return-void
.end method
