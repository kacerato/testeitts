.class public Lx0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/c;
.end annotation

.annotation build LG0/F;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:[B

.field public final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lx0/d;->i:I

    iput v0, p0, Lx0/d$a;->b:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lx0/d$a;->c:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lx0/d$a;->d:[B

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lx0/d$a;->e:Landroid/os/Bundle;

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lx0/d$a;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The supplied url [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not match Patterns.WEB_URL!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lx0/d;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lx0/d$a;->d:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lx0/d$a;->d:[B

    :cond_0
    new-instance v0, Lx0/d;

    iget-object v3, p0, Lx0/d$a;->a:Ljava/lang/String;

    iget v4, p0, Lx0/d$a;->b:I

    iget-wide v5, p0, Lx0/d$a;->c:J

    iget-object v7, p0, Lx0/d$a;->d:[B

    iget-object v8, p0, Lx0/d$a;->e:Landroid/os/Bundle;

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lx0/d;-><init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lx0/d$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Header name cannot be null or empty!"

    invoke-static {p1, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lx0/d$a;->e:Landroid/os/Bundle;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c([B)Lx0/d$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lx0/d$a;->d:[B

    return-object p0
.end method

.method public d(I)Lx0/d$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    sget v1, Lx0/d;->q:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Unrecognized http method code."

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lx0/d$a;->b:I

    return-object p0
.end method

.method public e(J)Lx0/d$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The specified timeout must be non-negative."

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lx0/d$a;->c:J

    return-object p0
.end method
