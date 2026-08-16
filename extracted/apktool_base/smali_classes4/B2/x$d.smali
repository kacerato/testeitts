.class public abstract enum LB2/x$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB2/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB2/x$d;",
        ">;",
        "LB2/x$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB2/x$d;

.field private static final BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum UNSAFE_BIG_ENDIAN:LB2/x$d;

.field public static final enum UNSAFE_LITTLE_ENDIAN:LB2/x$d;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB2/x$d$a;

    const-string v1, "UNSAFE_LITTLE_ENDIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB2/x$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/x$d;->UNSAFE_LITTLE_ENDIAN:LB2/x$d;

    new-instance v0, LB2/x$d$b;

    const-string v1, "UNSAFE_BIG_ENDIAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LB2/x$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/x$d;->UNSAFE_BIG_ENDIAN:LB2/x$d;

    invoke-static {}, LB2/x$d;->c()[LB2/x$d;

    move-result-object v0

    sput-object v0, LB2/x$d;->$VALUES:[LB2/x$d;

    invoke-static {}, LB2/x$d;->g()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, LB2/x$d;->theUnsafe:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    sput v3, LB2/x$d;->BYTE_ARRAY_BASE_OFFSET:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILB2/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LB2/x$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[LB2/x$d;
    .locals 2

    sget-object v0, LB2/x$d;->UNSAFE_LITTLE_ENDIAN:LB2/x$d;

    sget-object v1, LB2/x$d;->UNSAFE_BIG_ENDIAN:LB2/x$d;

    filled-new-array {v0, v1}, [LB2/x$d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()I
    .locals 1

    sget v0, LB2/x$d;->BYTE_ARRAY_BASE_OFFSET:I

    return v0
.end method

.method public static synthetic e()Lsun/misc/Unsafe;
    .locals 1

    sget-object v0, LB2/x$d;->theUnsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

.method public static g()Lsun/misc/Unsafe;
    .locals 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v0, LB2/x$d$c;

    invoke-direct {v0}, LB2/x$d$c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)LB2/x$d;
    .locals 1

    const-class v0, LB2/x$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/x$d;

    return-object p0
.end method

.method public static values()[LB2/x$d;
    .locals 1

    sget-object v0, LB2/x$d;->$VALUES:[LB2/x$d;

    invoke-virtual {v0}, [LB2/x$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/x$d;

    return-object v0
.end method
