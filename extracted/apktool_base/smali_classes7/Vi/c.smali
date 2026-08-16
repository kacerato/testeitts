.class public LVi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVi/d;


# instance fields
.field public final a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, LVi/c;->a:[J

    return-void
.end method


# virtual methods
.method public a([J)V
    .locals 1

    iget-object v0, p0, LVi/c;->a:[J

    invoke-static {p1, v0}, LVi/g;->b([J[J)V

    return-void
.end method

.method public b([J)V
    .locals 1

    iget-object v0, p0, LVi/c;->a:[J

    invoke-static {p1, v0, p1}, LVi/g;->d([J[J[J)V

    return-void
.end method
