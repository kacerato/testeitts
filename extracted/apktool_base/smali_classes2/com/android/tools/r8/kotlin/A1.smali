.class public final synthetic Lcom/android/tools/r8/kotlin/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/Z;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/kotlin/Y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/Z;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/kotlin/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/A1;->b:Lcom/android/tools/r8/kotlin/Z;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/A1;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/A1;->d:Lcom/android/tools/r8/kotlin/Y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/A1;->b:Lcom/android/tools/r8/kotlin/Z;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/A1;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/A1;->d:Lcom/android/tools/r8/kotlin/Y;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/kotlin/Y;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
