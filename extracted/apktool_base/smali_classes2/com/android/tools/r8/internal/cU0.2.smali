.class public final synthetic Lcom/android/tools/r8/internal/cU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qu;

.field public final synthetic c:Lcom/android/tools/r8/internal/OW;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/OW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cU0;->b:Lcom/android/tools/r8/internal/Qu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cU0;->c:Lcom/android/tools/r8/internal/OW;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cU0;->b:Lcom/android/tools/r8/internal/Qu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cU0;->c:Lcom/android/tools/r8/internal/OW;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Qu;->b(Lcom/android/tools/r8/internal/OW;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
