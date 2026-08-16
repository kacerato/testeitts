.class public final Lcom/android/tools/r8/internal/Q3;
.super Lcom/android/tools/r8/internal/A0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/xT;


# instance fields
.field public final transient h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lcom/android/tools/r8/internal/m60;->a:I

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/A0;-><init>(Ljava/util/HashMap;)V

    const-string v0, "expectedValuesPerKey"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    iput v1, p0, Lcom/android/tools/r8/internal/Q3;->h:I

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/tools/r8/internal/Q3;->h:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/v0;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/tools/r8/internal/v0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/z0;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/tools/r8/internal/z0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V

    return-object v1
.end method
