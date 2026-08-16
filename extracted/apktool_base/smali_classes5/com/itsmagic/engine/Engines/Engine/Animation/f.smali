.class public final synthetic Lcom/itsmagic/engine/Engines/Engine/Animation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I

    move-result p1

    return p1
.end method
