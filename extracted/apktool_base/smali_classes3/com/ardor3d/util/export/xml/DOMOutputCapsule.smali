.class public Lcom/ardor3d/util/export/xml/DOMOutputCapsule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/OutputCapsule;


# static fields
.field private static final _dataAttributeName:Ljava/lang/String; = "data"


# instance fields
.field private _currentElement:Lorg/w3c/dom/Element;

.field private final _doc:Lorg/w3c/dom/Document;

.field private final _writtenSavables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/util/export/Savable;",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_writtenSavables:Ljava/util/Map;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_doc:Lorg/w3c/dom/Document;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method private appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-object p1
.end method

.method private static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDoc()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public write(BLjava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(DLjava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmpl-double p4, p1, p4

    if-nez p4, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p4, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(FLjava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmpl-float p3, p1, p3

    if-nez p3, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(JLjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmp-long p4, p1, p4

    if-nez p4, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object p4, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 158
    :cond_1
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    .line 159
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_writtenSavables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 162
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string p2, "Object"

    :goto_1
    if-eqz v0, :cond_4

    .line 164
    const-string v2, "reference_ID"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_3
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 169
    const-string p2, "ref"

    invoke-interface {p1, p2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 171
    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_writtenSavables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {p1, p0}, Lcom/ardor3d/util/export/Savable;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    move-object p1, p2

    :goto_2
    if-eqz v1, :cond_5

    .line 173
    const-string p2, "class"

    invoke-interface {p1, p2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_5
    iput-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eq p1, p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 222
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    const-string p1, "data"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 196
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 200
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    const-string p1, "data"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write(Ljava/nio/IntBuffer;Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1, p3}, Ljava/nio/IntBuffer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 209
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 212
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 217
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    const-string p1, "data"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write(Ljava/nio/ShortBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p1, p3}, Ljava/nio/ShortBuffer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 234
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 235
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 238
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 239
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    const-string p1, "data"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write(Ljava/util/BitSet;Ljava/lang/String;Ljava/util/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p1, p3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 152
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 154
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 156
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public write(SLjava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(ZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write([BLjava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 3
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-byte v2, p1, v1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 8
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([DLjava/lang/String;[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 65
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-wide v2, p1, v1

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 70
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([FLjava/lang/String;[F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 43
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 48
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([ILjava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 26
    :cond_1
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    aget v3, p1, v2

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 31
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([JLjava/lang/String;[J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 82
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-wide v2, p1, v1

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 87
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    .line 177
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 178
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 179
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 180
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 181
    const-string v1, "renderStateList"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    .line 183
    const-string v2, "null"

    invoke-direct {p0, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 184
    iput-object v1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    goto :goto_1

    .line 185
    :cond_2
    invoke-interface {v1}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_4
    iput-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 248
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 249
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, v0, p2, p1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-nez p1, :cond_0

    move-object p1, p3

    .line 134
    :cond_0
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 135
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 136
    aget-object v0, p1, p3

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 138
    invoke-static {v0}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    const-string v2, "value"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([SLjava/lang/String;[S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 99
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-short v2, p1, v1

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 104
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([ZLjava/lang/String;[Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 116
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    aget-boolean v3, p1, v2

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 120
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 121
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[BLjava/lang/String;[[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 12
    :cond_0
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    aget-object v3, p1, v2

    .line 13
    array-length v4, v3

    move v5, v1

    :goto_1
    const-string v6, " "

    if-ge v5, v4, :cond_1

    aget-byte v7, v3, v5

    .line 14
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 19
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "size_outer"

    invoke-interface {p2, v2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    aget-object p1, p1, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size_inner"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[DLjava/lang/String;[[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 74
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 75
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 77
    aget-object v1, p1, v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([DLjava/lang/String;[D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[FLjava/lang/String;[[F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 53
    :cond_1
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_3

    aget-object v3, p1, v2

    .line 54
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 58
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 59
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "size_outer"

    invoke-interface {p2, v2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    aget-object p1, p1, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "size_inner"

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p1, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[ILjava/lang/String;[[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 35
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 36
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 38
    aget-object v1, p1, v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([ILjava/lang/String;[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[JLjava/lang/String;[[J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 92
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 94
    aget-object v1, p1, v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([JLjava/lang/String;[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[[Lcom/ardor3d/util/export/Savable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 189
    array-length p3, p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size_outer"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 190
    aget-object v0, p1, p3

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size_inner"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    array-length p2, p1

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 192
    array-length v2, v1

    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 193
    invoke-interface {v4}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 143
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 144
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 145
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 146
    aget-object v1, p1, v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[SLjava/lang/String;[[S)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 108
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 109
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 111
    aget-object v1, p1, v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([SLjava/lang/String;[S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public write([[ZLjava/lang/String;[[Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 126
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 128
    aget-object v1, p1, v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    aget-object v3, p3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write([ZLjava/lang/String;[Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeByteBufferList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    const-string v0, "ByteBuffer"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeFloatBufferList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    invoke-interface {p2, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    const-string v0, "FloatBuffer"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/util/export/Savable;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    goto :goto_0

    :cond_3
    iput-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeSavableListArray([Ljava/util/List;Ljava/lang/String;[Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_3

    aget-object v0, p1, p2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    const-string v1, "null"

    invoke-direct {p0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SavableArrayList_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iput-object p3, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeSavableListArray2D([[Ljava/util/List;Ljava/lang/String;[[Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "[[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    array-length p3, p1

    const-string v0, "size"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavableArrayListArray_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->writeSavableListArray([Ljava/util/List;Ljava/lang/String;[Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "MapEntry"

    invoke-direct {p0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v1, "Key"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "Value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MapEntry"

    invoke-direct {p0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->appendElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "Savable"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iput-object p2, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->_currentElement:Lorg/w3c/dom/Element;

    return-void
.end method
