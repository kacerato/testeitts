.class public final Lcom/android/tools/r8/shaking/K0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Lcom/android/tools/r8/shaking/R0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/K0;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/K0;->b:Lcom/android/tools/r8/shaking/R0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/K0;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/K0;->b:Lcom/android/tools/r8/shaking/R0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method
