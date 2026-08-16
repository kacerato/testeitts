.class public final LD0/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg1/t;->a()Lg1/q;

    move-result-object v0

    new-instance v1, LU0/c;

    const-string v2, "GAC_Transform"

    invoke-direct {v1, v2}, LU0/c;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lg1/q;->c(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LD0/w0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, LD0/w0;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
