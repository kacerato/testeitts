.class public Ljpct/ae/wrapper/JShaderLocator;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctShaderLocator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/ShaderLocator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/ShaderLocator;

    invoke-direct {v0}, Lcom/threed/jpct/ShaderLocator;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JShaderLocator;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Landroid/content/res/AssetManager;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/ShaderLocator;

    invoke-direct {v0, p1}, Lcom/threed/jpct/ShaderLocator;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JShaderLocator;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(Landroid/content/res/Resources;I)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/ShaderLocator;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/ShaderLocator;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JShaderLocator;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getShaderCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JShaderLocator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/ShaderLocator;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/ShaderLocator;->getShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
