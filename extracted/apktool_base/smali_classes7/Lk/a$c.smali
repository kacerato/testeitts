.class public LLk/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lyk/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lyk/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLk/a$c;->a:Lyk/c;

    if-nez v0, :cond_0

    sget-object v0, LLk/a;->N:Lyk/f$b;

    const-string v1, "signedData"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyk/f$b;->t(Z)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    iput-object v0, p0, LLk/a$c;->a:Lyk/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LLk/a$c;->a:Lyk/c;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
