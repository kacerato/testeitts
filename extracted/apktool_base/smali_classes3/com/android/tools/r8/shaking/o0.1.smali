.class public final Lcom/android/tools/r8/shaking/o0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:I

.field public final d:Lcom/android/tools/r8/shaking/X1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/o0;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/o0;->b:Lcom/android/tools/r8/graph/H5;

    iput p3, p0, Lcom/android/tools/r8/shaking/o0;->c:I

    iput-object p4, p0, Lcom/android/tools/r8/shaking/o0;->d:Lcom/android/tools/r8/shaking/X1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/o0;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/o0;->b:Lcom/android/tools/r8/graph/H5;

    iget v3, p0, Lcom/android/tools/r8/shaking/o0;->c:I

    iget-object v4, p0, Lcom/android/tools/r8/shaking/o0;->d:Lcom/android/tools/r8/shaking/X1;

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method
