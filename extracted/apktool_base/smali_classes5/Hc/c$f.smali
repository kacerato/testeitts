.class public final LHc/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:LHc/c$g;

.field public c:LHc/c$e;

.field public d:Ljava/lang/Throwable;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LHc/c$g;->Loading:LHc/c$g;

    iput-object v0, p0, LHc/c$f;->b:LHc/c$g;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LHc/c$f;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LHc/c$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, LHc/c$f;-><init>()V

    return-void
.end method

.method public static synthetic a(LHc/c$f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LHc/c$f;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(LHc/c$f;)LHc/c$e;
    .locals 0

    iget-object p0, p0, LHc/c$f;->c:LHc/c$e;

    return-object p0
.end method

.method public static synthetic c(LHc/c$f;LHc/c$e;)LHc/c$e;
    .locals 0

    iput-object p1, p0, LHc/c$f;->c:LHc/c$e;

    return-object p1
.end method

.method public static synthetic d(LHc/c$f;)LHc/c$g;
    .locals 0

    iget-object p0, p0, LHc/c$f;->b:LHc/c$g;

    return-object p0
.end method

.method public static synthetic e(LHc/c$f;LHc/c$g;)LHc/c$g;
    .locals 0

    iput-object p1, p0, LHc/c$f;->b:LHc/c$g;

    return-object p1
.end method

.method public static synthetic f(LHc/c$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LHc/c$f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(LHc/c$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LHc/c$f;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(LHc/c$f;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, LHc/c$f;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static synthetic i(LHc/c$f;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, LHc/c$f;->d:Ljava/lang/Throwable;

    return-object p1
.end method
