.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->h(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object p1

    return-object p1
.end method
