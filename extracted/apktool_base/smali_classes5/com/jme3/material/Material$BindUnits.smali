.class public Lcom/jme3/material/Material$BindUnits;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindUnits"
.end annotation


# instance fields
.field public bufferUnit:I

.field public textureUnit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/material/Material$BindUnits;->textureUnit:I

    iput v0, p0, Lcom/jme3/material/Material$BindUnits;->bufferUnit:I

    return-void
.end method
