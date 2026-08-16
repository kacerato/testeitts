.class public final Lcom/android/tools/r8/shaking/n0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/n0;->a:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n0;->a:Lcom/android/tools/r8/graph/F5;

    sget-object v1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/o3;

    move-result-object v2

    iget v3, v2, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 v3, v3, 0x18

    iput v3, v2, Lcom/android/tools/r8/graph/o3;->b:I

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method
