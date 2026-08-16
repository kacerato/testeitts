.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/g0;->b:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/g0;->b:Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->b(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/Range;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
