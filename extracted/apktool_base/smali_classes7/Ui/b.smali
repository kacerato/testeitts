.class public LUi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUi/d;


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    invoke-static {p1}, LUi/e;->k([B)[J

    move-result-object p1

    iput-object p1, p0, LUi/b;->a:[J

    return-void
.end method

.method public b([B)V
    .locals 1

    iget-object v0, p0, LUi/b;->a:[J

    invoke-static {p1, v0}, LUi/e;->r([B[J)V

    return-void
.end method
