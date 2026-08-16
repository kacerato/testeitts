.class public Lcom/lmax/disruptor/AlertException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/lmax/disruptor/AlertException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lmax/disruptor/AlertException;

    invoke-direct {v0}, Lcom/lmax/disruptor/AlertException;-><init>()V

    sput-object v0, Lcom/lmax/disruptor/AlertException;->INSTANCE:Lcom/lmax/disruptor/AlertException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
