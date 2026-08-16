.class public final Lj1/s;
.super Lj1/p;
.source "SourceFile"


# instance fields
.field public final d:Lj1/u;


# direct methods
.method public constructor <init>(Lj1/u;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lj1/p;-><init>(II)V

    iput-object p1, p0, Lj1/s;->d:Lj1/u;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj1/s;->d:Lj1/u;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
