.class public Lx4/a$f;
.super LF7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final n:LF7/j;


# instance fields
.field public final m:Lx4/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx4/a$f$a;

    invoke-direct {v0}, Lx4/a$f$a;-><init>()V

    sput-object v0, Lx4/a$f;->n:LF7/j;

    return-void
.end method

.method public constructor <init>(Lx4/a$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p1}, Lx4/a$f;->v(Lx4/a$e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lx4/a$f;->n:LF7/j;

    invoke-direct {p0, v0, v1}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p1, p0, Lx4/a$f;->m:Lx4/a$e;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lx4/a$e;->d(Lx4/a$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LG7/b;

    new-instance v1, Lx4/a$f$b;

    invoke-direct {v1, p0, p1}, Lx4/a$f$b;-><init>(Lx4/a$f;Lx4/a$e;)V

    invoke-direct {v0, v1}, LG7/b;-><init>(LG7/b$b;)V

    invoke-virtual {p0, v0}, LF7/i;->b(LG7/a;)LF7/i;

    :cond_0
    new-instance v0, Lx4/a$f$c;

    invoke-direct {v0, p0, p1}, Lx4/a$f$c;-><init>(Lx4/a$f;Lx4/a$e;)V

    iput-object v0, p0, LF7/i;->j:LF7/c;

    return-void
.end method

.method public static synthetic u(Lx4/a$f;)Lx4/a$e;
    .locals 0

    iget-object p0, p0, Lx4/a$f;->m:Lx4/a$e;

    return-object p0
.end method

.method public static v(Lx4/a$e;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lx4/a$e;->f(Lx4/a$e;)LAc/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lx4/a$e;->f(Lx4/a$e;)LAc/b;

    move-result-object v1

    invoke-virtual {v1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Lx4/a$e;->a(Lx4/a$e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lx4/a$e;->a(Lx4/a$e;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx4/a$f;->m:Lx4/a$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lx4/a$e;->a(Lx4/a$e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
