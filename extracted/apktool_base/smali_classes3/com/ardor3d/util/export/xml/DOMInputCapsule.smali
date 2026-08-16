.class public Lcom/ardor3d/util/export/xml/DOMInputCapsule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/InputCapsule;


# instance fields
.field private _currentElem:Lorg/w3c/dom/Element;

.field private final _doc:Lorg/w3c/dom/Document;

.field private _isAtRoot:Z

.field private final _referencedSavables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ardor3d/util/export/Savable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_isAtRoot:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_referencedSavables:Ljava/util/Map;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-void
.end method

.method private static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1
.end method

.method private findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1
.end method

.method private findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private readRenderStateList(Lorg/w3c/dom/Element;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ardor3d.scene.state.TextureState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readTextureStateFromCurrent()Lcom/ardor3d/renderer/state/TextureState;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/util/export/Savable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_3

    :goto_2
    const-class v1, Lcom/ardor3d/util/export/xml/DOMInputCapsule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object p2
.end method

.method private readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "readSavableFromCurrentElem(Savable)"

    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string v3, "ref"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_referencedSavables:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/export/Savable;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string v4, "class"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/ardor3d/annotation/SavableFactory;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/annotation/SavableFactory;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/export/Savable;

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v8, p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_5

    :cond_4
    invoke-interface {v4}, Lcom/ardor3d/annotation/SavableFactory;->factoryMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/export/Savable;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string v1, "reference_ID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_referencedSavables:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3, p0}, Lcom/ardor3d/util/export/Savable;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    move-object p1, v3

    :cond_6
    :goto_2
    return-object p1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "readSavableFromCurrentElem(Savable)"

    const-string v7, "Exception"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Method specified in annotation does not appear to exist or has an invalid method signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    invoke-direct {v0, p1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not access constructor of class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'! \n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Some types may require the annotation SavableFactory.  Please double check."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v0, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    invoke-direct {v0, p1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_6
    return-object v2
.end method

.method private readTextureStateFromCurrent()Lcom/ardor3d/renderer/state/TextureState;
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/TextureState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "texture"

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/ardor3d/image/Texture;

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object v3

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    check-cast v5, Lcom/ardor3d/image/Texture;

    invoke-virtual {v5}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object v6

    invoke-static {v6, v1, v5}, Lcom/ardor3d/util/TextureManager;->loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_1
    const-class v4, Lcom/ardor3d/util/export/xml/DOMInputCapsule;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iput-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object v2
.end method


# virtual methods
.method public readBitSet(Ljava/lang/String;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readBooleanArray(Ljava/lang/String;[Z)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [Z

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readBooleanArray2D(Ljava/lang/String;[[Z)[[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[Z

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readBooleanArray(Ljava/lang/String;[Z)[Z

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readByteArray(Ljava/lang/String;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [B

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readByteArray2D(Ljava/lang/String;[[B)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[B

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readByteArray(Ljava/lang/String;[B)[B

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-lez p2, :cond_2

    const-string p2, "data"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readByteBufferList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-wide p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readDoubleArray(Ljava/lang/String;[D)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [D

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readDoubleArray2D(Ljava/lang/String;[[D)[[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[D

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readDoubleArray(Ljava/lang/String;[D)[D

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p3

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readEnumArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p3, p1

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Enum;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    invoke-static {p2, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    aput-object v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readFloatArray(Ljava/lang/String;[F)[F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [F

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readFloatArray2D(Ljava/lang/String;[[F)[[F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "size_outer"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput p2, v1, v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const-string v3, "data"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v3, v2

    :goto_1
    if-ge v3, p2, :cond_3

    new-array v4, v0, [F

    aput-object v4, v1, v3

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v3

    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-lez p2, :cond_3

    const-string p2, "data"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readFloatBufferList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [I

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readIntArray2D(Ljava/lang/String;[[I)[[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[I

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    if-lez p2, :cond_2

    const-string p2, "data"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-wide p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readLongArray(Ljava/lang/String;[J)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [J

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readLongArray2D(Ljava/lang/String;[[J)[[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[J

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readLongArray(Ljava/lang/String;[J)[J

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_isAtRoot:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_isAtRoot:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    iget-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    instance-of p2, p2, Lorg/w3c/dom/Element;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const-string v1, "renderStateList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readRenderStateList(Lorg/w3c/dom/Element;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p1, "size"

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [Lcom/ardor3d/util/export/Savable;

    invoke-direct {p0, v0}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object p1, p2

    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableArray2D(Ljava/lang/String;[[Lcom/ardor3d/util/export/Savable;)[[Lcom/ardor3d/util/export/Savable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "size_outer"

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput p2, v1, v2

    const-class v3, Lcom/ardor3d/util/export/Savable;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/ardor3d/util/export/Savable;

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v3

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v5, p2, -0x1

    if-ne v3, v5, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/ardor3d/util/export/Savable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findFirstChildElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableFromCurrentElem(Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findNextSiblingElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableListArray(Ljava/lang/String;[Ljava/util/List;)[Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/ardor3d/util/export/Savable;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/List<",
            "TE;>;)[",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SavableArrayList_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableListArray2D(Ljava/lang/String;[[Ljava/util/List;)[[Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/ardor3d/util/export/Savable;",
            ">(",
            "Ljava/lang/String;",
            "[[",
            "Ljava/util/List<",
            "TE;>;)[[",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [[Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavableArrayListArray_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavableListArray(Ljava/lang/String;[Ljava/util/List;)[Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Lcom/ardor3d/util/export/Savable;",
            "V::",
            "Lcom/ardor3d/util/export/Savable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, p2, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MapEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/w3c/dom/Element;

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string v2, "Key"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    const-string v4, "Value"

    invoke-virtual {p0, v4, v3}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2
.end method

.method public readShort(Ljava/lang/String;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return p2

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readShortArray(Ljava/lang/String;[S)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [S

    const-string v1, "data"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    aput-short v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readShortArray2D(Ljava/lang/String;[[S)[[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[S

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readShortArray(Ljava/lang/String;[S)[S

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    if-lez p2, :cond_2

    const-string p2, "data"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "String"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v5, "value"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readStringArray2D(Ljava/lang/String;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p2, "size"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array p2, p1, [[Ljava/lang/String;

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "String array contains more elements than specified!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    return-object p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/ardor3d/util/export/Savable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->findChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :goto_0
    if-eqz p1, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MapEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/w3c/dom/Element;

    iput-object v2, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    const-string v3, "key"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Savable"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->_currentElem:Lorg/w3c/dom/Element;

    :cond_3
    return-object p2
.end method
