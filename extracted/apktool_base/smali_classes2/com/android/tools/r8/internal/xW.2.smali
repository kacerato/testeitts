.class public final Lcom/android/tools/r8/internal/xW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lcom/android/tools/r8/internal/xW;

.field public static final b:Lcom/android/tools/r8/internal/kr0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/xW;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xW;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/xW;->a:Lcom/android/tools/r8/internal/xW;

    new-instance v0, Lcom/android/tools/r8/internal/Fy1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Fy1;-><init>()V

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/internal/kr0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/kr0;-><init>(Lcom/android/tools/r8/internal/ly;)V

    sput-object v1, Lcom/android/tools/r8/internal/xW;->b:Lcom/android/tools/r8/internal/kr0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 2

    const-class v0, Lcom/android/tools/r8/internal/yW;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    const-string v1, "load(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ze;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No MetadataExtensions instances found in the classpath. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
