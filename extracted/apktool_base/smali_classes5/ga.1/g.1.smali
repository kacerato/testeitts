.class public final synthetic Lga/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga/g;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lga/g;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p1

    return p1
.end method
