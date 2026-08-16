.class public final synthetic Lcom/android/tools/r8/internal/mC1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/F5;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/u1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mC1;->a:Lcom/android/tools/r8/graph/u1;

    iput p2, p0, Lcom/android/tools/r8/internal/mC1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mC1;->a:Lcom/android/tools/r8/graph/u1;

    iget v1, p0, Lcom/android/tools/r8/internal/mC1;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/u1;ILcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method
