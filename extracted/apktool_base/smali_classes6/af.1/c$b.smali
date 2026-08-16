.class public final Laf/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Laf/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public final d:Laf/c$a;

.field public final e:J


# direct methods
.method public constructor <init>(Laf/c$a;JLjava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Laf/c$b;->b:J

    iput-object p4, p0, Laf/c$b;->c:Ljava/lang/Runnable;

    iput-object p1, p0, Laf/c$b;->d:Laf/c$a;

    iput-wide p5, p0, Laf/c$b;->e:J

    return-void
.end method


# virtual methods
.method public a(Laf/c$b;)I
    .locals 5

    iget-wide v0, p0, Laf/c$b;->b:J

    iget-wide v2, p1, Laf/c$b;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Laf/c$b;->e:J

    iget-wide v2, p1, Laf/c$b;->e:J

    invoke-static {v0, v1, v2, v3}, LHe/b;->b(JJ)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v0, v1, v2, v3}, LHe/b;->b(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Laf/c$b;

    invoke-virtual {p0, p1}, Laf/c$b;->a(Laf/c$b;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Laf/c$b;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Laf/c$b;->c:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TimedRunnable(time = %d, run = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
