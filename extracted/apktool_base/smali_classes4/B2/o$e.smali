.class public LB2/o$e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:LB2/G;


# direct methods
.method public constructor <init>(LB2/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB2/G;

    iput-object p1, p0, LB2/o$e;->b:LB2/G;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LB2/o$e;->b:LB2/G;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LB2/o$e;->b:LB2/G;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, LB2/G;->a(B)LB2/G;

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, LB2/o$e;->b:LB2/G;

    invoke-interface {v0, p1}, LB2/G;->b([B)LB2/G;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, LB2/o$e;->b:LB2/G;

    invoke-interface {v0, p1, p2, p3}, LB2/G;->e([BII)LB2/G;

    return-void
.end method
