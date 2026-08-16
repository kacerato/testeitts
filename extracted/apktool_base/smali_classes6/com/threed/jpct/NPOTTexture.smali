.class public Lcom/threed/jpct/NPOTTexture;
.super Lcom/threed/jpct/Texture;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(IILcom/threed/jpct/RGBColor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;Z)V

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->nPot:Z

    return-void
.end method
