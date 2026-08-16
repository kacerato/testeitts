.class public final synthetic LJ9/a;
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)I

    move-result p1

    return p1
.end method
