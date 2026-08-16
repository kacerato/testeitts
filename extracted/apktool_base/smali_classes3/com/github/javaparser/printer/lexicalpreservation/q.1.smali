.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

.field public final synthetic c:Lcom/github/javaparser/ast/Node;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->c:Lcom/github/javaparser/ast/Node;

    iput-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->e:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->c:Lcom/github/javaparser/ast/Node;

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/q;->e:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->b(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lcom/github/javaparser/ast/Node;Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method
