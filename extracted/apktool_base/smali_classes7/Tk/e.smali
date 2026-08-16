.class public LTk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LIi/J;

    invoke-direct {v0}, LIi/J;-><init>()V

    invoke-direct {p0, v0}, LTk/e;-><init>(LBi/D;)V

    return-void
.end method

.method public constructor <init>(LBi/D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTk/e;->a:LBi/D;

    return-void
.end method

.method public static synthetic a(LTk/e;)LBi/D;
    .locals 0

    iget-object p0, p0, LTk/e;->a:LBi/D;

    return-object p0
.end method


# virtual methods
.method public b([C)LQk/u;
    .locals 1

    new-instance v0, LTk/e$a;

    invoke-direct {v0, p0, p1}, LTk/e$a;-><init>(LTk/e;[C)V

    return-object v0
.end method
