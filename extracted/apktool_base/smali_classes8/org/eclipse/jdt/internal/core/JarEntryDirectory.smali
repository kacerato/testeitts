.class public Lorg/eclipse/jdt/internal/core/JarEntryDirectory;
.super Lorg/eclipse/jdt/internal/core/JarEntryResource;
.source "SourceFile"


# instance fields
.field private children:[Lorg/eclipse/jdt/core/IJarEntryResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JarEntryResource;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/JarEntryResource;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->setParent(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->children:[Lorg/eclipse/jdt/core/IJarEntryResource;

    array-length p1, p1

    if-lez p1, :cond_1

    new-array v1, p1, [Lorg/eclipse/jdt/core/IJarEntryResource;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->setChildren([Lorg/eclipse/jdt/core/IJarEntryResource;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->children:[Lorg/eclipse/jdt/core/IJarEntryResource;

    aget-object v3, v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JarEntryResource;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->clone(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/JarEntryResource;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJarEntryResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->children:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public isFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setChildren([Lorg/eclipse/jdt/core/IJarEntryResource;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;->children:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JarEntryDirectory["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
