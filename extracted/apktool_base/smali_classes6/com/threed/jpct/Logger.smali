.class public Lcom/threed/jpct/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x0

.field private static final HEAD:[Ljava/lang/String;

.field public static final LL_DEBUG:I = 0x3

.field public static final LL_ERRORS_AND_WARNINGS:I = 0x1

.field public static final LL_ONLY_ERRORS:I = 0x0

.field public static final LL_VERBOSE:I = 0x2

.field public static final MESSAGE:I = 0x2

.field public static final ON_ERROR_EXIT:I = 0x1

.field public static final ON_ERROR_RESUME_NEXT:I = 0x0

.field public static final ON_ERROR_THROW_EXCEPTION:I = 0x2

.field public static final WARNING:I = 0x1

.field private static logLevel:I = 0x2

.field private static mode:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WARNING: "

    const-string v1, "MESSAGE: "

    const-string v2, "ERROR: "

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/Logger;->HEAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lcom/threed/jpct/Logger;->logLevel:I

    return v0
.end method

.method public static getWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Lcom/threed/jpct/Logger$1;

    invoke-direct {v0}, Lcom/threed/jpct/Logger$1;-><init>()V

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 2

    sget v0, Lcom/threed/jpct/Logger;->logLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 4

    .line 4
    sget v0, Lcom/threed/jpct/Logger;->logLevel:I

    if-gt p1, v0, :cond_5

    const/4 v0, 0x3

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/Logger;->HEAD:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_2
    const-string v1, "jPCT-AE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    .line 7
    sget p1, Lcom/threed/jpct/Logger;->mode:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/16 p0, -0x63

    .line 8
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_3
    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;I)V
    .locals 0

    .line 3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lcom/threed/jpct/Logger;->logLevel:I

    return-void
.end method

.method public static setOnError(I)V
    .locals 0

    sput p0, Lcom/threed/jpct/Logger;->mode:I

    return-void
.end method
