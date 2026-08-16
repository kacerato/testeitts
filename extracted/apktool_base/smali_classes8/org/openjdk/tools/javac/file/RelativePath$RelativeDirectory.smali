.class public Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;
.super Lorg/openjdk/tools/javac/file/RelativePath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/RelativePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeDirectory"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/RelativePath;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static forPackage(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public basename()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/file/RelativePath;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/RelativePath;->compareTo(Lorg/openjdk/tools/javac/file/RelativePath;)I

    move-result p1

    return p1
.end method

.method public contains(Lorg/openjdk/tools/javac/file/RelativePath;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dirname()Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x2

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelativeDirectory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
