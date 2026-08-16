.class public final Le1/I;
.super Le1/G;
.source "SourceFile"


# instance fields
.field public final d:Le1/K;


# direct methods
.method public constructor <init>(Le1/K;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Le1/G;-><init>(II)V

    iput-object p1, p0, Le1/I;->d:Le1/K;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le1/I;->d:Le1/K;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
