.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImportEdits"
.end annotation


# instance fields
.field final commentAndDeclarationEdits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation
.end field

.field final leadingDelimiterEdits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;->leadingDelimiterEdits:Ljava/util/Collection;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;->commentAndDeclarationEdits:Ljava/util/Collection;

    return-void
.end method
