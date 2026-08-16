.class public final LN2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/a$c;


# instance fields
.field public final synthetic a:LN2/g;


# direct methods
.method public constructor <init>(LN2/g;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LN2/f;->a:LN2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, LN2/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "timestampInMillis"

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "params"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p2, p0, LN2/f;->a:LN2/g;

    invoke-virtual {p2}, LN2/g;->b()LM2/a$b;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p3, p1}, LM2/a$b;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
