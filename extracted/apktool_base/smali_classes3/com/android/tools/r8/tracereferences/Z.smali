.class public final synthetic Lcom/android/tools/r8/tracereferences/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/tracereferences/i;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/i;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/Z;->b:Lcom/android/tools/r8/tracereferences/i;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/Z;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/Z;->d:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/Z;->b:Lcom/android/tools/r8/tracereferences/i;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/Z;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/Z;->d:Lcom/android/tools/r8/internal/U6;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
