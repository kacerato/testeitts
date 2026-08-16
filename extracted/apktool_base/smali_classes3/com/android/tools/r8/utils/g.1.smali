.class public final Lcom/android/tools/r8/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/g;->a:Lcom/android/tools/r8/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/utils/g;->a:Lcom/android/tools/r8/utils/h;

    iget-object v0, v0, Lcom/android/tools/r8/utils/h;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/DataResource;

    instance-of v2, v1, Lcom/android/tools/r8/DataEntryResource;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataEntryResource;)V

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/utils/g;->b:Z

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/android/tools/r8/DataDirectoryResource;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    check-cast v1, Lcom/android/tools/r8/DataDirectoryResource;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DataResourceProvider$Visitor;->visit(Lcom/android/tools/r8/DataDirectoryResource;)V

    goto :goto_0

    :cond_3
    return-void
.end method
