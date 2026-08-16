.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/changes/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;

.field public final synthetic c:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;->b:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;->c:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;->b:Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/a;->c:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;->a(Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z

    move-result p1

    return p1
.end method
