.class public Lcom/lmax/disruptor/TimeoutException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/lmax/disruptor/TimeoutException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lmax/disruptor/TimeoutException;

    invoke-direct {v0}, Lcom/lmax/disruptor/TimeoutException;-><init>()V

    sput-object v0, Lcom/lmax/disruptor/TimeoutException;->INSTANCE:Lcom/lmax/disruptor/TimeoutException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
