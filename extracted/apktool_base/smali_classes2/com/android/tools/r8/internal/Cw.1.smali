.class public abstract Lcom/android/tools/r8/internal/Cw;
.super Lcom/android/tools/r8/internal/Dw;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/graph/y;

.field public final h:Lcom/android/tools/r8/internal/fB;

.field public final i:Lcom/android/tools/r8/graph/u1;

.field public final j:Lcom/android/tools/r8/internal/f80;

.field public final k:Lcom/android/tools/r8/internal/Yx0;

.field public final l:Lcom/android/tools/r8/internal/Cw;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/tZ;)V
    .locals 1

    invoke-direct {p0, p4}, Lcom/android/tools/r8/internal/Dw;-><init>(Lcom/android/tools/r8/internal/tZ;)V

    new-instance p4, Lcom/android/tools/r8/internal/Yx0;

    const/4 v0, 0x2

    invoke-direct {p4, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/Cw;->k:Lcom/android/tools/r8/internal/Yx0;

    iput-object p0, p0, Lcom/android/tools/r8/internal/Cw;->l:Lcom/android/tools/r8/internal/Cw;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cw;->g:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cw;->h:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cw;->i:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Cw;->j:Lcom/android/tools/r8/internal/f80;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/android/tools/r8/graph/F5;)I
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw;->k:Lcom/android/tools/r8/internal/Yx0;

    new-instance v1, Lcom/android/tools/r8/internal/zw;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zw;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw;->k:Lcom/android/tools/r8/internal/Yx0;

    new-instance v1, Lcom/android/tools/r8/internal/sC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sC0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method
