.class Ljpct/ae/wrapper/TextureEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/ITextureEffect;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private final containsAlpha:Z

.field private final eventName:Ljava/lang/String;

.field private final sender:Ljpct/ae/wrapper/JTextureEffect;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JTextureEffect;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljpct/ae/wrapper/TextureEffect;->eventName:Ljava/lang/String;

    iput-object p1, p0, Ljpct/ae/wrapper/TextureEffect;->ba:Lanywheresoftware/b4a/BA;

    iput-boolean p4, p0, Ljpct/ae/wrapper/TextureEffect;->containsAlpha:Z

    iput-object p2, p0, Ljpct/ae/wrapper/TextureEffect;->sender:Ljpct/ae/wrapper/JTextureEffect;

    return-void
.end method


# virtual methods
.method public apply([I[I)V
    .locals 4

    iget-object v0, p0, Ljpct/ae/wrapper/TextureEffect;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Ljpct/ae/wrapper/TextureEffect;->sender:Ljpct/ae/wrapper/JTextureEffect;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljpct/ae/wrapper/TextureEffect;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_TextureEffect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsAlpha()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/TextureEffect;->containsAlpha:Z

    return v0
.end method

.method public init(Lcom/threed/jpct/Texture;)V
    .locals 0

    return-void
.end method
