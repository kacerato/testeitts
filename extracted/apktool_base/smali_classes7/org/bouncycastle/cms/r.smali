.class public Lorg/bouncycastle/cms/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/r$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Luh/l;->w8:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/r;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;LQk/E;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/r;->b(Loh/x;Ljava/io/OutputStream;LQk/E;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public b(Loh/x;Ljava/io/OutputStream;LQk/E;)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h0;

    invoke-direct {v0, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Luh/l;->t8:Loh/x;

    invoke-virtual {v0, p2}, Loh/h0;->f(Loh/B;)V

    new-instance p2, Loh/h0;

    invoke-virtual {v0}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p2, v1, v2, v3}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance v1, Loh/s;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Loh/s;-><init>(J)V

    invoke-virtual {p2, v1}, Loh/h0;->f(Loh/B;)V

    invoke-interface {p3}, LQk/E;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {p2, v1}, Loh/h0;->e(Loh/g;)V

    new-instance v1, Loh/h0;

    invoke-virtual {p2}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p1

    iget v4, p0, Lorg/bouncycastle/cms/r;->a:I

    invoke-static {p1, v2, v3, v4}, Lorg/bouncycastle/cms/X;->h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/cms/r$a;

    invoke-interface {p3, p1}, LQk/E;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v2, p1, v0, p2, v1}, Lorg/bouncycastle/cms/r$a;-><init>(Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V

    return-object v2
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/r;->a:I

    return-void
.end method
