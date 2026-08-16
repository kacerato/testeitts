.class public Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final newValue:Ljava/lang/Object;

.field private final oldValue:Ljava/lang/Object;

.field private final property:Lcom/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->oldValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getProperty()Lcom/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getValue(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
