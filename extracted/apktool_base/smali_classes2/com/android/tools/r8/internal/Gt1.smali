.class public final synthetic Lcom/android/tools/r8/internal/Gt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/t70;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/ea;

.field public final synthetic e:Lcom/android/tools/r8/internal/k40;

.field public final synthetic f:Lcom/android/tools/r8/internal/dX;

.field public final synthetic g:Lcom/android/tools/r8/internal/Df;

.field public final synthetic h:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gt1;->b:Lcom/android/tools/r8/internal/t70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gt1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Gt1;->d:Lcom/android/tools/r8/internal/ea;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Gt1;->e:Lcom/android/tools/r8/internal/k40;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Gt1;->f:Lcom/android/tools/r8/internal/dX;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Gt1;->g:Lcom/android/tools/r8/internal/Df;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Gt1;->h:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt1;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gt1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gt1;->d:Lcom/android/tools/r8/internal/ea;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Gt1;->e:Lcom/android/tools/r8/internal/k40;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Gt1;->f:Lcom/android/tools/r8/internal/dX;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gt1;->g:Lcom/android/tools/r8/internal/Df;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Gt1;->h:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    return-object v0
.end method
