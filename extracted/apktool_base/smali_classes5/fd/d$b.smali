.class public Lfd/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfd/d;->h(Lfd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfd/d;


# direct methods
.method public constructor <init>(Lfd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lfd/d$b;->a:Lfd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    iget-object p1, p0, Lfd/d$b;->a:Lfd/d;

    const-string v0, "@error@upload failed"

    invoke-static {p1, v0}, Lfd/d;->b(Lfd/d;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lfd/d$b;->a:Lfd/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lfd/d;->c(Lfd/d;Z)V

    return-void
.end method

.method public b(Lokhttp3/e;Lokhttp3/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lfd/d$b;->a:Lfd/d;

    invoke-virtual {p2}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/F;->o()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lfd/d;->b(Lfd/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lfd/d$b;->a:Lfd/d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lfd/d;->c(Lfd/d;Z)V

    return-void
.end method
