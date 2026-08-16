.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/W;->b:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/W;->b:Ljava/lang/StringBuffer;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->a(Ljava/lang/StringBuffer;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method
