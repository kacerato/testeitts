.class public Ljk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/q;


# instance fields
.field public a:Ljk/i;

.field public b:Ljk/g;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljk/l;->a:Ljk/i;

    iput-object v0, p0, Ljk/l;->b:Ljk/g;

    const/4 v0, -0x1

    iput v0, p0, Ljk/l;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljk/g;
    .locals 1

    iget-object v0, p0, Ljk/l;->b:Ljk/g;

    return-object v0
.end method

.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/l;->a:Ljk/i;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljk/l;->c:I

    return v0
.end method

.method public d(Ljk/g;)V
    .locals 0

    iput-object p1, p0, Ljk/l;->b:Ljk/g;

    return-void
.end method

.method public e(Ljk/i;)V
    .locals 0

    iput-object p1, p0, Ljk/l;->a:Ljk/i;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ljk/l;->c:I

    return-void
.end method
