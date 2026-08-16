.class public final Lcom/android/tools/r8/internal/RT;
.super Lcom/android/tools/r8/internal/mu0;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/YQ;[Lcom/android/tools/r8/internal/YQ;[ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p6, v0}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;I)V

    invoke-static {p3}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RT;->f:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RT;->g:Ljava/util/ArrayList;

    invoke-static {p5}, Lcom/android/tools/r8/internal/uw0;->a([I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RT;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/DX;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/RT;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Lcom/android/tools/r8/internal/XQ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RT;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Lcom/android/tools/r8/internal/XQ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RT;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/RT;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/RT;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/RT;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/mu0;->d:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    iget-object v7, p0, Lcom/android/tools/r8/internal/J2;->b:Ljava/lang/String;

    move-object v1, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J2;->a(Lcom/android/tools/r8/internal/Q2;)V

    return-void
.end method
