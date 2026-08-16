.class public final Lcom/android/tools/r8/shaking/r0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/graph/D5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/r0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/r0;->b:Lcom/android/tools/r8/graph/D5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/tools/r8/shaking/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/r0;->a:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/r0;->b:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/ns0;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
