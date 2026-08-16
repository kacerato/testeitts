.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/j0;->a:I

    return-void
.end method


# virtual methods
.method public final match(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/j0;->a:I

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->a(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    return p1
.end method
