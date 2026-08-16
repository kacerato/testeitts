.class public final Lcom/android/tools/r8/internal/yr;
.super Lcom/android/tools/r8/graph/a1;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/IH;

.field public final synthetic h:Lcom/android/tools/r8/internal/o50;

.field public final synthetic i:Lcom/android/tools/r8/internal/D60;

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Lcom/android/tools/r8/internal/zr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zr;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/internal/D60;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yr;->k:Lcom/android/tools/r8/internal/zr;

    iput-object p5, p0, Lcom/android/tools/r8/internal/yr;->g:Lcom/android/tools/r8/internal/IH;

    iput-object p6, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    iput-object p7, p0, Lcom/android/tools/r8/internal/yr;->i:Lcom/android/tools/r8/internal/D60;

    iput-object p8, p0, Lcom/android/tools/r8/internal/yr;->j:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/r8/graph/a1;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O0$b;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/O0$b;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/yr;->l:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/yr;->g:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/yr;->g:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/IH;->d(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->c()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/yr;->k:Lcom/android/tools/r8/internal/zr;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zr;->b:Lcom/android/tools/r8/internal/K60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/B60;

    iget-object v4, p0, Lcom/android/tools/r8/internal/yr;->i:Lcom/android/tools/r8/internal/D60;

    iget-object v5, p0, Lcom/android/tools/r8/internal/yr;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/B60;

    :goto_1
    if-ge v1, v2, :cond_3

    new-instance v4, Lcom/android/tools/r8/internal/UU;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K60;->a(I)I

    move-result v6

    invoke-direct {v4, v6, v3}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/o50;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yr;->h:Lcom/android/tools/r8/internal/o50;

    iput-object p1, v0, Lcom/android/tools/r8/internal/o50;->b:Ljava/lang/Object;

    return-void
.end method
