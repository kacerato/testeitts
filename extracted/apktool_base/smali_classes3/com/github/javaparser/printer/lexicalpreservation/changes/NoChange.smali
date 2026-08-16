.class public Lcom/github/javaparser/printer/lexicalpreservation/changes/NoChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
