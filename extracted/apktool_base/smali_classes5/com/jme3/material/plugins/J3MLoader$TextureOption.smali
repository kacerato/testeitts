.class enum Lcom/jme3/material/plugins/J3MLoader$TextureOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/plugins/J3MLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TextureOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/plugins/J3MLoader$TextureOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field public static final enum Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field public static final enum Mag:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field public static final enum Min:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field public static final enum Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

.field public static final enum Wrap:Lcom/jme3/material/plugins/J3MLoader$TextureOption;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/plugins/J3MLoader$TextureOption;
    .locals 5

    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Min:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    sget-object v1, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Mag:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    sget-object v2, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Wrap:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    sget-object v3, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    sget-object v4, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption$1;

    const-string v1, "Min"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Min:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    new-instance v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption$2;

    const-string v1, "Mag"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Mag:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    new-instance v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption$3;

    const-string v1, "Wrap"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Wrap:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    new-instance v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption$4;

    const-string v1, "Repeat"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    new-instance v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption$5;

    const-string v1, "Flip"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    invoke-static {}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->$values()[Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->$VALUES:[Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/jme3/material/plugins/J3MLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTextureOption(Ljava/lang/String;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;
    .locals 5

    invoke-static {}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->values()[Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/plugins/J3MLoader$TextureOption;
    .locals 1

    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->$VALUES:[Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    invoke-virtual {v0}, [Lcom/jme3/material/plugins/J3MLoader$TextureOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    return-object v0
.end method


# virtual methods
.method public applyToTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 0

    return-void
.end method

.method public applyToTextureKey(Ljava/lang/String;Lcom/jme3/asset/TextureKey;)V
    .locals 0

    return-void
.end method

.method public getOptionValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
