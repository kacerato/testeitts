.class public final Lh1/i;
.super Lh1/d;
.source "SourceFile"


# instance fields
.field public final d:Lh1/k;


# direct methods
.method public constructor <init>(Lh1/k;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lh1/d;-><init>(II)V

    iput-object p1, p0, Lh1/i;->d:Lh1/k;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh1/i;->d:Lh1/k;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
