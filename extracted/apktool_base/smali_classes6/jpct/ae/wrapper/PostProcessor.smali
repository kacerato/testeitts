.class Ljpct/ae/wrapper/PostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/IPostProcessor;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private buffer:Lcom/threed/jpct/FrameBuffer;

.field private final eventName:Ljava/lang/String;

.field private isInitialized:Z

.field private final sender:Ljpct/ae/wrapper/JPostProcessor;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JPostProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljpct/ae/wrapper/PostProcessor;->eventName:Ljava/lang/String;

    iput-object p1, p0, Ljpct/ae/wrapper/PostProcessor;->ba:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Ljpct/ae/wrapper/PostProcessor;->sender:Ljpct/ae/wrapper/JPostProcessor;

    return-void
.end method

.method private callBack(I)V
    .locals 4

    iget-object v0, p0, Ljpct/ae/wrapper/PostProcessor;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Ljpct/ae/wrapper/PostProcessor;->sender:Ljpct/ae/wrapper/JPostProcessor;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljpct/ae/wrapper/PostProcessor;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_PostProcessor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Ljpct/ae/wrapper/PostProcessor;->buffer:Lcom/threed/jpct/FrameBuffer;

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljpct/ae/wrapper/PostProcessor;->callBack(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljpct/ae/wrapper/PostProcessor;->isInitialized:Z

    return-void
.end method

.method public init(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljpct/ae/wrapper/PostProcessor;->isInitialized:Z

    iput-object p1, p0, Ljpct/ae/wrapper/PostProcessor;->buffer:Lcom/threed/jpct/FrameBuffer;

    invoke-direct {p0, v0}, Ljpct/ae/wrapper/PostProcessor;->callBack(I)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/PostProcessor;->isInitialized:Z

    return v0
.end method

.method public process()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljpct/ae/wrapper/PostProcessor;->callBack(I)V

    return-void
.end method
