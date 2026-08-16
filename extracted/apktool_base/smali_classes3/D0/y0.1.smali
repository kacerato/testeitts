.class public final LD0/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LD0/B0;


# direct methods
.method public constructor <init>(LD0/B0;)V
    .locals 0

    iput-object p1, p0, LD0/y0;->b:LD0/B0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LD0/y0;->b:LD0/B0;

    invoke-static {v0}, LD0/B0;->f1(LD0/B0;)LD0/A0;

    move-result-object v0

    new-instance v1, LB0/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LB0/c;-><init>(I)V

    invoke-interface {v0, v1}, LD0/A0;->c(LB0/c;)V

    return-void
.end method
