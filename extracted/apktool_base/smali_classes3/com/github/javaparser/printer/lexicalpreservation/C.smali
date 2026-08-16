.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/C;->b:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/C;->b:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method
