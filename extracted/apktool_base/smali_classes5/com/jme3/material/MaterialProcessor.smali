.class public Lcom/jme3/material/MaterialProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object p1

    return-object p1
.end method

.method public postProcess(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
