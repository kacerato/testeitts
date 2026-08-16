.class public final Lcom/android/tools/r8/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/f;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/e;->a:Lcom/android/tools/r8/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/utils/e;->a:Lcom/android/tools/r8/utils/f;

    iget-object v0, v0, Lcom/android/tools/r8/utils/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataEntryResource;)V

    goto :goto_0

    :cond_0
    return-void
.end method
