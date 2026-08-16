.class public final synthetic Lcom/android/tools/r8/internal/do1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o3;

.field public final synthetic c:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic g:Lcom/android/tools/r8/internal/og;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/do1;->b:Lcom/android/tools/r8/internal/o3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/do1;->c:Lcom/android/tools/r8/internal/VJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/do1;->d:Lcom/android/tools/r8/graph/H5;

    iput p4, p0, Lcom/android/tools/r8/internal/do1;->e:I

    iput-object p5, p0, Lcom/android/tools/r8/internal/do1;->f:Lcom/android/tools/r8/internal/xw0;

    iput-object p6, p0, Lcom/android/tools/r8/internal/do1;->g:Lcom/android/tools/r8/internal/og;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/do1;->b:Lcom/android/tools/r8/internal/o3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/do1;->c:Lcom/android/tools/r8/internal/VJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/do1;->d:Lcom/android/tools/r8/graph/H5;

    iget v3, p0, Lcom/android/tools/r8/internal/do1;->e:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/do1;->f:Lcom/android/tools/r8/internal/xw0;

    iget-object v5, p0, Lcom/android/tools/r8/internal/do1;->g:Lcom/android/tools/r8/internal/og;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/o3;->b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/og;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
