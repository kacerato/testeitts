.class public abstract Loh/g1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Loh/g1;->b:Ljava/io/InputStream;

    iput p2, p0, Loh/g1;->c:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Loh/g1;->c:I

    return v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Loh/g1;->b:Ljava/io/InputStream;

    instance-of v1, v0, Loh/d1;

    if-eqz v1, :cond_0

    check-cast v0, Loh/d1;

    invoke-virtual {v0, p1}, Loh/d1;->f(Z)V

    :cond_0
    return-void
.end method
