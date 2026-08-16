.class public final synthetic Lcom/jme3/scene/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/jme3/light/Light;

    invoke-static {p1}, Lcom/jme3/scene/Spatial;->b(Lcom/jme3/light/Light;)Z

    move-result p1

    return p1
.end method
