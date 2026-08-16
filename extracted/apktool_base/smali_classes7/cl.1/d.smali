.class public Lcl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public a:Lcl/b;

.field public b:Lcl/j;


# direct methods
.method public constructor <init>(Lcl/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl/d;->b:Lcl/j;

    invoke-virtual {p0, p1}, Lcl/d;->c(LXi/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcl/d;->a:Lcl/b;

    invoke-virtual {v0}, Lcl/b;->d()I

    move-result v0

    return v0
.end method

.method public b([B)[B
    .locals 2

    iget-object v0, p0, Lcl/d;->a:Lcl/b;

    iget-object v1, p0, Lcl/d;->b:Lcl/j;

    invoke-virtual {v1}, Lcl/j;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcl/b;->w([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final c(LXi/c;)V
    .locals 0

    check-cast p1, Lcl/j;

    invoke-virtual {p1}, Lcl/h;->d()Lcl/i;

    move-result-object p1

    invoke-virtual {p1}, Lcl/i;->a()Lcl/b;

    move-result-object p1

    iput-object p1, p0, Lcl/d;->a:Lcl/b;

    return-void
.end method
