.class public final Lv1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/g;


# instance fields
.field public final synthetic a:Lv1/h;


# direct methods
.method public constructor <init>(Lv1/v;Lv1/h;)V
    .locals 0

    iput-object p2, p0, Lv1/o;->a:Lv1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lv1/o;->a:Lv1/h;

    invoke-interface {p1}, Lv1/h;->a()V

    return-void
.end method
