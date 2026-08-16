.class public final synthetic Lcom/jme3/environment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/jme3/environment/EnvironmentProbeControl;


# direct methods
.method public synthetic constructor <init>(Lcom/jme3/environment/EnvironmentProbeControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/environment/a;->b:Lcom/jme3/environment/EnvironmentProbeControl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/a;->b:Lcom/jme3/environment/EnvironmentProbeControl;

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-static {v0, p1}, Lcom/jme3/environment/EnvironmentProbeControl;->a(Lcom/jme3/environment/EnvironmentProbeControl;Lcom/jme3/scene/Geometry;)Z

    move-result p1

    return p1
.end method
