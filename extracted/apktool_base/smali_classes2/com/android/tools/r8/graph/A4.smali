.class public final Lcom/android/tools/r8/graph/A4;
.super Lcom/android/tools/r8/graph/H0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/y4;


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/H0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method


# virtual methods
.method public final K()Lcom/android/tools/r8/graph/u2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    sget-boolean v1, Lcom/android/tools/r8/graph/A4;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Lcom/android/tools/r8/graph/A4;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A4;->K()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    return-object v0
.end method
