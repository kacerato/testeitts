.class public Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JDK9Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Module"
.end annotation


# static fields
.field private static addExportsMethod:Ljava/lang/reflect/Method;

.field private static addUsesMethod:Ljava/lang/reflect/Method;

.field private static getModuleMethod:Ljava/lang/reflect/Method;

.field private static getUnnamedModuleMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final theRealModule:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->theRealModule:Ljava/lang/Object;

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->init()V

    return-void
.end method

.method public static getModule(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getModuleMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getUnnamedModule(Ljava/lang/ClassLoader;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getUnnamedModuleMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static init()V
    .locals 5

    const-class v0, Ljava/lang/Class;

    sget-object v1, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addExportsMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.lang.Module"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addUses"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addUsesMethod:Ljava/lang/reflect/Method;

    const-string v2, "addExports"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addExportsMethod:Ljava/lang/reflect/Method;

    const-string v1, "getModule"

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getModuleMethod:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "getUnnamedModule"

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getUnnamedModuleMethod:Ljava/lang/reflect/Method;
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
.method public addExports(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addExportsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->theRealModule:Ljava/lang/Object;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->theRealModule:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addUses(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addUsesMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->theRealModule:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
