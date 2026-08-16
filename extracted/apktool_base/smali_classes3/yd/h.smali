.class public Lyd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/BufferedReader;Lyd/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lyd/g;

    invoke-direct {v0, p2}, Lyd/g;-><init>(Lyd/b;)V

    invoke-virtual {v0, p1}, Lyd/g;->o(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public b(Ljava/io/InputStream;Lyd/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p1, p2}, Lyd/h;->a(Ljava/io/BufferedReader;Lyd/b;)V

    return-void
.end method
