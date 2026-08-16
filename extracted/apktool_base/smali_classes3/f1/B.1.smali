.class public final synthetic Lf1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lf1/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf1/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/B;->a:Lf1/c;

    iput-object p2, p0, Lf1/B;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lf1/z;

    check-cast p2, Lv1/l;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lf1/k;

    new-instance v0, Lf1/b;

    iget-object v1, p0, Lf1/B;->a:Lf1/c;

    invoke-direct {v0, v1, p2}, Lf1/b;-><init>(Lf1/c;Lv1/l;)V

    iget-object p2, p0, Lf1/B;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lf1/k;->h1(Ljava/lang/String;Lf1/m;)V

    return-void
.end method
