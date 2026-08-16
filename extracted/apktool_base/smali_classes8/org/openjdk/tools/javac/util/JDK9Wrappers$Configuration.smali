.class public final Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JDK9Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field private static configurationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static resolveAndBindMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final theRealConfiguration:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->theRealConfiguration:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lorg/openjdk/tools/javac/util/JDK9Wrappers$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->theRealConfiguration:Ljava/lang/Object;

    return-object p0
.end method

.method public static final getConfigurationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->configurationClass:Ljava/lang/Class;

    return-object v0
.end method

.method private static init()V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->configurationClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.lang.module.Configuration"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->configurationClass:Ljava/lang/Class;

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;->getModuleFinderClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->configurationClass:Ljava/lang/Class;

    const-string v2, "resolveAndBind"

    const-class v3, Ljava/util/Collection;

    filled-new-array {v0, v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->resolveAndBindMethod:Ljava/lang/reflect/Method;
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
.method public resolveAndBind(Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->resolveAndBindMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->theRealConfiguration:Ljava/lang/Object;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;->access$200(Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;->access$200(Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;-><init>(Ljava/lang/Object;)V
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
