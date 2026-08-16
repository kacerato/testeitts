.class public LLc/g;
.super Lge/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLc/g$c;,
        LLc/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lge/X<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final y:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LLc/g$c<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LLc/g$b<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lge/X;-><init>()V

    .line 2
    new-instance v0, LLc/e;

    invoke-direct {v0}, LLc/e;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, LLc/f;

    invoke-direct {v0}, LLc/f;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lge/X;-><init>(I)V

    .line 5
    new-instance p1, LLc/e;

    invoke-direct {p1}, LLc/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    .line 6
    new-instance p1, LLc/f;

    invoke-direct {p1}, LLc/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "loadFactor"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Lge/X;-><init>(IF)V

    .line 8
    new-instance p1, LLc/e;

    invoke-direct {p1}, LLc/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    .line 9
    new-instance p1, LLc/f;

    invoke-direct {p1}, LLc/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "loadFactor",
            "noEntryKey"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lge/X;-><init>(IFJ)V

    .line 11
    new-instance p1, LLc/e;

    invoke-direct {p1}, LLc/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    .line 12
    new-instance p1, LLc/f;

    invoke-direct {p1}, LLc/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lee/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lge/X;-><init>(Lee/V;)V

    .line 14
    new-instance p1, LLc/e;

    invoke-direct {p1}, LLc/e;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    .line 15
    new-instance p1, LLc/f;

    invoke-direct {p1}, LLc/f;-><init>()V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static synthetic uf()LLc/g$c;
    .locals 1

    invoke-static {}, LLc/g;->yf()LLc/g$c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic vf()LLc/g$b;
    .locals 1

    invoke-static {}, LLc/g;->zf()LLc/g$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic yf()LLc/g$c;
    .locals 2

    new-instance v0, LLc/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LLc/g$c;-><init>(LLc/g$a;)V

    return-object v0
.end method

.method public static synthetic zf()LLc/g$b;
    .locals 2

    new-instance v0, LLc/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LLc/g$b;-><init>(LLc/g$a;)V

    return-object v0
.end method


# virtual methods
.method public wf(Ljava/lang/Object;LLc/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "procedure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LLc/b<",
            "TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LLc/g;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLc/g$b;

    invoke-virtual {v0}, LLc/g$b;->a()V

    iput-object p1, v0, LLc/g$b;->c:Ljava/lang/Object;

    iput-object p2, v0, LLc/g$b;->d:LLc/b;

    iget-object p1, v0, LLc/g$b;->f:Lhe/k0;

    invoke-super {p0, p1}, Lge/X;->S(Lhe/k0;)Z

    iget-object p1, v0, LLc/g$b;->a:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    return p1
.end method

.method public xf(Ljava/lang/Object;LLc/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "procedure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LLc/d<",
            "TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, LLc/g;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLc/g$c;

    invoke-virtual {v0}, LLc/g$c;->a()V

    iput-object p1, v0, LLc/g$c;->b:Ljava/lang/Object;

    iput-object p2, v0, LLc/g$c;->c:LLc/d;

    iget-object p1, v0, LLc/g$c;->d:Lhe/k0;

    invoke-super {p0, p1}, Lge/X;->S(Lhe/k0;)Z

    iget-object p1, v0, LLc/g$c;->a:[Ljava/lang/Object;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method
