.class public final Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JDK9Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JmodFile"
.end annotation


# static fields
.field public static final JMOD_FILE_CLASSNAME:Ljava/lang/String; = "jdk.internal.jmod.JmodFile"

.field private static checkMagicMethod:Ljava/lang/reflect/Method;

.field private static jmodFileClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


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

.method public static checkMagic(Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->init()V

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->checkMagicMethod:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static init()V
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->jmodFileClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "jdk.internal.jmod.JmodFile"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->jmodFileClass:Ljava/lang/Class;

    const-string v1, "checkMagic"

    const-class v2, Ljava/nio/file/Path;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->checkMagicMethod:Ljava/lang/reflect/Method;
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
