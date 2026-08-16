.class public final synthetic Lcom/android/tools/r8/internal/Ku1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/uc0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/internal/o50;

.field public final synthetic e:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ku1;->b:Lcom/android/tools/r8/internal/uc0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku1;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ku1;->d:Lcom/android/tools/r8/internal/o50;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ku1;->e:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ku1;->b:Lcom/android/tools/r8/internal/uc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ku1;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ku1;->d:Lcom/android/tools/r8/internal/o50;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/uc0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method
