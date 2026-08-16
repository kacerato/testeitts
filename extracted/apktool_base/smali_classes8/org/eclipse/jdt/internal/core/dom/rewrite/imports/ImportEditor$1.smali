.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->deleteRemainingText(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/text/edits/TextEdit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/text/edits/TextEdit;

    check-cast p2, Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$1;->compare(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
