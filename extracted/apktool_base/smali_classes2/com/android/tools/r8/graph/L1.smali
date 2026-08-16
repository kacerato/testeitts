.class public final Lcom/android/tools/r8/graph/L1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/I2;

.field public final b:Ljava/util/function/Supplier;

.field public final c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Ljava/util/function/Supplier;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/L1;->d:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/graph/L1;->a:Lcom/android/tools/r8/graph/I2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/L1;->b:Ljava/util/function/Supplier;

    invoke-static {p4}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/L1;->c:Ljava/util/Set;

    return-void
.end method
