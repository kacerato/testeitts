.class public abstract Loh/T;
.super Loh/O;
.source "SourceFile"


# instance fields
.field public final b:Loh/L;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1}, Loh/O;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Loh/L;->a(II)Loh/L;

    move-result-object p1

    iput-object p1, p0, Loh/T;->b:Loh/L;

    return-void
.end method


# virtual methods
.method public final b(Loh/B;)Loh/B;
    .locals 3

    iget-object v0, p0, Loh/O;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c([B)Loh/B;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-virtual {p0, p1}, Loh/T;->b(Loh/B;)Loh/B;

    move-result-object p1

    return-object p1
.end method

.method public d(Loh/E;)Loh/B;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected implicit constructed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Loh/C0;)Loh/B;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected implicit primitive encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Loh/M;Z)Loh/B;
    .locals 0

    invoke-static {p1}, Loh/V;->c(Loh/M;)Loh/M;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Loh/M;->N(ZLoh/T;)Loh/B;

    move-result-object p1

    invoke-virtual {p0, p1}, Loh/T;->b(Loh/B;)Loh/B;

    move-result-object p1

    return-object p1
.end method

.method public final g()Loh/L;
    .locals 1

    iget-object v0, p0, Loh/T;->b:Loh/L;

    return-object v0
.end method
