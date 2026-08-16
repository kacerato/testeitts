.class public final synthetic LU2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/p$c;


# instance fields
.field public final synthetic a:LU2/o;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(LU2/o;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/c;->a:LU2/o;

    iput-object p2, p0, LU2/c;->b:Ljava/lang/Runnable;

    iput-wide p3, p0, LU2/c;->c:J

    iput-object p5, p0, LU2/c;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    iget-object v0, p0, LU2/c;->a:LU2/o;

    iget-object v1, p0, LU2/c;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, LU2/c;->c:J

    iget-object v4, p0, LU2/c;->d:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, LU2/o;->m(LU2/o;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
