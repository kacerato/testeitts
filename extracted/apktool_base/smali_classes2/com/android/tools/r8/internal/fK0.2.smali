.class public final synthetic Lcom/android/tools/r8/internal/fK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic b:Lcom/android/tools/r8/internal/Ir0;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fK0;->a:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fK0;->b:Lcom/android/tools/r8/internal/Ir0;

    iput p3, p0, Lcom/android/tools/r8/internal/fK0;->c:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/fK0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/fK0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fK0;->b:Lcom/android/tools/r8/internal/Ir0;

    iget v2, p0, Lcom/android/tools/r8/internal/fK0;->c:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/fK0;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Jr0;->b(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V

    return-void
.end method
