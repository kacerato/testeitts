.class public final synthetic Led/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/s$a;


# instance fields
.field public final synthetic a:Lhd/b;


# direct methods
.method public synthetic constructor <init>(Lhd/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/p;->a:Lhd/b;

    return-void
.end method


# virtual methods
.method public final a(JJD)V
    .locals 7

    iget-object v0, p0, Led/p;->a:Lhd/b;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Led/r;->b(Lhd/b;JJD)V

    return-void
.end method
