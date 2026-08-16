.class public final Lcom/android/tools/r8/internal/TS;
.super Lcom/android/tools/r8/internal/SS;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/SS;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/SS;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    check-cast p1, Lcom/android/tools/r8/internal/TS;

    iget-object p1, p1, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/TS;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    return v0
.end method
