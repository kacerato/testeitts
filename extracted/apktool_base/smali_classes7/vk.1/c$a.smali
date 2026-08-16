.class public Lvk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvk/c;->a(I)Ltk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvk/c;


# direct methods
.method public constructor <init>(Lvk/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lvk/c$a;->b:Lvk/c;

    iput p2, p0, Lvk/c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ltk/e;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lvk/c$a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lvk/c$a;->b:Lvk/c;

    invoke-virtual {v0}, Lvk/c;->f()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltk/e;->c(Ljava/io/OutputStream;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    new-instance v1, Lfm/e;

    new-instance v2, Ltk/c;

    iget-object v3, p0, Lvk/c$a;->b:Lvk/c;

    invoke-static {v3}, Lvk/c;->c(Lvk/c;)Lvk/d;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Ltk/c;-><init>(Lvk/d;Ltk/e;Ljava/io/OutputStream;)V

    invoke-direct {v1, p2, v2}, Lfm/e;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1

    :cond_0
    return-object p2
.end method
