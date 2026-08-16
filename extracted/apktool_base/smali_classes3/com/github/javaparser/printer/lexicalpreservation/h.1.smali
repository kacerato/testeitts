.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/h;->b:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->h(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method
