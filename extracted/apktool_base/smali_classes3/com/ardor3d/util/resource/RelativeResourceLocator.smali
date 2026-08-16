.class public Lcom/ardor3d/util/resource/RelativeResourceLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/resource/ResourceLocator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _baseSource:Lcom/ardor3d/util/resource/ResourceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/resource/ResourceSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/resource/RelativeResourceLocator;->_baseSource:Lcom/ardor3d/util/resource/ResourceSource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/ardor3d/util/resource/RelativeResourceLocator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/resource/RelativeResourceLocator;->_baseSource:Lcom/ardor3d/util/resource/ResourceSource;

    check-cast p1, Lcom/ardor3d/util/resource/RelativeResourceLocator;

    iget-object p1, p1, Lcom/ardor3d/util/resource/RelativeResourceLocator;->_baseSource:Lcom/ardor3d/util/resource/ResourceSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBaseSource()Lcom/ardor3d/util/resource/ResourceSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/resource/RelativeResourceLocator;->_baseSource:Lcom/ardor3d/util/resource/ResourceSource;

    return-object v0
.end method

.method public locateResource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;
    .locals 2

    :goto_0
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    const-string v0, ".\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/util/resource/RelativeResourceLocator;->_baseSource:Lcom/ardor3d/util/resource/ResourceSource;

    invoke-interface {v0, p1}, Lcom/ardor3d/util/resource/ResourceSource;->getRelativeSource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p1

    return-object p1
.end method
