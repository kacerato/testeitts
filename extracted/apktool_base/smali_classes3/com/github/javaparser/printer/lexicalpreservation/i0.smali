.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/i0;->a:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/i0;->b:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    return-void
.end method


# virtual methods
.method public final match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/i0;->a:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/i0;->b:Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->a(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    return p1
.end method
