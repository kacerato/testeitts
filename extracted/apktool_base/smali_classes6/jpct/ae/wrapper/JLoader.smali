.class public Ljpct/ae/wrapper/JLoader;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpcLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Loader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static arrayToList([Lcom/threed/jpct/Object3D;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 3

    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 0

    invoke-static {}, Lcom/threed/jpct/Loader;->clearCache()V

    return-void
.end method

.method public static load3DS(Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0, p1}, Lcom/threed/jpct/Loader;->load3DS(Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static load3DSMerged(Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0, p1}, Lcom/threed/jpct/Loader;->load3DS(Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    invoke-static {p0}, Lcom/threed/jpct/Object3D;->mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadASC(Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/Loader;->loadASC(Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadMD2(Lanywheresoftware/b4a/BA;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Loader;->loadMD2(Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadOBJMerged(Ljava/io/InputStream;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    invoke-static {p0}, Lcom/threed/jpct/Object3D;->mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadSerializedObject(Ljava/io/InputStream;)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->loadSerializedObject(Ljava/io/InputStream;)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadSerializedObjectArray(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->loadSerializedObjectArray(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readTextureNames3DS(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->readTextureNames3DS(Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setVertexOptimization(Z)V
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->setVertexOptimization(Z)V

    return-void
.end method
