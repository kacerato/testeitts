.class public Lcom/ardor3d/util/export/xml/DOM_PrettyPrint;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/util/export/xml/DOMSerializer;

    invoke-direct {v0}, Lcom/ardor3d/util/export/xml/DOMSerializer;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ardor3d/util/export/xml/DOMSerializer;->setIndent(I)V

    invoke-virtual {v0, p0, p1}, Lcom/ardor3d/util/export/xml/DOMSerializer;->serialize(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    return-void
.end method
