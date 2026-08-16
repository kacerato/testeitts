.class public final LSf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LSf/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSf/a;

    invoke-direct {v0}, LSf/a;-><init>()V

    sput-object v0, LSf/a;->a:LSf/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LSf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LSf/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LSf/b;

    invoke-direct {v0}, LSf/b;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;LMf/q;)LSf/f;
    .locals 1
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LMf/q<",
            "-",
            "LWf/n<",
            "*>;-TT;-TT;",
            "Lnf/P0;",
            ">;)",
            "LSf/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LSf/a$a;

    invoke-direct {v0, p1, p2}, LSf/a$a;-><init>(Ljava/lang/Object;LMf/q;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;LMf/q;)LSf/f;
    .locals 1
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LMf/q<",
            "-",
            "LWf/n<",
            "*>;-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "LSf/f<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "onChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LSf/a$b;

    invoke-direct {v0, p1, p2}, LSf/a$b;-><init>(Ljava/lang/Object;LMf/q;)V

    return-object v0
.end method
