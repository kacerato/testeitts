.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final region:Lorg/eclipse/jface/text/IRegion;

.field final succeedingLineDelimiters:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jface/text/IRegion;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->region:Lorg/eclipse/jface/text/IRegion;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->succeedingLineDelimiters:I

    return-void
.end method
