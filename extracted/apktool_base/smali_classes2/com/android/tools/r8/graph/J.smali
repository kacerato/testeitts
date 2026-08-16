.class public final Lcom/android/tools/r8/graph/J;
.super Lcom/android/tools/r8/graph/G;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public o:Lcom/android/tools/r8/internal/Nu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;IILjava/util/ArrayList;)V
    .locals 7

    .line 4
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v6

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/G;)V
    .locals 9

    .line 1
    iget-object v1, p2, Lcom/android/tools/r8/graph/G;->e:Lcom/android/tools/r8/graph/M2;

    iget v2, p2, Lcom/android/tools/r8/graph/G;->g:I

    iget v3, p2, Lcom/android/tools/r8/graph/G;->f:I

    iget-object v4, p2, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    iget-object v5, p2, Lcom/android/tools/r8/graph/G;->i:Ljava/util/List;

    iget-object v6, p2, Lcom/android/tools/r8/graph/G;->j:Ljava/util/List;

    iget-object v7, p2, Lcom/android/tools/r8/graph/G;->l:Lcom/android/tools/r8/position/Position;

    iget-object v8, p2, Lcom/android/tools/r8/graph/G;->m:Lcom/android/tools/r8/internal/u8;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/internal/u8;)V

    .line 2
    iget p2, p2, Lcom/android/tools/r8/graph/G;->k:I

    iput p2, p0, Lcom/android/tools/r8/graph/G;->k:I

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/tools/r8/graph/J;

    iget-object p3, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/graph/J;-><init>(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/G;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;
    .locals 1

    .line 1
    sget-boolean p1, Lcom/android/tools/r8/graph/J;->p:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/graph/J;

    iget-object p3, p0, Lcom/android/tools/r8/graph/J;->o:Lcom/android/tools/r8/internal/Nu;

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/graph/J;-><init>(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/G;)V

    return-object p2
.end method
