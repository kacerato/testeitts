.class public Ld8/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:LG8/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "ipp"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/p;->a:Ljava/lang/String;

    iput-object p2, p0, Ld8/p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LG8/a;
    .locals 7

    iget-object v0, p0, Ld8/p;->c:LG8/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld8/p;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ld8/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v3, v2, :cond_3

    aget-object v2, v0, v3

    new-instance v5, LG8/a;

    sget-object v6, LG8/a$a;->Folder:LG8/a$a;

    invoke-direct {v5, v6, v2}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    iget-object v2, p0, Ld8/p;->c:LG8/a;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, LG8/a;->a(LG8/a;)LG8/a;

    goto :goto_1

    :cond_1
    iput-object v5, p0, Ld8/p;->c:LG8/a;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_3
    new-instance v2, LG8/a;

    sget-object v3, LG8/a$a;->Shader:LG8/a$a;

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-object v0, v0, v5

    invoke-direct {v2, v3, v0}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LG8/a;->a(LG8/a;)LG8/a;

    goto :goto_2

    :cond_4
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-instance v1, LG8/a;

    sget-object v2, LG8/a$a;->Folder:LG8/a$a;

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    iput-object v1, p0, Ld8/p;->c:LG8/a;

    new-instance v2, LG8/a;

    sget-object v3, LG8/a$a;->Shader:LG8/a$a;

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LG8/a;->a(LG8/a;)LG8/a;

    iget-object v0, p0, Ld8/p;->c:LG8/a;

    return-object v0

    :cond_5
    array-length v1, v0

    if-ne v1, v4, :cond_6

    new-instance v1, LG8/a;

    sget-object v2, LG8/a$a;->Shader:LG8/a$a;

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    iput-object v1, p0, Ld8/p;->c:LG8/a;

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Missing material shader name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v0, LG8/a;

    sget-object v1, LG8/a$a;->Shader:LG8/a$a;

    iget-object v2, p0, Ld8/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Ld8/p;->c:LG8/a;

    :goto_2
    iget-object v0, p0, Ld8/p;->c:LG8/a;

    return-object v0
.end method
