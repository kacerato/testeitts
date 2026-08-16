.class public Led/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Led/e$a;


# direct methods
.method public constructor <init>(Led/e$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Led/e$a$a;->c:Led/e$a;

    iput-object p2, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Led/e$a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "@no_ethernet@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Led/e$a$a;->b:Ljava/lang/String;

    const-string v1, "@errorcheckingconnection@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Led/e$a$a;->b:Ljava/lang/String;

    const-string v1, "@error@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    iget-object v1, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhd/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    iget-object v1, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    iget-object v1, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    iget-object v1, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    iget-object v1, p0, Led/e$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhd/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Led/e$a$a;->c:Led/e$a;

    iget-object v0, v0, Led/e$a;->c:Led/e;

    invoke-static {v0}, Led/e;->a(Led/e;)Lhd/d;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lhd/d;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
