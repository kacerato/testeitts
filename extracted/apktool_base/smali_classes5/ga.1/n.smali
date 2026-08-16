.class public final synthetic Lga/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga/n;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lga/n;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Z

    move-result p1

    return p1
.end method
