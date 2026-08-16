.class public Lorg/openjdk/tools/sjavac/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/sjavac/Log$Level;
    }
.end annotation


# static fields
.field private static loggers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/openjdk/tools/sjavac/Log;",
            ">;"
        }
    .end annotation
.end field

.field private static stdOutErr:Lorg/openjdk/tools/sjavac/Log;


# instance fields
.field protected err:Ljava/io/PrintWriter;

.field protected level:Lorg/openjdk/tools/sjavac/Log$Level;

.field protected out:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/sjavac/Log;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/sjavac/Log;-><init>(Ljava/io/Writer;Ljava/io/Writer;)V

    sput-object v0, Lorg/openjdk/tools/sjavac/Log;->stdOutErr:Lorg/openjdk/tools/sjavac/Log;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/openjdk/tools/sjavac/Log;->loggers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/io/Writer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->INFO:Lorg/openjdk/tools/sjavac/Log$Level;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/Log;->level:Lorg/openjdk/tools/sjavac/Log$Level;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_0
    iput-object v2, p0, Lorg/openjdk/tools/sjavac/Log;->out:Ljava/io/PrintWriter;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_1
    iput-object v1, p0, Lorg/openjdk/tools/sjavac/Log;->err:Ljava/io/PrintWriter;

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->DEBUG:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->DEBUG:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->ERROR:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->ERROR:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static get()Lorg/openjdk/tools/sjavac/Log;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log;->loggers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/Log;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/sjavac/Log;->stdOutErr:Lorg/openjdk/tools/sjavac/Log;

    :goto_0
    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->INFO:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static isDebugging()Z
    .locals 2

    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/sjavac/Log$Level;->DEBUG:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/Log;->isLevelLogged(Lorg/openjdk/tools/sjavac/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public static log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/tools/sjavac/Log;->printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log;->loggers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setLogLevel(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log$Level;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Log$Level;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->setLogLevel(Lorg/openjdk/tools/sjavac/Log$Level;)V

    return-void
.end method

.method public static setLogLevel(Lorg/openjdk/tools/sjavac/Log$Level;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v0

    iput-object p0, v0, Lorg/openjdk/tools/sjavac/Log;->level:Lorg/openjdk/tools/sjavac/Log$Level;

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->TRACE:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->WARN:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isLevelLogged(Lorg/openjdk/tools/sjavac/Log$Level;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Log;->level:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Log;->isLevelLogged(Lorg/openjdk/tools/sjavac/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->WARN:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/Log;->err:Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/Log;->out:Ljava/io/PrintWriter;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
