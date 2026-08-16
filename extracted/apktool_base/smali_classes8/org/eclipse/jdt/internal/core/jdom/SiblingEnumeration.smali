.class Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field protected fCurrentElement:Lorg/eclipse/jdt/core/jdom/IDOMNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/jdom/IDOMNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;->fCurrentElement:Lorg/eclipse/jdt/core/jdom/IDOMNode;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;->fCurrentElement:Lorg/eclipse/jdt/core/jdom/IDOMNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;->fCurrentElement:Lorg/eclipse/jdt/core/jdom/IDOMNode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/jdom/IDOMNode;->getNextNode()Lorg/eclipse/jdt/core/jdom/IDOMNode;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/jdom/SiblingEnumeration;->fCurrentElement:Lorg/eclipse/jdt/core/jdom/IDOMNode;

    :cond_0
    return-object v0
.end method
