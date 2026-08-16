.class public final Lcom/android/tools/r8/ir/optimize/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/AbstractCollection;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/H0;->a:Ljava/util/ArrayList;

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/H0;->b:Ljava/util/AbstractCollection;

    return-void
.end method
