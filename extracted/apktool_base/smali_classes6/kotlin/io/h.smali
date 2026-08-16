.class public final Lkotlin/io/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/h$a;,
        Lkotlin/io/h$b;,
        Lkotlin/io/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXf/m<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/io/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/io/File;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/i;)V
    .locals 10
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 10
    invoke-direct/range {v1 .. v9}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/i;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 11
    sget-object p2, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/i;",
            "LMf/l<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "LMf/l<",
            "-",
            "Ljava/io/File;",
            "Lnf/P0;",
            ">;",
            "LMf/p<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lnf/P0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/io/h;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    .line 4
    iput-object p3, p0, Lkotlin/io/h;->c:LMf/l;

    .line 5
    iput-object p4, p0, Lkotlin/io/h;->d:LMf/l;

    .line 6
    iput-object p5, p0, Lkotlin/io/h;->e:LMf/p;

    .line 7
    iput p6, p0, Lkotlin/io/h;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;IILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 8
    sget-object p2, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V

    return-void
.end method

.method public static final synthetic c(Lkotlin/io/h;)Lkotlin/io/i;
    .locals 0

    iget-object p0, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    return-object p0
.end method

.method public static final synthetic d(Lkotlin/io/h;)I
    .locals 0

    iget p0, p0, Lkotlin/io/h;->f:I

    return p0
.end method

.method public static final synthetic e(Lkotlin/io/h;)LMf/l;
    .locals 0

    iget-object p0, p0, Lkotlin/io/h;->c:LMf/l;

    return-object p0
.end method

.method public static final synthetic f(Lkotlin/io/h;)LMf/p;
    .locals 0

    iget-object p0, p0, Lkotlin/io/h;->e:LMf/p;

    return-object p0
.end method

.method public static final synthetic g(Lkotlin/io/h;)LMf/l;
    .locals 0

    iget-object p0, p0, Lkotlin/io/h;->d:LMf/l;

    return-object p0
.end method

.method public static final synthetic h(Lkotlin/io/h;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lkotlin/io/h;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final i(I)Lkotlin/io/h;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    new-instance v7, Lkotlin/io/h;

    iget-object v1, p0, Lkotlin/io/h;->a:Ljava/io/File;

    iget-object v2, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    iget-object v3, p0, Lkotlin/io/h;->c:LMf/l;

    iget-object v4, p0, Lkotlin/io/h;->d:LMf/l;

    iget-object v5, p0, Lkotlin/io/h;->e:LMf/p;

    move-object v0, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V

    return-object v7

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth must be positive, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/io/h$b;

    invoke-direct {v0, p0}, Lkotlin/io/h$b;-><init>(Lkotlin/io/h;)V

    return-object v0
.end method

.method public final j(LMf/l;)Lkotlin/io/h;
    .locals 8
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/io/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/io/h;

    iget-object v2, p0, Lkotlin/io/h;->a:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    iget-object v5, p0, Lkotlin/io/h;->d:LMf/l;

    iget-object v6, p0, Lkotlin/io/h;->e:LMf/p;

    iget v7, p0, Lkotlin/io/h;->f:I

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V

    return-object v0
.end method

.method public final k(LMf/p;)Lkotlin/io/h;
    .locals 8
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/p<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lnf/P0;",
            ">;)",
            "Lkotlin/io/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/io/h;

    iget-object v2, p0, Lkotlin/io/h;->a:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    iget-object v4, p0, Lkotlin/io/h;->c:LMf/l;

    iget-object v5, p0, Lkotlin/io/h;->d:LMf/l;

    iget v7, p0, Lkotlin/io/h;->f:I

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V

    return-object v0
.end method

.method public final l(LMf/l;)Lkotlin/io/h;
    .locals 8
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/io/File;",
            "Lnf/P0;",
            ">;)",
            "Lkotlin/io/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/io/h;

    iget-object v2, p0, Lkotlin/io/h;->a:Ljava/io/File;

    iget-object v3, p0, Lkotlin/io/h;->b:Lkotlin/io/i;

    iget-object v4, p0, Lkotlin/io/h;->c:LMf/l;

    iget-object v6, p0, Lkotlin/io/h;->e:LMf/p;

    iget v7, p0, Lkotlin/io/h;->f:I

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;LMf/l;LMf/l;LMf/p;I)V

    return-object v0
.end method
