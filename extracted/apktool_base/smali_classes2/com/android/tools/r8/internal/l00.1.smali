.class public final Lcom/android/tools/r8/internal/l00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/l00;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/cK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l00;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/cK;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 9
    iget-object p1, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/ji1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/ji1;-><init>(Lcom/android/tools/r8/internal/l00;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/H2;->c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoInterfacesWithInvokeSpecialToDefaultMethodIntoClassPolicy"

    return-object v0
.end method
