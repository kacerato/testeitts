.class public LH4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field public a:LE3/a;


# direct methods
.method public constructor <init>(LE3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/b;->a:LE3/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v2}, LE3/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()LE3/c;
    .locals 1

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->d()LE3/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->e()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 6

    sget-object v0, LH4/b$a;->a:[I

    iget-object v1, p0, LH4/b;->a:LE3/a;

    invoke-virtual {v1}, LE3/a;->h()LE3/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    return v5

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v4

    :cond_3
    return v3

    :cond_4
    return v1
.end method
