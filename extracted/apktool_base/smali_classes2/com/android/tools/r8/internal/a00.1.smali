.class public final Lcom/android/tools/r8/internal/a00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/t5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    iput-object p1, p0, Lcom/android/tools/r8/internal/a00;->b:Lcom/android/tools/r8/graph/t5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/a00;->b:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoDirectlyInstantiatedClassesPolicy"

    return-object v0
.end method
