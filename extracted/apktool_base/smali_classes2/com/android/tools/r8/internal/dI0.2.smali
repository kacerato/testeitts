.class public final synthetic Lcom/android/tools/r8/internal/dI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/I00;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;

.field public final synthetic e:Lcom/android/tools/r8/internal/IH;

.field public final synthetic f:Lcom/android/tools/r8/internal/IH;

.field public final synthetic g:Lcom/android/tools/r8/internal/H00;

.field public final synthetic h:Lcom/android/tools/r8/internal/ea;

.field public final synthetic i:Lcom/android/tools/r8/graph/H5;

.field public final synthetic j:Lcom/android/tools/r8/internal/Df;

.field public final synthetic k:Lcom/android/tools/r8/internal/IH;

.field public final synthetic l:Lcom/android/tools/r8/graph/G;

.field public final synthetic m:Lcom/android/tools/r8/internal/IH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/I00;ZLcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/H00;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dI0;->b:Lcom/android/tools/r8/internal/I00;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/dI0;->c:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/dI0;->d:Lcom/android/tools/r8/internal/C7;

    iput-object p4, p0, Lcom/android/tools/r8/internal/dI0;->e:Lcom/android/tools/r8/internal/IH;

    iput-object p5, p0, Lcom/android/tools/r8/internal/dI0;->f:Lcom/android/tools/r8/internal/IH;

    iput-object p6, p0, Lcom/android/tools/r8/internal/dI0;->g:Lcom/android/tools/r8/internal/H00;

    iput-object p7, p0, Lcom/android/tools/r8/internal/dI0;->h:Lcom/android/tools/r8/internal/ea;

    iput-object p8, p0, Lcom/android/tools/r8/internal/dI0;->i:Lcom/android/tools/r8/graph/H5;

    iput-object p9, p0, Lcom/android/tools/r8/internal/dI0;->j:Lcom/android/tools/r8/internal/Df;

    iput-object p10, p0, Lcom/android/tools/r8/internal/dI0;->k:Lcom/android/tools/r8/internal/IH;

    iput-object p11, p0, Lcom/android/tools/r8/internal/dI0;->l:Lcom/android/tools/r8/graph/G;

    iput-object p12, p0, Lcom/android/tools/r8/internal/dI0;->m:Lcom/android/tools/r8/internal/IH;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/tools/r8/internal/dI0;->b:Lcom/android/tools/r8/internal/I00;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dI0;->c:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/dI0;->d:Lcom/android/tools/r8/internal/C7;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dI0;->e:Lcom/android/tools/r8/internal/IH;

    iget-object v4, p0, Lcom/android/tools/r8/internal/dI0;->f:Lcom/android/tools/r8/internal/IH;

    iget-object v5, p0, Lcom/android/tools/r8/internal/dI0;->g:Lcom/android/tools/r8/internal/H00;

    iget-object v6, p0, Lcom/android/tools/r8/internal/dI0;->h:Lcom/android/tools/r8/internal/ea;

    iget-object v7, p0, Lcom/android/tools/r8/internal/dI0;->i:Lcom/android/tools/r8/graph/H5;

    iget-object v8, p0, Lcom/android/tools/r8/internal/dI0;->j:Lcom/android/tools/r8/internal/Df;

    iget-object v9, p0, Lcom/android/tools/r8/internal/dI0;->k:Lcom/android/tools/r8/internal/IH;

    iget-object v10, p0, Lcom/android/tools/r8/internal/dI0;->l:Lcom/android/tools/r8/graph/G;

    iget-object v11, p0, Lcom/android/tools/r8/internal/dI0;->m:Lcom/android/tools/r8/internal/IH;

    move-object v12, p1

    check-cast v12, Lcom/android/tools/r8/internal/W9;

    invoke-virtual/range {v0 .. v12}, Lcom/android/tools/r8/internal/I00;->a(ZLcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/H00;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/W9;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
