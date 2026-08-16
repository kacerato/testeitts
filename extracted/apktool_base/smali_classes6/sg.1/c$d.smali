.class public final Lsg/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/c;->j(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv1/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lsg/c$d;->a:Leg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 2
    .param p1    # Lv1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lv1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lsg/c$d;->a:Leg/p;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Leg/p$a;->a(Leg/p;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsg/c$d;->a:Leg/p;

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    invoke-virtual {p1}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lsg/c$d;->a:Leg/p;

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v0}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
