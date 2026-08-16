.class public final synthetic Lf1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lf1/u;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf1/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/o;->a:Lf1/u;

    iput-object p2, p0, Lf1/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lf1/z;

    check-cast p2, Lv1/l;

    new-instance v0, Lf1/t;

    iget-object v1, p0, Lf1/o;->a:Lf1/u;

    invoke-direct {v0, v1, p2}, Lf1/t;-><init>(Lf1/u;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lf1/k;

    iget-object p2, p0, Lf1/o;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lf1/k;->l0(Ljava/lang/String;Lf1/j;)V

    return-void
.end method
