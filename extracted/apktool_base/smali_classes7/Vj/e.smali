.class public LVj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVj/e;->a:Ljava/security/SecureRandom;

    iput-boolean p2, p0, LVj/e;->b:Z

    return-void
.end method

.method public static synthetic a(LVj/e;)Z
    .locals 0

    iget-boolean p0, p0, LVj/e;->b:Z

    return p0
.end method

.method public static synthetic b(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0, p1}, LVj/e;->d(J)V

    return-void
.end method

.method public static synthetic c(LVj/e;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, LVj/e;->a:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public static d(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)LZi/d;
    .locals 1

    new-instance v0, LVj/e$a;

    invoke-direct {v0, p0, p1}, LVj/e$a;-><init>(LVj/e;I)V

    return-object v0
.end method
