.class public final synthetic Lcom/jme3/anim/tween/action/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Lcom/jme3/anim/tween/action/BlendAction;


# direct methods
.method public synthetic constructor <init>(Lcom/jme3/anim/tween/action/BlendAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/anim/tween/action/a;->a:Lcom/jme3/anim/tween/action/BlendAction;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/tween/action/a;->a:Lcom/jme3/anim/tween/action/BlendAction;

    check-cast p1, Lcom/jme3/anim/tween/action/Action;

    invoke-static {v0, p1}, Lcom/jme3/anim/tween/action/BlendAction;->a(Lcom/jme3/anim/tween/action/BlendAction;Lcom/jme3/anim/tween/action/Action;)D

    move-result-wide v0

    return-wide v0
.end method
