.class public final Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final b:Ljava/lang/String; = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

.field public static final c:Ljava/lang/String; = ".androidx-startup"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "element",
            "namespaceUri",
            "attributeName"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getAttributeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlAttribute;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getNamespaceUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    invoke-static {p0}, Lw3/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "manifestFile",
            "appTitle",
            "packageId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {v0, p1, p2}, Lw3/a;->e([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    return-void
.end method

.method public static e([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "manifestBytes",
            "appTitle",
            "packageId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lw3/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lw3/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p0}, Lcom/android/aapt/Resources$XmlNode;->parseFrom([B)Lcom/android/aapt/Resources$XmlNode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->hasElement()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    const-string v1, ""

    const-string v2, "package"

    invoke-static {v0, v1, v2}, Lw3/a;->a(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to locate package id on protobuf AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Lw3/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p1, v2}, Lw3/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/a$a;)V

    invoke-static {p0, v1}, Lw3/a;->g(Lcom/android/aapt/Resources$XmlNode;Lw3/a$b;)Lcom/android/aapt/Resources$XmlNode;

    move-result-object p0

    if-eqz p2, :cond_3

    invoke-static {v1}, Lw3/a$b;->a(Lw3/a$b;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to patch package id on protobuf AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {v1}, Lw3/a$b;->c(Lw3/a$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to patch application label on protobuf AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing manifest root element on protobuf AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protobuf AndroidManifest.xml"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static f(Ljava/lang/String;Lcom/android/aapt/Resources$XmlAttribute;Lw3/a$b;)Lcom/android/aapt/Resources$XmlAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elementName",
            "attribute",
            "state"
        }
    .end annotation

    invoke-static {p2}, Lw3/a$b;->e(Lw3/a$b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "manifest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package"

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v2}, Lw3/a$b;->b(Lw3/a$b;Z)Z

    invoke-static {p2}, Lw3/a$b;->e(Lw3/a$b;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lw3/a;->h(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/String;Z)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lw3/a$b;->f(Lw3/a$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "application"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getNamespaceUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "label"

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2, v2}, Lw3/a$b;->d(Lw3/a$b;Z)Z

    invoke-static {p2}, Lw3/a$b;->f(Lw3/a$b;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lw3/a;->h(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/String;Z)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2}, Lw3/a$b;->e(Lw3/a$b;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p2}, Lw3/a$b;->g(Lw3/a$b;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lw3/a$b;->g(Lw3/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lw3/a$b;->e(Lw3/a$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lw3/a;->h(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/String;Z)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lw3/a$b;->g(Lw3/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".androidx-startup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lw3/a$b;->e(Lw3/a$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lw3/a;->h(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/String;Z)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static g(Lcom/android/aapt/Resources$XmlNode;Lw3/a$b;)Lcom/android/aapt/Resources$XmlNode;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "state"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->hasElement()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getAttributeCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/aapt/Resources$XmlElement;->getAttribute(I)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, p1}, Lw3/a;->f(Ljava/lang/String;Lcom/android/aapt/Resources$XmlAttribute;Lw3/a$b;)Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v1, v3, v5}, Lcom/android/aapt/Resources$XmlElement$Builder;->setAttribute(ILcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlElement$Builder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/aapt/Resources$XmlElement;->getChild(I)Lcom/android/aapt/Resources$XmlNode;

    move-result-object v3

    invoke-static {v3, p1}, Lw3/a;->g(Lcom/android/aapt/Resources$XmlNode;Lw3/a$b;)Lcom/android/aapt/Resources$XmlNode;

    move-result-object v4

    if-eq v4, v3, :cond_3

    invoke-virtual {v1, v2, v4}, Lcom/android/aapt/Resources$XmlElement$Builder;->setChild(ILcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlElement$Builder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode;->toBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/aapt/Resources$XmlNode$Builder;->setElement(Lcom/android/aapt/Resources$XmlElement$Builder;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/String;Z)Lcom/android/aapt/Resources$XmlAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attribute",
            "value",
            "compileLiteral"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute;->toBuilder()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->setValue(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Item;->newBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/aapt/Resources$String;->newBuilder()Lcom/android/aapt/Resources$String$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/aapt/Resources$String$Builder;->setValue(Ljava/lang/String;)Lcom/android/aapt/Resources$String$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->setStr(Lcom/android/aapt/Resources$String$Builder;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->setCompiledItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute;->hasCompiledItem()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->clearCompiledItem()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p0

    return-object p0
.end method
