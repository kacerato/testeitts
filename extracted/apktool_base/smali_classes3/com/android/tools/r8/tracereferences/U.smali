.class public final synthetic Lcom/android/tools/r8/tracereferences/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/tracereferences/i;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/internal/U6;

.field public final synthetic e:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/U;->b:Lcom/android/tools/r8/tracereferences/i;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/U;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/U;->d:Lcom/android/tools/r8/internal/U6;

    iput-object p4, p0, Lcom/android/tools/r8/tracereferences/U;->e:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/U;->b:Lcom/android/tools/r8/tracereferences/i;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/U;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/U;->d:Lcom/android/tools/r8/internal/U6;

    iget-object v3, p0, Lcom/android/tools/r8/tracereferences/U;->e:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/Z4;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Ljava/util/function/Function;Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method
