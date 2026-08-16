.class public final synthetic Lcom/android/tools/r8/internal/Pj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/m5;

.field public final synthetic c:Ljava/util/LinkedHashMap;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;

.field public final synthetic e:Lcom/android/tools/r8/graph/H5;

.field public final synthetic f:Lcom/android/tools/r8/internal/l5;

.field public final synthetic g:Lcom/android/tools/r8/internal/Df;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/m5;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pj1;->b:Lcom/android/tools/r8/internal/m5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pj1;->c:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pj1;->d:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Pj1;->e:Lcom/android/tools/r8/graph/H5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Pj1;->f:Lcom/android/tools/r8/internal/l5;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Pj1;->g:Lcom/android/tools/r8/internal/Df;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj1;->b:Lcom/android/tools/r8/internal/m5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pj1;->c:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pj1;->d:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pj1;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pj1;->f:Lcom/android/tools/r8/internal/l5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Pj1;->g:Lcom/android/tools/r8/internal/Df;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
