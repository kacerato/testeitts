.class public final synthetic Led/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfd/e$a;


# instance fields
.field public final synthetic a:Lhd/a;


# direct methods
.method public synthetic constructor <init>(Lhd/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/h;->a:Lhd/a;

    return-void
.end method


# virtual methods
.method public final a(JJD)V
    .locals 7

    iget-object v0, p0, Led/h;->a:Lhd/a;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Led/j;->b(Lhd/a;JJD)V

    return-void
.end method
