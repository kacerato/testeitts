.class public Lcom/android/tools/r8/graph/H3$a;
.super Lcom/android/tools/r8/graph/H3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field final b:Lcom/android/tools/r8/graph/H3$i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/H3$e;-><init>(Lcom/android/tools/r8/graph/H3$k;)V

    sget-boolean p2, Lcom/android/tools/r8/graph/H3$a;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$a;->b:Lcom/android/tools/r8/graph/H3$i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$a;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$a;->b:Lcom/android/tools/r8/graph/H3$i;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$a;->b:Lcom/android/tools/r8/graph/H3$i;

    if-ne v0, p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H3$e;->j()Lcom/android/tools/r8/graph/H3$k;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/H3$a;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$a;->b:Lcom/android/tools/r8/graph/H3$i;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/graph/H3$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/graph/H3$a;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
