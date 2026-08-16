.class public final synthetic Lcom/android/tools/r8/internal/PK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ki;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PK0;->a:Lcom/android/tools/r8/internal/Ki;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PK0;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PK0;->a:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PK0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ki;->d(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
