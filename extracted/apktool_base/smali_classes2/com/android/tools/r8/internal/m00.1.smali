.class public final Lcom/android/tools/r8/internal/m00;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/m00;->b:Lcom/android/tools/r8/graph/t5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 2

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/m00;->b:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/m00;->b:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoInterfacesWithUnknownSubtypesPolicy"

    return-object v0
.end method
