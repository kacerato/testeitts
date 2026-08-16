.class Lorg/openjdk/tools/sjavac/server/RequestHandler$1;
.super Lorg/openjdk/tools/sjavac/Log;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/sjavac/server/RequestHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/sjavac/server/RequestHandler;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/RequestHandler;Ljava/io/Writer;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;->this$0:Lorg/openjdk/tools/sjavac/server/RequestHandler;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/sjavac/Log;-><init>(Ljava/io/Writer;Ljava/io/Writer;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;->lambda$printLogMsg$0(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/sjavac/server/RequestHandler$1;Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;->lambda$printLogMsg$1(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$printLogMsg$0(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$printLogMsg$1(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/sjavac/Log;->printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isLevelLogged(Lorg/openjdk/tools/sjavac/Log$Level;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Util;->getLines(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/sjavac/server/a;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/sjavac/server/a;-><init>(Lorg/openjdk/tools/sjavac/Log$Level;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/sjavac/server/b;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/sjavac/server/b;-><init>(Lorg/openjdk/tools/sjavac/server/RequestHandler$1;Lorg/openjdk/tools/sjavac/Log$Level;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
