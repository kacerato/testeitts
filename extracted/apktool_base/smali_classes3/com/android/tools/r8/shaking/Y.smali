.class public abstract Lcom/android/tools/r8/shaking/Y;
.super Lcom/android/tools/r8/shaking/d0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/d0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/b1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/shaking/Y;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
