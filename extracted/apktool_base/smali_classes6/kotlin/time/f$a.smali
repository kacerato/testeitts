.class public final Lkotlin/time/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/time/f;->a(Lkotlin/time/I;Lkotlin/time/q;)Lkotlin/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Lkotlin/time/H;

.field public final synthetic c:Lkotlin/time/q;


# direct methods
.method public constructor <init>(Lkotlin/time/I;Lkotlin/time/q;)V
    .locals 0

    iput-object p2, p0, Lkotlin/time/f$a;->c:Lkotlin/time/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkotlin/time/I;->a()Lkotlin/time/H;

    move-result-object p1

    iput-object p1, p0, Lkotlin/time/f$a;->b:Lkotlin/time/H;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/time/q;
    .locals 3

    iget-object v0, p0, Lkotlin/time/f$a;->c:Lkotlin/time/q;

    iget-object v1, p0, Lkotlin/time/f$a;->b:Lkotlin/time/H;

    invoke-interface {v1}, Lkotlin/time/H;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlin/time/q;->i(J)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method
