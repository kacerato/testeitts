.class public Lnk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/q;


# instance fields
.field public a:Lnk/a;

.field public b:Ljk/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lnk/a;
    .locals 1

    iget-object v0, p0, Lnk/b;->a:Lnk/a;

    return-object v0
.end method

.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, Lnk/b;->b:Ljk/i;

    return-object v0
.end method

.method public c(Lnk/a;)V
    .locals 0

    iput-object p1, p0, Lnk/b;->a:Lnk/a;

    return-void
.end method

.method public d(Ljk/i;)V
    .locals 0

    iput-object p1, p0, Lnk/b;->b:Ljk/i;

    return-void
.end method
