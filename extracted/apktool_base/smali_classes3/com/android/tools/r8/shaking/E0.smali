.class public final Lcom/android/tools/r8/shaking/E0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/E0;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/E0;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/E0;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/E0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    return-void
.end method
