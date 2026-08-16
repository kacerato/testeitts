.class public final Lcom/android/tools/r8/internal/Ny;
.super Lcom/android/tools/r8/shaking/y;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Oy;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Oy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ny;->b:Lcom/android/tools/r8/internal/Oy;

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ny;->b:Lcom/android/tools/r8/internal/Oy;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/shaking/y;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
