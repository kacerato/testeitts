.class public final synthetic Lcom/android/tools/r8/internal/BB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/yu0;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BB1;->a:Lcom/android/tools/r8/internal/yu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BB1;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BB1;->a:Lcom/android/tools/r8/internal/yu0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BB1;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/yu0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
