.class public final Lv1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/h;


# instance fields
.field public final synthetic a:Lv1/l;


# direct methods
.method public constructor <init>(Lv1/l;)V
    .locals 0

    iput-object p1, p0, Lv1/M;->a:Lv1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lv1/M;->a:Lv1/l;

    invoke-static {v0}, Lv1/l;->f(Lv1/l;)Lv1/Q;

    move-result-object v0

    invoke-virtual {v0}, Lv1/Q;->A()Z

    return-void
.end method
