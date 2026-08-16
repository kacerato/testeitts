.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final hasPrecedingElements:Z

.field final hasSucceedingElements:Z

.field final importsRegion:Lorg/eclipse/jface/text/IRegion;

.field final surroundingRegion:Lorg/eclipse/jface/text/IRegion;


# direct methods
.method public constructor <init>(Lorg/eclipse/jface/text/IRegion;Lorg/eclipse/jface/text/IRegion;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->surroundingRegion:Lorg/eclipse/jface/text/IRegion;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->importsRegion:Lorg/eclipse/jface/text/IRegion;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasPrecedingElements:Z

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasSucceedingElements:Z

    return-void
.end method
