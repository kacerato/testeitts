.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/f0;->a:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    return-void
.end method


# virtual methods
.method public final match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/f0;->a:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->c(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    return p1
.end method
