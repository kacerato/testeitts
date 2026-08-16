.class public final LD0/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt1/l;

.field public final synthetic c:LD0/B0;


# direct methods
.method public constructor <init>(LD0/B0;Lt1/l;)V
    .locals 0

    iput-object p1, p0, LD0/z0;->c:LD0/B0;

    iput-object p2, p0, LD0/z0;->b:Lt1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LD0/z0;->c:LD0/B0;

    iget-object v1, p0, LD0/z0;->b:Lt1/l;

    invoke-static {v0, v1}, LD0/B0;->g1(LD0/B0;Lt1/l;)V

    return-void
.end method
