.class public final Lcom/android/tools/r8/internal/B;
.super Lcom/android/tools/r8/internal/t;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "b"

    const-class v1, Lcom/android/tools/r8/internal/C;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v2, Lcom/android/tools/r8/internal/A;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/A;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    const-class v3, Lcom/android/tools/r8/internal/D;

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/tools/r8/internal/B;->c:J

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/tools/r8/internal/B;->b:J

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/tools/r8/internal/B;->d:J

    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/tools/r8/internal/B;->e:J

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/tools/r8/internal/B;->f:J

    sput-object v2, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/x;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/x;->b:Lcom/android/tools/r8/internal/x;

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/tools/r8/internal/B;->b:J

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/x;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/android/tools/r8/internal/B;->f:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/C;Ljava/lang/Thread;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/android/tools/r8/internal/B;->e:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/D;Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)Z
    .locals 6

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/tools/r8/internal/B;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ez0;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/tools/r8/internal/B;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ez0;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/C;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    sget-object v1, Lcom/android/tools/r8/internal/B;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/tools/r8/internal/B;->c:J

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/C;

    return-object p1
.end method
