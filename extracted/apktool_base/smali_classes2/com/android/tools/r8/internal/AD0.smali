.class public final synthetic Lcom/android/tools/r8/internal/AD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Zl;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/EI;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AD0;->a:Lcom/android/tools/r8/internal/EI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AD0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/AD0;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/AD0;->a:Lcom/android/tools/r8/internal/EI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AD0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/AD0;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
