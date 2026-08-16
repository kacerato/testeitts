.class public final synthetic Lcom/android/tools/r8/internal/rW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/T00;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rW0;->a:Lcom/android/tools/r8/internal/T00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rW0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/rW0;->c:Lcom/android/tools/r8/synthesis/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rW0;->a:Lcom/android/tools/r8/internal/T00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rW0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rW0;->c:Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
