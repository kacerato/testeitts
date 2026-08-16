.class public Lu5/d$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->V1(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$files",
            "val$r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$r;->d:Lu5/d;

    iput-object p2, p0, Lu5/d$r;->b:Ljava/util/List;

    iput-object p3, p0, Lu5/d$r;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v0}, Lu5/d;->x1(Lu5/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v0}, Lu5/d;->x1(Lu5/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lu5/d$r;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v0}, Lu5/d;->y1(Lu5/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v2}, Lu5/d;->x1(Lu5/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lu5/c;

    invoke-direct {v2}, Lu5/c;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lu5/c;

    invoke-direct {v2}, Lu5/c;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    iget-object v4, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v4, v3}, Lu5/d;->z1(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, Lu5/d$t;

    iget-object v5, p0, Lu5/d$r;->d:Lu5/d;

    invoke-direct {v4, v5, v3}, Lu5/d$t;-><init>(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    invoke-virtual {v4, v5}, LF7/i;->r(Z)V

    iput v0, v4, LF7/i;->c:I

    iget-object v5, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v5, v4, v3}, Lu5/d;->A1(Lu5/d;Lu5/d$t;Landroidx/documentfile/provider/DocumentFile;)V

    iget-object v3, p0, Lu5/d$r;->d:Lu5/d;

    invoke-static {v3}, Lu5/d;->y1(Lu5/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lu5/d$r;->d:Lu5/d;

    iget-object v1, p0, Lu5/d$r;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
