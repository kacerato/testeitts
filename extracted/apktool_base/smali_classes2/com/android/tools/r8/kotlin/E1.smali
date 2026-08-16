.class public final synthetic Lcom/android/tools/r8/kotlin/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/Z;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/internal/o50;

.field public final synthetic e:Lcom/android/tools/r8/kotlin/p;

.field public final synthetic f:Lcom/android/tools/r8/kotlin/Y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/kotlin/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/E1;->b:Lcom/android/tools/r8/kotlin/Z;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/E1;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/E1;->d:Lcom/android/tools/r8/internal/o50;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/E1;->e:Lcom/android/tools/r8/kotlin/p;

    iput-object p5, p0, Lcom/android/tools/r8/kotlin/E1;->f:Lcom/android/tools/r8/kotlin/Y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/E1;->b:Lcom/android/tools/r8/kotlin/Z;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/E1;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/E1;->d:Lcom/android/tools/r8/internal/o50;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/E1;->e:Lcom/android/tools/r8/kotlin/p;

    iget-object v4, p0, Lcom/android/tools/r8/kotlin/E1;->f:Lcom/android/tools/r8/kotlin/Y;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/kotlin/p;Lcom/android/tools/r8/kotlin/Y;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
