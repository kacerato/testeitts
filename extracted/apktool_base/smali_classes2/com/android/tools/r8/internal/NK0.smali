.class public final synthetic Lcom/android/tools/r8/internal/NK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ki;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/ea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NK0;->a:Lcom/android/tools/r8/internal/Ki;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NK0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NK0;->c:Lcom/android/tools/r8/internal/ea;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/NK0;->a:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NK0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/NK0;->c:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ki;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method
