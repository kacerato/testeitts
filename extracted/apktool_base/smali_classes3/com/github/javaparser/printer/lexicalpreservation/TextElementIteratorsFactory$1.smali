.class final Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;
.super Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->reverseIterator(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator<",
        "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "element",
            "val$index",
            "val$nodeText"
        }
    .end annotation

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$index:I

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$SingleElementIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    iget v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    return-void
.end method
