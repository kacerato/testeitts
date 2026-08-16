.class public final LSe/e;
.super LBe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/e$a;
    }
.end annotation


# static fields
.field public static final c:LBe/J;

.field public static final d:LBe/J$c;

.field public static final e:LDe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSe/e;

    invoke-direct {v0}, LSe/e;-><init>()V

    sput-object v0, LSe/e;->c:LBe/J;

    new-instance v0, LSe/e$a;

    invoke-direct {v0}, LSe/e$a;-><init>()V

    sput-object v0, LSe/e;->d:LBe/J$c;

    invoke-static {}, LDe/d;->b()LDe/c;

    move-result-object v0

    sput-object v0, LSe/e;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/J;-><init>()V

    return-void
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    sget-object v0, LSe/e;->d:LBe/J$c;

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)LDe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, LSe/e;->e:LDe/c;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support delayed execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support periodic execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
