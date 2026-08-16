.class public final Lcom/android/tools/r8/ir/optimize/D;
.super Lcom/android/tools/r8/ir/optimize/E;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/D;->c:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {p0}, Lcom/android/tools/r8/ir/optimize/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/D;->c:Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
