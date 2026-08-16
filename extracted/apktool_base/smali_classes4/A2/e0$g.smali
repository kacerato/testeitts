.class public abstract LA2/e0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LA2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/d0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/d0<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/e0$g;->a:LA2/d0;

    return-void
.end method

.method public static b(LA2/d0;)LA2/e0$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/d0<",
            "TN;>;)",
            "LA2/e0$g<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, LA2/e0$g$a;

    invoke-direct {v1, p0, v0}, LA2/e0$g$a;-><init>(LA2/d0;Ljava/util/Set;)V

    return-object v1
.end method

.method public static c(LA2/d0;)LA2/e0$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/d0<",
            "TN;>;)",
            "LA2/e0$g<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/e0$g$b;

    invoke-direct {v0, p0}, LA2/e0$g$b;-><init>(LA2/d0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;)",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    sget-object v0, LA2/e0$f;->BACK:LA2/e0$f;

    invoke-virtual {p0, p1, v0}, LA2/e0$g;->f(Ljava/util/Iterator;LA2/e0$f;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;)",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    new-instance p1, LA2/e0$g$d;

    invoke-direct {p1, p0, v1, v0}, LA2/e0$g$d;-><init>(LA2/e0$g;Ljava/util/Deque;Ljava/util/Deque;)V

    return-object p1
.end method

.method public final e(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;)",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    sget-object v0, LA2/e0$f;->FRONT:LA2/e0$f;

    invoke-virtual {p0, p1, v0}, LA2/e0$g;->f(Ljava/util/Iterator;LA2/e0$f;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/Iterator;LA2/e0$f;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;",
            "LA2/e0$f;",
            ")",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    new-instance p1, LA2/e0$g$c;

    invoke-direct {p1, p0, v0, p2}, LA2/e0$g$c;-><init>(LA2/e0$g;Ljava/util/Deque;LA2/e0$f;)V

    return-object p1
.end method

.method public abstract g(Ljava/util/Deque;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method
