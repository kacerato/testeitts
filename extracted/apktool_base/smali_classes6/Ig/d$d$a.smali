.class public LIg/d$d$a;
.super LIg/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIg/d$d;->e(I)LTg/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LIg/d$d;


# direct methods
.method public constructor <init>(LIg/d$d;LTg/x;)V
    .locals 0

    iput-object p1, p0, LIg/d$d$a;->d:LIg/d$d;

    invoke-direct {p0, p2}, LIg/e;-><init>(LTg/x;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, LIg/d$d$a;->d:LIg/d$d;

    iget-object p1, p1, LIg/d$d;->d:LIg/d;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LIg/d$d$a;->d:LIg/d$d;

    invoke-virtual {v0}, LIg/d$d;->d()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
