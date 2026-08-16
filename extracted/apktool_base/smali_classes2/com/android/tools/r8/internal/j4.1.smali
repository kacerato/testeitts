.class public Lcom/android/tools/r8/internal/j4;
.super Lcom/android/tools/r8/internal/z4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/o1;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/z4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/internal/Xr0;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStreamWriter;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/graph/J2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/j4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getReference()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
