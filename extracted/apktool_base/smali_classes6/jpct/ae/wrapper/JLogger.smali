.class public Ljpct/ae/wrapper/JLogger;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctLogger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Logger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final DEBUG()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final LL_DEBUG()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final LL_ERRORS_AND_WARNINGS()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final LL_ONLY_ERRORS()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final LL_VERBOSE()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final MESSAGE()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final ON_ERROR_EXIT()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final ON_ERROR_RESUME_NEXT()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final ON_ERROR_THROW_EXCEPTION()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Logger;

    invoke-direct {v0}, Lcom/threed/jpct/Logger;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JLogger;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getLogLevel()I
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;I)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public log2(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Logger;->setLogLevel(I)V

    return-void
.end method

.method public setOnError(I)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Logger;->setOnError(I)V

    return-void
.end method
