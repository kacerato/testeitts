.class public interface abstract Lcom/android/apksig/util/RunnablesExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

.field public static final SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/apksig/util/a;

    invoke-direct {v0}, Lcom/android/apksig/util/a;-><init>()V

    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    new-instance v0, Lcom/android/apksig/util/RunnablesExecutor$1;

    invoke-direct {v0}, Lcom/android/apksig/util/RunnablesExecutor$1;-><init>()V

    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/apksig/util/RunnablesProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/android/apksig/util/RunnablesExecutor;->lambda$static$0(Lcom/android/apksig/util/RunnablesProvider;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/android/apksig/util/RunnablesProvider;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/apksig/util/RunnablesProvider;->createRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/android/apksig/util/RunnablesProvider;)V
.end method
