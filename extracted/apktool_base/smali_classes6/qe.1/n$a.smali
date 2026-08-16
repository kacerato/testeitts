.class public Lqe/n$a;
.super Lqe/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/n;->b(Lqe/m$b;Lqe/g;)Lqe/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqe/m$b;

.field public final synthetic b:Lqe/g;


# direct methods
.method public constructor <init>(Lqe/m$b;Lqe/g;)V
    .locals 0

    iput-object p1, p0, Lqe/n$a;->a:Lqe/m$b;

    iput-object p2, p0, Lqe/n$a;->b:Lqe/g;

    invoke-direct {p0}, Lqe/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lqe/m;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/n$a;->a:Lqe/m$b;

    iget-object v1, p0, Lqe/n$a;->b:Lqe/g;

    new-instance v2, Lqe/w;

    invoke-direct {v2}, Lqe/w;-><init>()V

    invoke-interface {v0, v1, v2}, Lqe/m$b;->c(Lqe/g;Lqe/v;)Lqe/m;

    move-result-object v0

    return-object v0
.end method
