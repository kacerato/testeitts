.class public final synthetic Lcom/android/tools/r8/kotlin/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/Z;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/E0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/G1;->b:Lcom/android/tools/r8/kotlin/Z;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/G1;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/G1;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/G1;->b:Lcom/android/tools/r8/kotlin/Z;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/G1;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/G1;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
