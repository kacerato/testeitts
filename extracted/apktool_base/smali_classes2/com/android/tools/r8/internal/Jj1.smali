.class public final synthetic Lcom/android/tools/r8/internal/Jj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/m5;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/l5;

.field public final synthetic e:Lcom/android/tools/r8/internal/Df;

.field public final synthetic f:Lcom/android/tools/r8/graph/u1;

.field public final synthetic g:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/m5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/u1;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jj1;->a:Lcom/android/tools/r8/internal/m5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jj1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Jj1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Jj1;->d:Lcom/android/tools/r8/internal/l5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Jj1;->e:Lcom/android/tools/r8/internal/Df;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Jj1;->f:Lcom/android/tools/r8/graph/u1;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Jj1;->g:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jj1;->a:Lcom/android/tools/r8/internal/m5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jj1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Jj1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Jj1;->d:Lcom/android/tools/r8/internal/l5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Jj1;->e:Lcom/android/tools/r8/internal/Df;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Jj1;->f:Lcom/android/tools/r8/graph/u1;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Jj1;->g:Ljava/util/LinkedHashMap;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/u1;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
