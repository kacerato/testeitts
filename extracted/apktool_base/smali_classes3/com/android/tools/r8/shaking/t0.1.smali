.class public final Lcom/android/tools/r8/shaking/t0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/t0;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t0;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t0;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
