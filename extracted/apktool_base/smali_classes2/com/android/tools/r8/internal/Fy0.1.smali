.class public final synthetic Lcom/android/tools/r8/internal/Fy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/AM;

.field public final synthetic c:Lcom/android/tools/r8/internal/U6;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/TH;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/U6;IILcom/android/tools/r8/internal/TH;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fy0;->b:Lcom/android/tools/r8/internal/AM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fy0;->c:Lcom/android/tools/r8/internal/U6;

    iput p3, p0, Lcom/android/tools/r8/internal/Fy0;->d:I

    iput p4, p0, Lcom/android/tools/r8/internal/Fy0;->e:I

    iput-object p5, p0, Lcom/android/tools/r8/internal/Fy0;->f:Lcom/android/tools/r8/internal/TH;

    iput p6, p0, Lcom/android/tools/r8/internal/Fy0;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fy0;->b:Lcom/android/tools/r8/internal/AM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fy0;->c:Lcom/android/tools/r8/internal/U6;

    iget v2, p0, Lcom/android/tools/r8/internal/Fy0;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/Fy0;->e:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/Fy0;->f:Lcom/android/tools/r8/internal/TH;

    iget v5, p0, Lcom/android/tools/r8/internal/Fy0;->g:I

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/o0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/AM;->a(Lcom/android/tools/r8/internal/U6;IILcom/android/tools/r8/internal/TH;ILcom/android/tools/r8/graph/o0;)V

    return-void
.end method
