.class public Lvk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LQk/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;LQk/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lvk/f;->b:LQk/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ltk/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ltk/a;

    new-instance v1, Lvk/d;

    iget-object v2, p0, Lvk/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lvk/f;->b:LQk/q;

    invoke-direct {v1, v2, v3}, Lvk/d;-><init>(Ljava/lang/String;LQk/q;)V

    invoke-static {p1}, Lvk/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ltk/a;-><init>(Ltk/j;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public b(Ltk/e;Ljava/io/InputStream;)Ltk/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ltk/a;

    new-instance v1, Lvk/d;

    iget-object v2, p0, Lvk/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lvk/f;->b:LQk/q;

    invoke-direct {v1, v2, v3}, Lvk/d;-><init>(Ljava/lang/String;LQk/q;)V

    invoke-static {p2}, Lvk/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Ltk/a;-><init>(Ltk/j;Ltk/e;Ljava/io/InputStream;)V

    return-object v0
.end method
