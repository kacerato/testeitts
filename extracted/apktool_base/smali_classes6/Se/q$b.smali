.class public LSe/q$b;
.super LSe/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, LSe/q$f;-><init>()V

    iput-object p1, p0, LSe/q$b;->b:Ljava/lang/Runnable;

    iput-wide p2, p0, LSe/q$b;->c:J

    iput-object p4, p0, LSe/q$b;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public b(LBe/J$c;LBe/f;)LDe/c;
    .locals 3

    new-instance v0, LSe/q$d;

    iget-object v1, p0, LSe/q$b;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, LSe/q$d;-><init>(Ljava/lang/Runnable;LBe/f;)V

    iget-wide v1, p0, LSe/q$b;->c:J

    iget-object p2, p0, LSe/q$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p2}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    return-object p1
.end method
