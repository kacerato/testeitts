.class public final Lcom/android/tools/r8/internal/i60;
.super Lcom/android/tools/r8/internal/bT;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/lT;

.field public final b:Lcom/android/tools/r8/internal/qd0;

.field public final c:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/bT;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/mT;->a:Lcom/android/tools/r8/internal/lT;

    iput-object v0, p0, Lcom/android/tools/r8/internal/i60;->a:Lcom/android/tools/r8/internal/lT;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/i60;->c:Lcom/android/tools/r8/internal/qd0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)I
    .locals 1

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/i60;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/android/tools/r8/internal/uT;
    .locals 2

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/j60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/i60;->a:Lcom/android/tools/r8/internal/lT;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/j60;-><init>(Lcom/android/tools/r8/internal/lT;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;I)V
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/i60;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;I)Z
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/i60;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
