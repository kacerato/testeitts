.class public abstract Lcom/android/tools/r8/internal/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/Cd;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    iput v0, p0, Lcom/android/tools/r8/internal/ge;->a:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Cd;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "TypeAnnotation requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Cd;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;
    .locals 0

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 p2, 0x60000

    if-lt p1, p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/PX;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/PX;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Module requires ASM6"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz p1, :cond_0

    .line 26
    new-instance p2, Lcom/android/tools/r8/internal/tw;

    invoke-direct {p2, p5}, Lcom/android/tools/r8/internal/tw;-><init>(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cd;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 p3, 0x80000

    if-ge p1, p3, :cond_1

    const/high16 p1, 0x10000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Records requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p6}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz p1, :cond_0

    .line 23
    new-instance p2, Lcom/android/tools/r8/internal/LD;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/LD;-><init>()V

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/K4;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/Cd;->g:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Cd;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget p1, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 v0, 0x70000

    if-lt p1, v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestHost requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 v1, 0x80000

    if-lt v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Cd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Record requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 v1, 0x70000

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/Cd;->i:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Cd;->i:Ljava/util/List;

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestMember requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ge;->a:I

    const/high16 v1, 0x90000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ge;->b:Lcom/android/tools/r8/internal/Cd;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/Cd;->j:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/Cd;->j:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PermittedSubclasses requires ASM9"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
