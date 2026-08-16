.class public final Lcom/android/tools/r8/internal/ro;
.super Lcom/android/tools/r8/graph/a1;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/C7;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/internal/ro;->g:Lcom/android/tools/r8/internal/C7;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/a1;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/S0;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/a1;->a(Lcom/android/tools/r8/graph/S0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ro;->g:Lcom/android/tools/r8/internal/C7;

    iget-object p1, p1, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method
