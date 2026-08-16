.class Ljpct/ae/wrapper/VertexController;
.super Lcom/threed/jpct/GenericVertexController;
.source "SourceFile"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private final eventName:Ljava/lang/String;

.field private final sender:Ljpct/ae/wrapper/JGenericVertexController;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JGenericVertexController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/threed/jpct/GenericVertexController;-><init>()V

    iput-object p1, p0, Ljpct/ae/wrapper/VertexController;->ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Ljpct/ae/wrapper/VertexController;->eventName:Ljava/lang/String;

    iput-object p2, p0, Ljpct/ae/wrapper/VertexController;->sender:Ljpct/ae/wrapper/JGenericVertexController;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/VertexController;->vcCallBack(I)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/VertexController;->vcCallBack(I)V

    return-void
.end method

.method public setup()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/VertexController;->vcCallBack(I)V

    invoke-super {p0}, Lcom/threed/jpct/GenericVertexController;->setup()Z

    move-result v0

    return v0
.end method

.method public vcCallBack(I)V
    .locals 4

    iget-object v0, p0, Ljpct/ae/wrapper/VertexController;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Ljpct/ae/wrapper/VertexController;->sender:Ljpct/ae/wrapper/JGenericVertexController;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljpct/ae/wrapper/VertexController;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_VertexController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
