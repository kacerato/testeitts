.class public final synthetic Lcom/android/tools/r8/internal/F41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/b;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ClassConflictResolver;

.field public final synthetic b:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F41;->a:Lcom/android/tools/r8/ClassConflictResolver;

    iput-object p2, p0, Lcom/android/tools/r8/internal/F41;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F41;->a:Lcom/android/tools/r8/ClassConflictResolver;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F41;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method
