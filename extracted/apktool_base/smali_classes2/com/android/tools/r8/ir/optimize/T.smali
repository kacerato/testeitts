.class public final Lcom/android/tools/r8/ir/optimize/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/T;->a:Lcom/android/tools/r8/graph/H5;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/T;->b:Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/T;->a:Lcom/android/tools/r8/graph/H5;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/T;->b:Lcom/android/tools/r8/graph/H2;

    return-void
.end method
