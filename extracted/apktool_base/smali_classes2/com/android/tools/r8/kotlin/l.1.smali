.class public final Lcom/android/tools/r8/kotlin/l;
.super Lcom/android/tools/r8/kotlin/m;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/JP;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/JP;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/m;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/l;->b:Lcom/android/tools/r8/internal/JP;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/kotlin/l;->b:Lcom/android/tools/r8/internal/JP;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
