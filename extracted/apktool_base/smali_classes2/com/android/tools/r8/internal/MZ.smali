.class public final Lcom/android/tools/r8/internal/MZ;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/shaking/y1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/MZ;->b:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/MZ;->b:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/t1;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCheckDiscard"

    return-object v0
.end method
