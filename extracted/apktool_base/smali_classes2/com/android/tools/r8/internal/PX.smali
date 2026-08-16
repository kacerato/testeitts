.class public final Lcom/android/tools/r8/internal/PX;
.super Lcom/android/tools/r8/internal/TX;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/TX;-><init>(ILcom/android/tools/r8/internal/TX;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PX;->c:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/tools/r8/internal/SX;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/SX;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs a(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->d:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PX;->d:Ljava/util/ArrayList;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->d:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/tools/r8/internal/MX;

    invoke-static {p3}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/MX;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->g:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PX;->g:Ljava/util/ArrayList;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/RX;

    invoke-static {p2}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RX;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PX;->e:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/PX;->e:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/tools/r8/internal/QX;

    invoke-static {p3}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/QX;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PX;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PX;->b:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PX;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PX;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PX;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PX;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
