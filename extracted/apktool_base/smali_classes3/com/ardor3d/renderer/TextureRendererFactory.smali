.class public final enum Lcom/ardor3d/renderer/TextureRendererFactory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/TextureRendererFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/TextureRendererFactory;

.field public static final enum INSTANCE:Lcom/ardor3d/renderer/TextureRendererFactory;


# instance fields
.field private _provider:Lcom/ardor3d/renderer/TextureRendererProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/renderer/TextureRendererFactory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/TextureRendererFactory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/TextureRendererFactory;->INSTANCE:Lcom/ardor3d/renderer/TextureRendererFactory;

    filled-new-array {v0}, [Lcom/ardor3d/renderer/TextureRendererFactory;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/TextureRendererFactory;->$VALUES:[Lcom/ardor3d/renderer/TextureRendererFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/renderer/TextureRendererFactory;->_provider:Lcom/ardor3d/renderer/TextureRendererProvider;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/TextureRendererFactory;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/TextureRendererFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/TextureRendererFactory;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/TextureRendererFactory;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/TextureRendererFactory;->$VALUES:[Lcom/ardor3d/renderer/TextureRendererFactory;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/TextureRendererFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/TextureRendererFactory;

    return-object v0
.end method


# virtual methods
.method public createTextureRenderer(IIIILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/TextureRendererFactory;->_provider:Lcom/ardor3d/renderer/TextureRendererProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ardor3d/renderer/TextureRendererProvider;->createTextureRenderer(IIIILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createTextureRenderer(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/TextureRendererFactory;->_provider:Lcom/ardor3d/renderer/TextureRendererProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ardor3d/renderer/TextureRendererProvider;->createTextureRenderer(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createTextureRenderer(Lcom/ardor3d/framework/DisplaySettings;ZLcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/renderer/TextureRendererFactory;->_provider:Lcom/ardor3d/renderer/TextureRendererProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ardor3d/renderer/TextureRendererProvider;->createTextureRenderer(Lcom/ardor3d/framework/DisplaySettings;ZLcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object p1

    return-object p1
.end method

.method public setProvider(Lcom/ardor3d/renderer/TextureRendererProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/TextureRendererFactory;->_provider:Lcom/ardor3d/renderer/TextureRendererProvider;

    return-void
.end method
