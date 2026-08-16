.class public final synthetic LJ9/b;
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

    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method
