.class public LVj/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVj/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVj/e;->get(I)LZi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:I

.field public final synthetic c:LVj/e;


# direct methods
.method public constructor <init>(LVj/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVj/e$a;->c:LVj/e;

    iput p2, p0, LVj/e$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, LVj/e$a;->a:I

    return-void
.end method


# virtual methods
.method public a(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, LVj/e$a;->a:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, LVj/e$a;->a:I

    div-int/lit8 v5, v4, 0x8

    const/16 v6, 0x8

    if-ge v3, v5, :cond_0

    invoke-static {p1, p2}, LVj/e;->b(J)V

    iget-object v4, p0, LVj/e$a;->c:LVj/e;

    invoke-static {v4}, LVj/e;->c(LVj/e;)Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    mul-int/lit8 v5, v3, 0x8

    array-length v6, v4

    invoke-static {v4, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v3, v4, 0x8

    mul-int/2addr v3, v6

    sub-int/2addr v4, v3

    if-eqz v4, :cond_1

    invoke-static {p1, p2}, LVj/e;->b(J)V

    iget-object p1, p0, LVj/e$a;->c:LVj/e;

    invoke-static {p1}, LVj/e;->c(LVj/e;)Ljava/security/SecureRandom;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p1

    array-length p2, p1

    sub-int/2addr v0, p2

    array-length p2, p1

    invoke-static {p1, v2, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method public b()[B
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, LVj/e$a;->a(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial entropy fetch interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LVj/e$a;->c:LVj/e;

    invoke-static {v0}, LVj/e;->a(LVj/e;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LVj/e$a;->b:I

    return v0
.end method
