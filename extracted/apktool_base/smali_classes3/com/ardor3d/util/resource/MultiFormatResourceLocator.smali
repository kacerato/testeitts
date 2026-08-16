.class public Lcom/ardor3d/util/resource/MultiFormatResourceLocator;
.super Lcom/ardor3d/util/resource/SimpleResourceLocator;
.source "SourceFile"


# instance fields
.field private final _extensions:[Ljava/lang/String;

.field private _trySpecifiedFormatFirst:Z


# direct methods
.method public varargs constructor <init>(Ljava/net/URI;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_trySpecifiedFormatFirst:Z

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_extensions:[Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "extensions can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/net/URL;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;-><init>(Ljava/net/URI;[Ljava/lang/String;)V

    return-void
.end method

.method private getBaseFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->getBaseDir()Ljava/net/URI;

    move-result-object v0

    check-cast p1, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;

    invoke-virtual {p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->getBaseDir()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_extensions:[Ljava/lang/String;

    iget-object p1, p1, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_extensions:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isTrySpecifiedFormatFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_trySpecifiedFormatFirst:Z

    return v0
.end method

.method public locateResource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->cleanup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_trySpecifiedFormatFirst:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->doRecursiveLocate(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->getBaseFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_extensions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->doRecursiveLocate(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_trySpecifiedFormatFirst:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/resource/SimpleResourceLocator;->doRecursiveLocate(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTrySpecifiedFormatFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/util/resource/MultiFormatResourceLocator;->_trySpecifiedFormatFirst:Z

    return-void
.end method
