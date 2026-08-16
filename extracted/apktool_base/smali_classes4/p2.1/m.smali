.class public final Lp2/m;
.super Lp2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lp2/j;

.field public final synthetic d:Lp2/t;


# direct methods
.method public constructor <init>(Lp2/t;Lv1/l;Lp2/j;)V
    .locals 0

    iput-object p1, p0, Lp2/m;->d:Lp2/t;

    iput-object p3, p0, Lp2/m;->c:Lp2/j;

    invoke-direct {p0, p2}, Lp2/j;-><init>(Lv1/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lp2/m;->d:Lp2/t;

    iget-object v1, p0, Lp2/m;->c:Lp2/j;

    invoke-static {v0, v1}, Lp2/t;->m(Lp2/t;Lp2/j;)V

    return-void
.end method
