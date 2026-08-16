.class public Lcom/android/tools/r8/graph/H3$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/android/tools/r8/graph/H3$e;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    iput-object p3, p0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    sget-boolean p1, Lcom/android/tools/r8/graph/H3$f;->d:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$f;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 4
    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/b4;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    if-ne v1, p1, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/H3$f;

    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    :cond_1
    invoke-direct {v1, v2, v0, p1}, Lcom/android/tools/r8/graph/H3$f;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    return-object v0
.end method
