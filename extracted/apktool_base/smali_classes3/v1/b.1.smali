.class public Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv1/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/v;

    invoke-direct {v0}, Lv1/v;-><init>()V

    iput-object v0, p0, Lv1/b;->a:Lv1/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lv1/b;->a:Lv1/v;

    invoke-virtual {v0}, Lv1/v;->c()V

    return-void
.end method

.method public b()Lv1/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv1/b;->a:Lv1/v;

    return-object v0
.end method
