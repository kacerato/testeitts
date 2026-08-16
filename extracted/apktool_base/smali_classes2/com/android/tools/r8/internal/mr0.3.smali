.class public abstract Lcom/android/tools/r8/internal/mr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/16 v0, 0x10

    return v0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;
    .locals 8

    .line 2
    new-instance v7, Lcom/android/tools/r8/graph/G;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mr0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mr0;->a()I

    move-result v2

    const/16 v3, 0x10

    .line 3
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v7

    move-object v4, p1

    move-object v5, v6

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method public abstract b()Lcom/android/tools/r8/graph/G;
.end method
