.class public final Lcom/android/tools/r8/shaking/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/z;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/z;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/z;->c:Ljava/util/function/Consumer;

    return-void
.end method
