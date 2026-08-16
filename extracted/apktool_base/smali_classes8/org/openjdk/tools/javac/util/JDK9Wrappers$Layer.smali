.class public final Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JDK9Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Layer"
.end annotation


# static fields
.field private static bootMethod:Ljava/lang/reflect/Method;

.field private static configurationMethod:Ljava/lang/reflect/Method;

.field private static defineModulesWithOneLoaderMethod:Ljava/lang/reflect/Method;

.field private static layerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final theRealLayer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->theRealLayer:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->theRealLayer:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->layerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static boot()Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->bootMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static init()V
    .locals 5

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->layerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.lang.ModuleLayer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->layerClass:Ljava/lang/Class;

    const-string v1, "boot"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->bootMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->layerClass:Ljava/lang/Class;

    const-string v1, "defineModulesWithOneLoader"

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->getConfigurationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/ClassLoader;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->defineModulesWithOneLoaderMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->layerClass:Ljava/lang/Class;

    const-string v1, "configuration"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->configurationMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public configuration()Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->configurationMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->theRealLayer:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;-><init>(Ljava/lang/Object;Lorg/openjdk/tools/javac/util/JDK9Wrappers$1;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public defineModulesWithOneLoader(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;Ljava/lang/ClassLoader;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->defineModulesWithOneLoaderMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->theRealLayer:Ljava/lang/Object;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->access$400(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    new-instance p2, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
