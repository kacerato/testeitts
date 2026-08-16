.class public final synthetic Lp2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# instance fields
.field public final synthetic a:Lp2/t;

.field public final synthetic b:Lv1/l;


# direct methods
.method public synthetic constructor <init>(Lp2/t;Lv1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/k;->a:Lp2/t;

    iput-object p2, p0, Lp2/k;->b:Lv1/l;

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 2

    iget-object v0, p0, Lp2/k;->a:Lp2/t;

    iget-object v1, p0, Lp2/k;->b:Lv1/l;

    invoke-virtual {v0, v1, p1}, Lp2/t;->q(Lv1/l;Lv1/k;)V

    return-void
.end method
