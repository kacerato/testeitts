.class public final Lcom/android/tools/r8/internal/Cc0;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/graph/y;

.field public final synthetic f:Lcom/android/tools/r8/internal/Dc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dc0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cc0;->f:Lcom/android/tools/r8/internal/Dc0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Cc0;->e:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cc0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cc0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cc0;->f:Lcom/android/tools/r8/internal/Dc0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Dc0;->g:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_1
    return-void
.end method
