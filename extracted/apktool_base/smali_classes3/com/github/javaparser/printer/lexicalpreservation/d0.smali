.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

.field public final synthetic c:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/d0;->b:Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/d0;->c:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/d0;->b:Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/d0;->c:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->a(Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    return-object p1
.end method
