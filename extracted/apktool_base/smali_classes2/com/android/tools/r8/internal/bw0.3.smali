.class public abstract Lcom/android/tools/r8/internal/bw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/android/tools/r8/internal/aw0;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:J

.field public static final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/Wv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wv0;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/android/tools/r8/internal/bw0;->a:Lsun/misc/Unsafe;

    sget-object v2, Lcom/android/tools/r8/internal/u2;->a:Ljava/lang/Class;

    sput-object v2, Lcom/android/tools/r8/internal/bw0;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/tools/r8/internal/bw0;->d(Ljava/lang/Class;)Z

    move-result v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->d(Ljava/lang/Class;)Z

    move-result v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/u2;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/Yv0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Yv0;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/tools/r8/internal/Xv0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Xv0;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/Zv0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Zv0;-><init>(Lsun/misc/Unsafe;)V

    :goto_2
    sput-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    const/4 v1, 0x0

    if-nez v2, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/aw0;->b()Z

    move-result v3

    :goto_3
    sput-boolean v3, Lcom/android/tools/r8/internal/bw0;->d:Z

    if-nez v2, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/aw0;->a()Z

    move-result v3

    :goto_4
    sput-boolean v3, Lcom/android/tools/r8/internal/bw0;->e:Z

    const-class v3, [B

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/android/tools/r8/internal/bw0;->f:J

    const-class v3, [Z

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    const-class v3, [I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    const-class v3, [J

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    const-class v3, [F

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    const-class v3, [D

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    const-class v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->b(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/android/tools/r8/internal/bw0;->c(Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/tools/r8/internal/u2;->a()Z

    move-result v3

    const-class v4, Ljava/nio/Buffer;

    if-eqz v3, :cond_6

    const-string v3, "effectiveDirectAddress"

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-object v3, v0

    :goto_5
    if-eqz v3, :cond_6

    :goto_6
    move-object v0, v3

    goto :goto_8

    :cond_6
    const-string v3, "address"

    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-object v3, v0

    :goto_7
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7

    goto :goto_6

    :cond_7
    :goto_8
    if-eqz v0, :cond_9

    if-nez v2, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    goto :goto_a

    :cond_9
    :goto_9
    const-wide/16 v2, -0x1

    :goto_a
    sput-wide v2, Lcom/android/tools/r8/internal/bw0;->g:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    sput-boolean v1, Lcom/android/tools/r8/internal/bw0;->h:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/aw0;->b(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/bw0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/aw0;->b(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 5
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static b(Ljava/lang/Object;J)B
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 2
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/aw0;->b(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/aw0;->b(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 4
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static c(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/aw0;->b(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;)Z
    .locals 7

    const-class v0, [B

    invoke-static {}, Lcom/android/tools/r8/internal/u2;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/bw0;->b:Ljava/lang/Class;

    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v2
.end method
