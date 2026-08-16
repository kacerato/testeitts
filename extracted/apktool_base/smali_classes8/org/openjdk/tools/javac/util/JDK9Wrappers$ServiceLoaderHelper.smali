.class public final Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JDK9Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceLoaderHelper"
.end annotation


# static fields
.field private static loadMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;->loadMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/ServiceLoader;

    const-string v2, "load"

    const-class v3, Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;->loadMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public static load(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;->loadMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->access$000(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ServiceLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
