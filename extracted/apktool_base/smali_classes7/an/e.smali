.class public Lan/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Appendable;

.field public b:C


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan/e;->a:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lan/e;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-char p1, p0, Lan/e;->b:C

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lan/e;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lan/e;->b:C

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()V
    .locals 2

    iget-char v0, p0, Lan/e;->b:C

    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lan/e;->a(C)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-char v0, p0, Lan/e;->b:C

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lan/e;->a(C)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-char v0, p0, Lan/e;->b:C

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lan/e;->a(C)V

    :cond_0
    return-void
.end method

.method public f(C)V
    .locals 0

    invoke-virtual {p0, p1}, Lan/e;->a(C)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lan/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[\\r\\n\\s]+"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lan/e;->b(Ljava/lang/String;)V

    return-void
.end method
