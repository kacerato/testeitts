.class public final Lcom/android/tools/r8/shaking/D0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/shaking/x;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/D0;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/D0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/D0;->c:Lcom/android/tools/r8/shaking/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/D0;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/D0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/D0;->c:Lcom/android/tools/r8/shaking/x;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    return-void
.end method
