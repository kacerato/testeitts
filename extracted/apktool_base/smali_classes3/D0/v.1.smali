.class public final LD0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# instance fields
.field public final synthetic a:Lv1/l;

.field public final synthetic b:LD0/w;


# direct methods
.method public constructor <init>(LD0/w;Lv1/l;)V
    .locals 0

    iput-object p1, p0, LD0/v;->b:LD0/w;

    iput-object p2, p0, LD0/v;->a:Lv1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 1
    .param p1    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LD0/v;->b:LD0/w;

    invoke-static {p1}, LD0/w;->b(LD0/w;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, LD0/v;->a:Lv1/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
