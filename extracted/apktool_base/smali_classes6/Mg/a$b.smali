.class public abstract LMg/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final b:LTg/j;

.field public c:Z

.field public d:J

.field public final synthetic e:LMg/a;


# direct methods
.method public constructor <init>(LMg/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, LMg/a$b;->e:LMg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LTg/j;

    iget-object p1, p1, LMg/a;->d:LTg/e;

    invoke-interface {p1}, LTg/y;->a0()LTg/z;

    move-result-object p1

    invoke-direct {v0, p1}, LTg/j;-><init>(LTg/z;)V

    iput-object v0, p0, LMg/a$b;->b:LTg/j;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LMg/a$b;->d:J

    return-void
.end method

.method public synthetic constructor <init>(LMg/a;LMg/a$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, LMg/a$b;-><init>(LMg/a;)V

    return-void
.end method


# virtual methods
.method public K(LTg/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LMg/a$b;->e:LMg/a;

    iget-object v0, v0, LMg/a;->d:LTg/e;

    invoke-interface {v0, p1, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, LMg/a$b;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LMg/a$b;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-wide p1

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, LMg/a$b;->a(ZLjava/io/IOException;)V

    throw p1
.end method

.method public final a(ZLjava/io/IOException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a$b;->e:LMg/a;

    iget v1, v0, LMg/a;->f:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LMg/a$b;->b:LTg/j;

    invoke-virtual {v0, v1}, LMg/a;->g(LTg/j;)V

    iget-object v5, p0, LMg/a$b;->e:LMg/a;

    iput v2, v5, LMg/a;->f:I

    iget-object v3, v5, LMg/a;->c:LKg/f;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, LMg/a$b;->d:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, LKg/f;->r(ZLLg/c;JLjava/io/IOException;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LMg/a$b;->e:LMg/a;

    iget v0, v0, LMg/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LMg/a$b;->b:LTg/j;

    return-object v0
.end method
