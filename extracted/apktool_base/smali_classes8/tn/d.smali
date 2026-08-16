.class public final synthetic Ltn/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltn/r;

.field public final synthetic c:Ltn/u;


# direct methods
.method public synthetic constructor <init>(Ltn/r;Ltn/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/d;->b:Ltn/r;

    iput-object p2, p0, Ltn/d;->c:Ltn/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltn/d;->b:Ltn/r;

    iget-object v1, p0, Ltn/d;->c:Ltn/u;

    invoke-static {v0, v1}, Ltn/r;->b(Ltn/r;Ltn/u;)V

    return-void
.end method
