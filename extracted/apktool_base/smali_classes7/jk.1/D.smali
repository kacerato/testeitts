.class public Ljk/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/q;


# instance fields
.field public a:[Ljk/i$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljk/D;->a:[Ljk/i$b;

    return-void
.end method


# virtual methods
.method public a()[Ljk/i$b;
    .locals 1

    iget-object v0, p0, Ljk/D;->a:[Ljk/i$b;

    return-object v0
.end method

.method public b([Ljk/i$b;)V
    .locals 0

    iput-object p1, p0, Ljk/D;->a:[Ljk/i$b;

    return-void
.end method
