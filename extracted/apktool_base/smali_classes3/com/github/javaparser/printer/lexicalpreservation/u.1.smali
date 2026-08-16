.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/u;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/u;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/u;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/u;->c:Ljava/util/Map;

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->h(Lcom/github/javaparser/ast/Node;Ljava/util/Map;Lcom/github/javaparser/TokenRange;)V

    return-void
.end method
